


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/component/saving.month.content.dart';



class SavingMonthPage extends StatelessWidget {
  const SavingMonthPage({super.key});

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
                    child: const SavingMonthComponent()
                  );
                } else {
                  // 屏幕较小，不限制应用宽度
                  return const SavingMonthComponent();
                }
              }),
            ),
          )
        )
      )
    );
  }
}


class SavingMonthComponent extends StatelessWidget {
  const SavingMonthComponent({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding:const EdgeInsets.only(left:10, top:10, bottom: 10, right:10),
      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          GobackPage(),
          SizedBox(height:20),
          SavingMonthTitle(),
          SavingMonthFunctionToggle(),
          Divider(),
          Expanded(
            child:SavingMonthItems(),
          ),
        ]
      )
    );
  }
}

class SavingMonthTitle extends StatelessWidget {
  const SavingMonthTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:const Text('當月省下的摳摳',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}



class SavingMonthFunctionToggle extends StatelessWidget {
  const SavingMonthFunctionToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          const Text('根據消費總金額顯示佔比',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
           Transform.scale(
            scale: 1.2,
            child:Switch(
              activeColor:Colors.greenAccent[700],
              value:true,
              onChanged: (value){

              },
            )
           ),
          
        ]
      )
    );
  }
}


class GobackPage extends StatelessWidget {
  const GobackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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


