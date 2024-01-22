

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:pickrewardapp/card/viewmodel/card.search.dart';
import 'package:pickrewardapp/card/screen/cardreward.dart';
import 'package:pickrewardapp/shared/card/model/card.dart';
import 'package:pickrewardapp/shared/card/model/card_header.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class CardSearchItems extends StatelessWidget {
  const CardSearchItems({super.key});

  @override
  Widget build(BuildContext context) {

    SearchCardViewModel searchCardViewModel = Provider.of<SearchCardViewModel>(context);
    bool loading = searchCardViewModel.loading;
    String keyword = searchCardViewModel.keyword;

    if(keyword.isNotEmpty) {
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
              const LoadingItem(),

            if(!loading)
              const SearchItems(),
          ],
        )
      );
    }else {
      return const Expanded(
        child:SearchCardKeywordHistory(),
      );
    }
    
  }
}

class SearchCardKeywordHistory extends StatelessWidget {
  const SearchCardKeywordHistory({super.key});

  @override
  Widget build(BuildContext context) {
    
    SearchCardViewModel searchCardViewModel = Provider.of<SearchCardViewModel>(context);
    List<String> keywordHistory = searchCardViewModel.searchKeywordHistory;

    return Container(
      alignment: Alignment.topLeft,
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              child:Text('最近搜尋',
                style: TextStyle(
                  color:Palette.kToBlack[600],
                ),
              )
            ),
            const SizedBox(height:20),
            if(keywordHistory.isEmpty) 
              const Text('尚無資料',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),

            for(String keyword in keywordHistory)
              KeywordHistory(keyword: keyword,),
          ]
        )
      )
    );
  }
} 


class KeywordHistory extends StatelessWidget {
  const KeywordHistory({super.key, required this.keyword});

  final String keyword;

  @override
  Widget build(BuildContext context) {

    SearchCardViewModel searchCardViewModel = Provider.of<SearchCardViewModel>(context);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){
        searchCardViewModel.searchCardFromHistory(keyword);
      },
      child:Container(
        padding: const EdgeInsets.all(20),
        child:Wrap(
          alignment:WrapAlignment.end,
          children:[
            const Icon(
              Icons.search,
              size:30,
            ),
            const SizedBox(width:10),
            Text(keyword,
              style:const TextStyle(
                fontSize: 20,
              )
            )
          ]
        )
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
              const EmptyItem(),

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
      child:const Row(
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
      padding: const EdgeInsets.only(top:10, bottom: 10),
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
                    const SizedBox(width: 10,),
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
      padding: const EdgeInsets.only(top:5),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(String desc in descs) 
            Container(
              padding: const EdgeInsets.only(bottom: 3),
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

