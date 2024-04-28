



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/pages/user/component/card.cover.dart';
import 'package:pickrewardapp/pages/user/viewmodel/card.list.dart';
import 'package:pickrewardapp/pages/user/viewmodel/user.card.dart';
import 'package:provider/provider.dart';



class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoScaffold(
      overlayStyle:const SystemUiOverlayStyle(
        statusBarColor: Colors.white, 
        statusBarBrightness:
            Brightness.light 
      ),
      body: Scaffold(
        body: SafeArea(
          child:Container(
            child:LayoutBuilder(
              builder:((context, constraints) {
                double screenWidth = MediaQuery.of(context).size.width;
                double tabletWidthThreshold = GlobalSize.MAX_WIDTH;
                if (screenWidth > tabletWidthThreshold) {
                  return SizedBox(
                    width: tabletWidthThreshold,
                    child: const UserInfoComponent()
                  );
                } else {
                  // 屏幕较小，不限制应用宽度
                  return const UserInfoComponent();
                }
              }),
            ),
          )
        )
      )
    );
  }
}




class UserInfoComponent extends StatelessWidget {
  const UserInfoComponent({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserCardListViewModel>(create:(_)=>UserCardListViewModel()),
        ChangeNotifierProvider<UserCardViewModel>(create:(_)=>UserCardViewModel()),

      ],
      child:Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Flexible(
              flex:2,
              child: Container(
                padding: const EdgeInsets.all(10),
                child:const GobackPage(),
              ),
            ),
            const SizedBox(height:20),
            const Flexible(
              flex:4,
              child:LoginBanner(),
            ),
            const SizedBox(height:20),
            Flexible(
              flex:6,
              child: Container(
                padding: const EdgeInsets.all(10),
                child:const MyCardList(),
              ),
            ),
            Flexible(
              flex:6,
              child: Container(
                padding: const EdgeInsets.all(10),
                child:const OtherSetting(),
              ),
            ),
          ]
        )
      )
    );

  }
}


class OtherSetting extends StatelessWidget {
  const OtherSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:const Column(
        children:[
          Text('其他設定',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            
          )
        ]
      )
    );
  }
}

class LoginBanner extends StatelessWidget {
  const LoginBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: double.infinity,
      decoration: BoxDecoration(
        color:Palette.kToYellow[100],
      ),
      child:Container(
        padding: const EdgeInsets.only(left:20, top:30),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Expanded(
                  child:Column(
                    children:[
                      Container(
                        padding: const EdgeInsets.only(right:40),
                        child:Container(
                          alignment: Alignment.centerLeft,
                          height:30,
                          child:Text('歡迎回來 !',
                            style:TextStyle(
                              fontSize: 24,
                              color:Palette.kToBlack[500],
                              fontWeight: FontWeight.bold,
                            )
                          )
                        )
                      ),
                      const SizedBox(height:15),
                      Container(
                        height:10,
                        decoration: BoxDecoration(
                          color: Palette.kToBlack[50],
                        ),
                      ),
                      const SizedBox(height:8),
                      Container(
                        height:10,
                        decoration: BoxDecoration(
                          color: Palette.kToBlack[50],
                        ),
                      ),
                      const SizedBox(height:8),
                      Container(
                        height:10,
                        decoration: BoxDecoration(
                          color: Palette.kToBlack[50],
                        ),
                      ),
                    ]
                  )
                ),
                const SizedBox(width:20),
                Image.asset(
                  scale:0.8,
                  'images/logo.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class GobackPage extends StatelessWidget {
  const GobackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:10,),
      child:GestureDetector(
        onTap:(){
          Navigator.pop(context);
        },
        child:Icon(Icons.arrow_back_ios,
          color: Palette.kToBlack[300],
        )
      )
    );
  }
}

