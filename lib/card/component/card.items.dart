


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/card/viewmodel/card.item.dart';
import 'package:pickrewardapp/cardcontent/card.content.dart';
import 'package:provider/provider.dart';



class CardItems extends StatelessWidget {
  const CardItems({super.key});


  @override
  Widget build(BuildContext context) {

    CardItemViewModel cardItemViewModel = Provider.of<CardItemViewModel>(context);
    
    final bankID = cardItemViewModel.bankID;

    List<CardItemModel> cardItemModels = cardItemViewModel.getCardsByBankID(bankID);

    return Container(
      height:400,
      child:SingleChildScrollView(
        child:Column(
          children:[
            for(CardItemModel cardItemModel in cardItemModels)
              CardItem(cardItemModel:cardItemModel)
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
        TextButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CardContentScreen()),
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            elevation:MaterialStatePropertyAll(2),
          ),
          child:Container(
            padding:const EdgeInsets.all(10),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:[
                // CardUpdateDate(),
                Row(
                  children:[
                    CardTitle(name:cardItemModel.name, image:cardItemModel.image),
                    SizedBox(width:20),
                    Expanded(
                      child:CardDescs(descs:cardItemModel.descriptions),
                    ),
                    
                  ],
                ),
              ]
            )
            
          ),
        ),
        SizedBox(height:10,),
      ],
    );
    
    ;
  }
}


class CardUpdateDate extends StatelessWidget {
  const CardUpdateDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('2023/02/02',
      style:TextStyle(
        fontSize: 10,
        color:Colors.cyan[900],
      )
    );
  }
}

class CardDescs extends StatelessWidget {
  const CardDescs({super.key, required this.descs});

  final List<String> descs;
  
  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        for(String desc in descs) 
          Text(desc,
            style:TextStyle(
              fontSize: 12,
              color:Colors.cyan[900],
            ),
          ),
      ]
    );
  }
}



class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.name, required this.image});
  
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          Image.memory(
              base64Decode(image), 
              width:70,
              height:70,
          ),
          CardName(name:name),
        ],
      ),
    );
  }
}

class CardName extends StatelessWidget {
  const CardName({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(name,
        style:TextStyle(
          fontSize: 20,
          color:Colors.cyan[900],
        ),
      ),
    );
  }
}


