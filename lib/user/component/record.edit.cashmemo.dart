


import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/user/viewmodel/user_record.dart';
import 'package:provider/provider.dart';

class RecordEditCashMemo extends StatelessWidget {
  const RecordEditCashMemo({super.key});

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
            CashField(),
            Divider(),
            MemoField(),
          ]
        )
      )
      
    );
  }
}


class MemoField extends StatelessWidget {
  const MemoField({super.key});

  @override
  Widget build(BuildContext context) {
    
    UserRecordViewModel userRecordViewModel = Provider.of<UserRecordViewModel>(context);

    return Container(
      height:40,
      alignment: Alignment.center,
      child:TextField(
        // controller:_searchController,
        // textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        // textAlignVertical:TextAlignVertical.bottom,
        onChanged: (String value){
          userRecordViewModel.memo = value;
        },
        onEditingComplete: (){
          // searchCardViewModel.searchCard();
        },
        onTap:(){
          // searchCardViewModel.onFocusSearch();
        },
        decoration: const InputDecoration.collapsed(
          hintText: '備註',
          // prefixIcon:const Icon(Icons.search),
          // border:OutlineInputBorder(
            // borderRadius: BorderRadius.circular(20.0),
          // )
        ),
        style:const TextStyle(
          fontSize:14,
        ),
      )
    );
  }
}


class CashField extends StatelessWidget {
  const CashField({super.key});

  @override
  Widget build(BuildContext context) {

    UserRecordViewModel userRecordViewModel = Provider.of<UserRecordViewModel>(context);

    return Container(
      height:40,
      alignment: Alignment.center,
      child:TextField(
        // controller:_searchController,
        textAlign: TextAlign.start,
        // textAlignVertical:TextAlignVertical.center,
        keyboardType:TextInputType.number,
        onChanged: (String value){
          userRecordViewModel.cost = int.parse(value);
        },
        onEditingComplete: (){
        },
        onTap:(){
          // searchCardViewModel.onFocusSearch();
        },
        decoration: const InputDecoration.collapsed(
          hintText: '刷卡金額',
          // prefixIcon:const Icon(Icons.search),
          // border:OutlineInputBorder(
            // borderRadius: BorderRadius.circular(20.0),
          // )
        ),
        style:const TextStyle(
          fontSize:14,
        ),
      )
    );
  }
}
