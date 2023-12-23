


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/shared/model/card_header.dart';
import 'package:provider/provider.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    
    CardHeaderViewModel cardHeaderViewModel = Provider.of<CardHeaderViewModel>(context, listen:false);
    CardHeaderItemModel cardHeaderItemModel = cardHeaderViewModel.cardHeaderItemModel;
    
    return Container(
      padding: const EdgeInsets.only(left:20, right:20,top:20,bottom:10),
      decoration: BoxDecoration(
        color: Palette.kToBlack[0],
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Row(
            children:[
              Text('${cardHeaderItemModel.bankName}',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(' | '),
              Text('${cardHeaderItemModel.name}',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]
          ),
          GestureDetector(
            onTap:(){
              Navigator.pop(context);
            },
            child:Icon(Icons.cancel_outlined)
          ),
        ]
      ),
    );
  }
}







