


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
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            BackToCardListBtn(),
            CardIcon(image:cardHeaderItemModel.image),
            SizedBox(width:10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                CardName(cardName: cardHeaderItemModel.name,),
                CardUpdateDate(),    
              ]
            )            
          ]
        ),
        SizedBox(height:5),
        Container(
          padding: EdgeInsets.only(left:20),
          child:CardDescriptions(descriptions: cardHeaderItemModel.descriptions,),
        ),
      ]
    );
  }
}



class BackToCardListBtn extends StatelessWidget {
  const BackToCardListBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:TextButton(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll(Palette.kToBlack[600]),
        minimumSize:MaterialStatePropertyAll(Size.zero),
        side:MaterialStatePropertyAll(BorderSide.none),
      ),
      onPressed: (){
        Navigator.of(context).pop();
      }, 
      child: Container(
        child:Icon(
          Icons.arrow_back_ios_new_outlined,
        ),
      ),
    )
    )
    ;
  }
}




class CardUpdateDate extends StatelessWidget {
  const CardUpdateDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('更新日期:2023/10/01',
      style: TextStyle(
        fontSize: 10,
        color: Palette.kToBlack[400],
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
