

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:pickrewardapp/accounting/component/accounting.record.dart';
import 'package:pickrewardapp/accounting/component/summary.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/user_info.dart';



class AccountingScreen extends StatelessWidget {
  const AccountingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border:null,
        transitionBetweenRoutes: false,
        leading:Container(
          child:const Text('Hi,',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )
        ),
        trailing: GestureDetector(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const UserInfoPage()));
          },
          child:Icon(Icons.person_rounded,
            size:40,
            color: Palette.kToBlack[900],
          ),
        ),
      ),
      child:SizedBox.expand(
        child:SafeArea(
          child:Center(
            child:LayoutBuilder(
              builder:((context, constraints) {
                double screenWidth = MediaQuery.of(context).size.width;
                double tabletWidthThreshold = GlobalSize.MAX_WIDTH;
                if (screenWidth > tabletWidthThreshold) {
                  return SizedBox(
                    width: tabletWidthThreshold,
                    child: const AccountingComponent(),
                  );
                } else {
                  // 屏幕较小，不限制应用宽度
                  return  const AccountingComponent();
                }
              }),
            ),
          ),
        ),
      )
    );
  }
}


class AccountingComponent extends StatelessWidget {
  const AccountingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child:Column(
        children:[
          AccountingEventSummary(),
          const Expanded(
            child:AccountingRecordDetail(),
          ),
        ]
      )
    );
  }
}
