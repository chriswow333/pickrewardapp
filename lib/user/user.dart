

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/component/record.detail.dart';
import 'package:pickrewardapp/user/component/summary.dart';
import 'package:pickrewardapp/user/viewmodel/user_record.dart';
import 'package:pickrewardapp/user/viewmodel/user_summary.dart';
import 'package:pickrewardapp/user_info/user_info.dart';
import 'package:provider/provider.dart';



class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserRecordViewModel>(create:(_)=>UserRecordViewModel()),
        ChangeNotifierProvider<UserRecordSummaryViewModel>(create:(_)=>UserRecordSummaryViewModel()),
      ],
      child: Container(
        padding: const EdgeInsets.all(10),
        child:Column(
          children:[
            const UserInfoTitle(),
            UserEventSummary(),
            const Expanded(
              child:UserEventDetail(),
            ),
          ]
        )
      ),
    );
  }
}


class UserInfoTitle extends StatelessWidget {
  const UserInfoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:10, bottom: 10),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          const Text('Hi,',
            style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
          ),
          GestureDetector(
            onTap:(){
               Navigator.push(context,
                MaterialPageRoute(builder: (context) => const UserInfoPage())
            );
            },
            child:Icon(Icons.person_rounded,
              size:40,
              color: Palette.kToBlack[900],
            ),
          ),
        ]
      )
    );
  }
}







class GoogleSignInScreen extends StatefulWidget {
  const GoogleSignInScreen({super.key});

  @override
  State<GoogleSignInScreen> createState() => _GoogleSignInScreenState();
}

class _GoogleSignInScreenState extends State<GoogleSignInScreen> {
  ValueNotifier userCredential = ValueNotifier('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Google SignIn Screen')),
        body: ValueListenableBuilder(
            valueListenable: userCredential,
            builder: (context, value, child) {
              return (userCredential.value == '' ||
                      userCredential.value == null)
                  ? Center(
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          iconSize: 40,
                          icon: Image.asset(
                            'images/logo.png',
                          ),
                          onPressed: () async {
                            userCredential.value = await signInWithGoogle();
                            if (userCredential.value != null) {
                              print(userCredential.value.user!.email);
                            }
                          },
                        ),
                      ),
                    )
                  : Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1.5, color: Colors.black54)),
                            child: Image.network(
                                userCredential.value.user!.photoURL.toString()),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(userCredential.value.user!.displayName
                              .toString()),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(userCredential.value.user!.email.toString()),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                              onPressed: () async {
                                bool result = await signOutFromGoogle();
                                if (result) userCredential.value = '';
                              },
                              child: const Text('Logout'))
                        ],
                      ),
                    );
            }));
  }


  Future<dynamic> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on Exception catch (e) {
      // TODO
      print('exception->$e');
    }
  }

  Future<bool> signOutFromGoogle() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
  
}

