


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/shared/viewmodel/card.item.dart';
import 'package:pickrewardapp/cardreward/cardreward.dart';
import 'package:provider/provider.dart';



class CardItems extends StatelessWidget {
  const CardItems({super.key});

  @override
  Widget build(BuildContext context) {

    CardItemViewModel cardItemViewModel = Provider.of<CardItemViewModel>(context);
    
    final bankID = cardItemViewModel.bankID;

    if(bankID == "") {
      List<CardItemModel> cardItemModels = cardItemViewModel.getLatestCards();
       if(cardItemModels.isEmpty) {
          cardItemViewModel.fetchLatestCards();
        }
      return Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text('近期更新',
              style: TextStyle(
                color:Palette.kToBlack[600],
              ),
            ),
            Expanded(
              child:SingleChildScrollView(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    for(CardItemModel cardItemModel in cardItemModels)
                      CardItem(cardItemModel:cardItemModel),
                  ],
                ),
              ),
            ),
          ]
        )
        
      );
    }


    List<CardItemModel> cardItemModels = cardItemViewModel.getCardsByBankID(bankID);

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('卡片列表',
            style: TextStyle(
              color:Palette.kToBlack[600],
            ),
          ),
          Expanded(
            child:SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  for(CardItemModel cardItemModel in cardItemModels)
                    CardItem(cardItemModel:cardItemModel),
                ],
              ),
            ),
          ),
        ]
      )
    );
  }
}

class CardItem extends StatelessWidget {

  const CardItem({super.key, required this.cardItemModel});
  
  final CardItemModel cardItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10, bottom: 10),
      child:Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color:Colors.white,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color:Palette.kToBlue[50],
          boxShadow: [
            BoxShadow(
              color: Palette.kToBlack[200]!,
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 1.0,
              // spreadRadius: 0.5,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child:TextButton(
          onPressed: (){
            Navigator.of(context, rootNavigator: true).push(
              MaterialPageRoute(
                builder: (context) =>  CardContentScreen(cardItemModel:cardItemModel)
              ),
            );
          },
          style:const ButtonStyle(
            splashFactory:NoSplash.splashFactory,
          ),
          child:Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                CardName(cardName: cardItemModel.name,),
                Row(
                  children:[
                    CardIcon(image:cardItemModel.image),
                    SizedBox(width: 10,),
                    Expanded(
                      child: CardDescs(descs:cardItemModel.descriptions),
                    )
                  ]
                ),
              ]
            ),
          ),
        ),
      )
    );
  }
}


class CardDescs extends StatelessWidget {
  const CardDescs({super.key, required this.descs});

  final List<String> descs;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.only(top:5),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(String desc in descs) 
            Container(
              padding: EdgeInsets.only(bottom: 3),
              child:Text(desc,
                style:TextStyle(
                  color:Palette.kToBlack[900],
                ),
                maxLines: null,
              ),
            ),
        ]
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
      width:90,
      height:70,
    );
  }
}




class CardName extends StatelessWidget {
  const CardName({super.key, required this.cardName});
  
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(cardName,
      style: TextStyle(
        fontSize: 20,
        color:Palette.kToBlack[600],
        fontWeight: FontWeight.w500,
      ),
      ),
    );
  }
}

