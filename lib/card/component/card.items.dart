


import 'dart:convert';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/card/model/card.dart';
import 'package:pickrewardapp/shared/card/model/card_header.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/card/viewmodel/card.item.dart';
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
      
      return LatestCardItems(cardItemModels: cardItemModels,);
    }

    return CardItemsByBankID(cardItemViewModel: cardItemViewModel,);
      
  }
}



class LatestCardItems extends StatelessWidget {
  const LatestCardItems({super.key, required this.cardItemModels});
  final List<CardItemModel> cardItemModels;
  @override
  Widget build(BuildContext context) {
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
}



class CardItemsByBankID extends StatefulWidget {
  const CardItemsByBankID({super.key, required this.cardItemViewModel});

  final CardItemViewModel cardItemViewModel;
  
  @override
  State<CardItemsByBankID> createState() => _CardItemsByBankIDState();
}

class _CardItemsByBankIDState extends State<CardItemsByBankID> {

  late ScrollController _controller;

  @override
  void initState(){
    _controller = ScrollController();
    _controller.addListener(scrollToEnd);
    super.initState();
  }

  void scrollToEnd(){
    
    var scrollPosition = _controller.position;
    if(scrollPosition.pixels == scrollPosition.maxScrollExtent) {
      widget.cardItemViewModel.fetchCardsByBankIDOnScroll();
    }
  }

  
  @override
  Widget build(BuildContext context) {
  
    List<CardItemModel> cardItemModels = widget.cardItemViewModel.getCardsByBankID(widget.cardItemViewModel.bankID);

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
              physics: const AlwaysScrollableScrollPhysics(),
              controller:_controller,
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
      padding: const EdgeInsets.all(10),
      child:Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color:Colors.white,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color:Palette.kToBlack[0],
        ),
        child:TextButton(
          onPressed: (){

            FocusScope.of(context).unfocus();

            CardHeaderItemModel cardHeaderItemModel = CardHeaderItemModel(
              id:cardItemModel.id,
              name:cardItemModel.name,
              bankName: cardItemModel.bankName,
              descriptions:cardItemModel.descriptions,
              image:cardItemModel.image,
              updateDate: cardItemModel.updateDate,
              linkUrl: cardItemModel.linkURL,
            );


            showCupertinoModalBottomSheet(
              context: context,
              expand: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                ),
              builder: (context) {
                return CardContentScreen(cardHeaderItemModel:cardHeaderItemModel);
              },
            );


            // Navigator.of(context, rootNavigator: true).push(
            //   MaterialPageRoute(
            //     builder: (context) =>  CardContentScreen(cardHeaderItemModel:cardHeaderItemModel)
            //   ),
            // );


          },
          style:const ButtonStyle(
            splashFactory:NoSplash.splashFactory,
          ),
          child:Container(
            padding: const EdgeInsets.all(10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                CardIcon(image:cardItemModel.image),
                const SizedBox(width:24),
                Expanded(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      CardName(cardName: cardItemModel.name,),
                      CardDescs(descs:cardItemModel.descriptions),
                    ]
                  )
                )
              ]
            )
          )
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
      padding: const EdgeInsets.only(top:5,),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(String desc in descs) 
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              child:Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Container(
                    width: 5,
                    height:5,
                    decoration: BoxDecoration(
                      shape:BoxShape.circle,
                      color:Palette.kToBlack[300],
                    ),
                  ),
                  const SizedBox(width:10),
                  Expanded(
                    child:Text(desc,
                      style:TextStyle(
                        color:Palette.kToBlack[900],
                        fontSize: 12,
                      ),
                      maxLines: null,
                    ),    
                  )
                  
                ]
              )
              
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
      width:80,
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
        fontSize: 14,
        color:Palette.kToBlack[600],
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}

