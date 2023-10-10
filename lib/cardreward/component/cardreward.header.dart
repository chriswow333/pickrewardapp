


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/card/viewmodel/card.item.dart';
import 'package:provider/provider.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    
    CardHeaderViewModel cardHeaderViewModel = Provider.of<CardHeaderViewModel>(context);
    CardHeaderItemModel cardHeaderItemModel = cardHeaderViewModel.cardHeaderItemModel;
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Column(
          children:[
            CardIcon(image:cardHeaderItemModel.image),
            CardName(cardName: cardHeaderItemModel.name,),
          ]
        ),
        SizedBox(width:20),
        CardDescriptions(descriptions: cardHeaderItemModel.descriptions,),
      ]
    );
  }
}

class CardDescriptions extends StatelessWidget {
  const CardDescriptions({super.key, required this.descriptions});

  final List<String> descriptions;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 150,
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
      padding: EdgeInsets.only(top:5),
      alignment: Alignment.centerLeft,
      child:Text(desc,
        style:TextStyle(
          color:Palette.kToBlack[900],
        ),
        maxLines: null,
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
      width:120,
      height:90,
    );
  }
}

class CardName extends StatelessWidget {
  const CardName({super.key, required this.cardName});

  final String cardName;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width:120,
      child:Column(
        children:[
         FittedBox(
            fit:BoxFit.fitWidth,
            child:Text(cardName,
              style: TextStyle(
                fontSize: 20,
                color:Palette.kToBlack[900],
              ),
            ),
          ),
        ]
      ),
      
    );
  }
}
