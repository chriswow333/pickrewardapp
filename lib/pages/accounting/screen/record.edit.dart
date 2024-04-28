


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/pages/accounting/component/record.edit.card.dart';
import 'package:pickrewardapp/pages/accounting/component/record.edit.cashmemo.dart';
import 'package:pickrewardapp/pages/accounting/component/record.edit.datechannel.dart';
import 'package:pickrewardapp/pages/accounting/database/record.dart';
import 'package:pickrewardapp/pages/accounting/viewmodel/record.dart';
import 'package:pickrewardapp/pages/accounting/viewmodel/user.card.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';


class RecordEditScreen extends StatelessWidget {
  const RecordEditScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      body:CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
        border:null,
        transitionBetweenRoutes: false,
        middle: Container(
          child:Text('新增刷卡紀錄',
            style: TextStyle(
              fontSize: 18,
              color:Palette.kToBlack[400],
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ),
      child: SafeArea(
          child:LayoutBuilder(
            builder:((context, constraints) {
              double screenWidth = MediaQuery.of(context).size.width;
              double tabletWidthThreshold = GlobalSize.MAX_WIDTH;
              if (screenWidth > tabletWidthThreshold) {
                return SizedBox(
                  width: tabletWidthThreshold,
                  child: const RecordEditComponent(),
                );
              } else {
                // 屏幕较小，不限制应用宽度
                return const RecordEditComponent();
              }
            }),
          ),
        )
      )
    );
   
  }
}


class RecordEditComponent extends StatelessWidget {
  const RecordEditComponent({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RecordViewModel>(create:(_)=>RecordViewModel()),
        ChangeNotifierProvider<UserCardViewModel>(create:(_)=>UserCardViewModel()),
      ],
      child:Container(
        padding: const EdgeInsets.all(10),
        child:Column(
          children:[
            const RecordEditItem(),
            Expanded(
              child:Container(
                decoration: const BoxDecoration(),
              )
            ),
            const RecordEditDoneBtn(),
          ],
        ),
      )
    );

  }
}


class RecordEditItem extends StatelessWidget {
  const RecordEditItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:const Column(
        children:[
          RecordEditCashMemo(),
          SizedBox(height:20),
          RecordEditDateChannel(),
          SizedBox(height:20),
          RecordEditCard(),
        ]
      )
    );
  }
}


class RecordEditDoneBtn extends StatelessWidget {
  const RecordEditDoneBtn({super.key,});

  @override
  Widget build(BuildContext context) {

    RecordViewModel userRecordViewModel = Provider.of<RecordViewModel>(context);

    return GestureDetector(
      onTap:(){
        userRecordViewModel.saveUserRecord();
        userRecordViewModel.resetUserRecordData();
        Navigator.pop(context);
      },
      child:Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color:Palette.kToYellow[400],
          borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.only(top:10, bottom: 10),
        child:Text('完成',
          style:TextStyle(
            color:Palette.kToBlack[0]  
          )
        ),
      )
    );
  }
}



class CancelIcon extends StatelessWidget {
  const CancelIcon({super.key});

  @override
  Widget build(BuildContext context) {
    
    RecordViewModel userRecordViewModel = Provider.of<RecordViewModel>(context);

    return Container(
      padding: const EdgeInsets.only(left:10,),
      child:GestureDetector(
        onTap:(){
          // userRecordViewModel.clearUserRecordData();
          Navigator.pop(context);
        },
        child:Icon(Icons.cancel,
          color: Palette.kToBlack[300],
        )
      )
    );
  }
}
