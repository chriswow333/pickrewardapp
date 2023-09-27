


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

    List<CardItemModel> cardItemModels = cardItemViewModel.getCardsByBankID(bankID);

    return Container(
      child:SingleChildScrollView(
        child:Column(
          children:[
            for(CardItemModel cardItemModel in cardItemModels)
              CardItem(cardItemModel:cardItemModel),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {

  const CardItem({super.key, required this.cardItemModel});
  
  final CardItemModel cardItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 0,
                blurRadius: 1,
                offset: Offset(1, 2)
              ),
            ],
          ),
          child:TextButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  CardContentScreen(cardItemModel:cardItemModel)),
              );
            },
            style:ButtonStyle(
              alignment: Alignment.center,
              padding: MaterialStatePropertyAll(
                EdgeInsets.fromLTRB(0, 12, 0, 0),
              ),
            ),
            child:Container(
              padding: EdgeInsets.only(left:5),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Column(
                    children:[
                      CardIcon(image:cardItemModel.image),
                      CardName(cardName: cardItemModel.name,),
                    ],
                  ),
                  SizedBox(width:20),
                  CardDescs(descs:cardItemModel.descriptions),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height:10,),
      ],
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
      width: MediaQuery.of(context).size.width - 155,
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
      )
    );
  }
}

