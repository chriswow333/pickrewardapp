

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/card/viewmodel/card.search.dart';
import 'package:pickrewardapp/cardreward/cardreward.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/shared/model/card.dart';
import 'package:pickrewardapp/shared/model/card_header.dart';
import 'package:provider/provider.dart';

class CardSearchItems extends StatelessWidget {
  const CardSearchItems({super.key});

  @override
  Widget build(BuildContext context) {

    SearchCardViewModel searchCardViewModel = Provider.of<SearchCardViewModel>(context);
    bool loading = searchCardViewModel.loading;
    return Expanded(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('搜尋結果',
            style: TextStyle(
              color:Palette.kToBlack[600],
            ),
          ),
          if(loading)
            LoadingItem(),

          if(!loading)
            SearchItems(),
        ],
      )
    );
  }
}

class LoadingItem extends StatelessWidget {
  const LoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(
            width:40,
            height:40,
            child:CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Palette.kToBlue[600]
              ),
            )
          ),
        ]
      )
    );
  }
}


class SearchItems extends StatelessWidget {
  const SearchItems({super.key});

  @override
  Widget build(BuildContext context) {

    SearchCardViewModel searchCardViewModel = Provider.of<SearchCardViewModel>(context);
    List<CardItemModel> cardItemModels = searchCardViewModel.searchItemModels;

    return Expanded(
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            if(searchCardViewModel.searched && cardItemModels.isEmpty) 
              EmptyItem(),

            for(CardItemModel c in cardItemModels)
              CardItem(cardItemModel: c,)
          ]
        )
      )
    );
  }
}

class EmptyItem extends StatelessWidget {
  const EmptyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('查無資料'),
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
          // boxShadow: [
          //   BoxShadow(
          //     color: Palette.kToBlack[200]!,
          //     offset: const Offset(
          //       1.0,
          //       1.0,
          //     ),
          //     blurRadius: 1.0,
          //     // spreadRadius: 0.5,
          //   ), //BoxShadow
          //   BoxShadow(
          //     color: Colors.white,
          //     offset: const Offset(0.0, 0.0),
          //     blurRadius: 0.0,
          //     spreadRadius: 0.0,
          //   ), //BoxShadow
          // ],
        ),
        child:TextButton(
          onPressed: (){
            FocusScope.of(context).unfocus();
            CardHeaderItemModel cardHeaderItemModel = CardHeaderItemModel(
              id:cardItemModel.id,
              name:cardItemModel.name,
              descriptions:cardItemModel.descriptions,
              image:cardItemModel.image,
              updateDate: cardItemModel.updateDate,
              lintUrl: cardItemModel.linkURL,
            );
            
            Navigator.of(context, rootNavigator: true).push(
              MaterialPageRoute(
                builder: (context) =>  CardContentScreen(cardHeaderItemModel:cardHeaderItemModel)
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

