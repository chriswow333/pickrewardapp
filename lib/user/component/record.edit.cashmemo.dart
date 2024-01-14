


import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
        padding: EdgeInsets.all(10),
        child:Column(
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
    return Container(
      height:40,
      alignment: Alignment.center,
      child:TextField(
        // controller:_searchController,
        // textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        // textAlignVertical:TextAlignVertical.bottom,
        onChanged: (String value){
          // searchCardViewModel.changeKeyword(value);
        },
        onEditingComplete: (){
          // searchCardViewModel.searchCard();
        },
        onTap:(){
          // searchCardViewModel.onFocusSearch();
        },
        decoration: InputDecoration.collapsed(
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
    return Container(
      height:40,
      alignment: Alignment.center,
      child:TextField(
        // controller:_searchController,
        textAlign: TextAlign.start,
        // textAlignVertical:TextAlignVertical.center,
        onChanged: (String value){
          // searchCardViewModel.changeKeyword(value);
        },
        onEditingComplete: (){
          // searchCardViewModel.searchCard();
        },
        onTap:(){
          // searchCardViewModel.onFocusSearch();
        },
        decoration: InputDecoration.collapsed(
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
