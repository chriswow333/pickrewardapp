


import 'dart:convert';

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







class CardDescriptions extends StatelessWidget {
  const CardDescriptions({super.key, required this.descriptions});

  final List<String> descriptions;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          for (String desc in descriptions)
            CardDescriptionItem(desc:desc),
        ]
      )
    );
  }
}


class CardDescriptionItem extends StatelessWidget {
  const CardDescriptionItem({super.key, required this.desc,});

  final String desc;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Text(desc,
        style:TextStyle(
          color:Palette.kToBlack[900],
          overflow:TextOverflow.visible
        ),
      )
    );
  }
}




class CardIcon extends StatelessWidget {
  const CardIcon({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.memory(
      gaplessPlayback: true,
      base64Decode(image), 
      width:70,
      height:50,
    );
  }
}

class CardName extends StatelessWidget {
  const CardName({super.key, required this.cardName});

  final String cardName;
  
  @override
  Widget build(BuildContext context) {
    return Text(cardName,
      style: TextStyle(
        fontSize: 20,
        color:Palette.kToBlack[900],
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
