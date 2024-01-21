


import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/component/record.edit.cashmemo.dart';
import 'package:pickrewardapp/user/component/record.edit.datechannel.dart';
import 'package:pickrewardapp/user/viewmodel/user_record.dart';
import 'package:provider/provider.dart';

class RecordEditPage extends StatelessWidget {
  const RecordEditPage({super.key});

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
        ChangeNotifierProvider<UserRecordViewModel>(create:(_)=>UserRecordViewModel()),
      ],
      child:Container(
        padding: const EdgeInsets.all(10),
        child:Column(
          children:[
            const RecordEditTitle(),
            const SizedBox(height:20),
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


class RecordEditCard extends StatelessWidget {
  const RecordEditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.kToBlack[0],
        borderRadius: BorderRadius.circular(10),
      ),
      child:Container(
        padding: const EdgeInsets.all(10),
        child:const Column(
          children:[
            RecordEditCardTitle(),
             SizedBox(
              height:20,
            ),
            CardItems(),
            
          ]
        )
      )
      
    );
  }
}


class RecordEditDoneBtn extends StatelessWidget {
  const RecordEditDoneBtn({super.key,});


  @override
  Widget build(BuildContext context) {

    UserRecordViewModel userRecordViewModel = Provider.of<UserRecordViewModel>(context);


    return GestureDetector(
      onTap:(){
        userRecordViewModel.setUserRecord();
        userRecordViewModel.clearUserRecordData();
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

class RecordEditCardTitle extends StatelessWidget {
  const RecordEditCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          const Text('刷哪張信用卡?',
            style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )
          ),
          Container(
            child:GestureDetector(
              onTap:(){},
              child:Text('編輯',
                style:TextStyle(
                  color: Palette.kToYellow[400],
                )
              )
            )
          ),
         

        ]
      )
    );
  }
}


class CardItems extends StatelessWidget {
  const CardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:const SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Row(
          children:[
            CardItem(),
            CardItem(),
            CardItem(),
            CardItem(),
            CardItem(),
          ] 
        )
      )
      
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:5, right:5),
      child:Image.asset('images/logo.png',),
    );
  }
}



class RecordEditTitle extends StatelessWidget {
  const RecordEditTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child:Stack(
        children:[
          Container(
            alignment: Alignment.center,
            child:const RecordEditTitleName(),
          ),
          Container(
            alignment: Alignment.centerRight,
            child:const CancelPage(),
          ),
        ]
      )
    );
  }
}

class RecordEditTitleName extends StatelessWidget {
  const RecordEditTitleName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('新增刷卡紀錄',
        style: TextStyle(
          fontSize: 18,
          color:Palette.kToBlack[400],
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}


class CancelPage extends StatelessWidget {
  const CancelPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    UserRecordViewModel userRecordViewModel = Provider.of<UserRecordViewModel>(context);

    return Container(
      padding: const EdgeInsets.only(left:10,),
      child:GestureDetector(
        onTap:(){
          userRecordViewModel.clearUserRecordData();
          Navigator.pop(context);
        },
        child:Icon(Icons.cancel,
          color: Palette.kToBlack[300],
        )
      )
    );
  }
}
