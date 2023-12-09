

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Banner;
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';


import 'package:pickrewardapp/cardreward/component/cardreward.header.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.tab.dart';
import 'package:pickrewardapp/shared/config/global_size.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/shared/model/card_header.dart';

class CardContentScreen extends StatelessWidget {
  const CardContentScreen({super.key, required this.cardHeaderItemModel});

  final CardHeaderItemModel cardHeaderItemModel;
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:CupertinoPageScaffold(
        child: SafeArea(
          child: LayoutBuilder(
            builder:(context, constraints) {
              double screenWidth = MediaQuery.of(context).size.width;
              double tabletWidthThreshold = GlobalSize.MAX_WIDTH;
              if (screenWidth > tabletWidthThreshold) {
                return Container(
                  width: tabletWidthThreshold,
                  child: CardContentPage(cardHeaderItemModel:cardHeaderItemModel),
                );
              } else {
                return CardContentPage(cardHeaderItemModel:cardHeaderItemModel);
              }
            },
          ),
        ),
      )
    );

  }
}


class CardContentPage extends StatelessWidget {
  const CardContentPage({super.key, required this.cardHeaderItemModel});
  final CardHeaderItemModel cardHeaderItemModel;
  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<CardHeaderViewModel>(create:(_)=>CardHeaderViewModel(cardHeaderItemModel)),
            ChangeNotifierProvider<CardRewardViewModel>(create:(_)=>CardRewardViewModel(cardHeaderItemModel.id)),
            ChangeNotifierProvider<CardRewardTabViewModel>(create:(_)=>CardRewardTabViewModel()),
          ],
          child:Container(
            child:Column(
              children:[
                CardHeader(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:Palette.kToBlack[100]!,
                      width:0.5
                    )
                  ),
                ),
                CardContent(cardHeaderItemModel: cardHeaderItemModel,),
                Expanded(
                  child:CardRewardComponent(),
                ),
              ]
            ),
          ),
        )
      );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({super.key, required this.cardHeaderItemModel});

  final CardHeaderItemModel cardHeaderItemModel;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top:40),
      child:Column(
        children:[
          CardImage(image: cardHeaderItemModel.image,),
          CardName(name:cardHeaderItemModel.name),
          CardRewardDetailBtn(url: cardHeaderItemModel.linkUrl,),
          SizedBox(height:40),
          CardRewardTab(cardHeaderItemModel: cardHeaderItemModel,),
        ]
      )
    );
  }
}

class CardName extends StatelessWidget {
  const CardName({super.key, required this.name});
  
  final String name;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:20,),
      child:Text('$name',
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}
class CardImage extends StatelessWidget {
  const CardImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.memory(
        gaplessPlayback: true,
        base64Decode(image), 
        scale:1.5
      )
    );
  }
}


class CardRewardDetailBtn extends StatelessWidget {
  const CardRewardDetailBtn({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:GestureDetector(
        onTap:() async{
          if (!await launchUrl(Uri.parse(url))) {
            throw Exception('Could not launch $url');
          }
        },
        child:Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Text('查看完整資訊',
              style: TextStyle(
                fontSize:12,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                color: Palette.kToBlack[500]
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size:16,
            )
          ]
        )
      )
    );
  }
}


class CardRewardTab extends StatelessWidget {
  const CardRewardTab({super.key, required this.cardHeaderItemModel});
  
  final CardHeaderItemModel cardHeaderItemModel;

  @override
  Widget build(BuildContext context) {
    
    CardRewardTabViewModel cardRewardTabViewModel = Provider.of<CardRewardTabViewModel>(context);

    return Container(
      padding: EdgeInsets.only(left:20, right:20),
      child:Row(
        children:[
          Expanded(
            child:Row(
              children:[  
                TextButton(
                  onPressed: (){
                    cardRewardTabViewModel.showAll = true;
                  },
                  child:Text('主要回饋',
                    style: TextStyle(
                      fontSize: 14,
                      color:Palette.kToBlack[400],
                    ),
                  ),
                  style:ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]!,),
                    shape:MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        side:BorderSide(
                          width:1.0,
                          color:Palette.kToBlack[100]!,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width:10),
                TextButton(
                  onPressed: (){
                    cardRewardTabViewModel.showAll = false;
                  },
                  child:Text('其他優惠',
                    style: TextStyle(
                      fontSize: 14,
                      color:Palette.kToBlack[400],
                    ),
                  ),
                  style:ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]!,),
                    shape:MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        side:BorderSide(
                          width:1.0,
                          color:Palette.kToBlack[100]!,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ]
            ),
          ),
          CardUpdateDate(updateDateInt: cardHeaderItemModel.updateDate,),
        ]
      )
    );
  }
}

class CardUpdateDate extends StatelessWidget {
  const CardUpdateDate({super.key, required this.updateDateInt});

  final int updateDateInt;
  @override
  Widget build(BuildContext context) {
    
    final updateDateTime = DateTime.fromMillisecondsSinceEpoch(updateDateInt*1000);
    DateFormat formatter = DateFormat('yyyy/MM/dd');

    final updateDate = formatter.format(updateDateTime);
    
    return Text('更新日期 : ${updateDate}',
      style: TextStyle(
        fontSize: 12,
        color: Palette.kToBlack[400],
      ),
    );
  }
}


class CardRewardComponent extends StatelessWidget {
  const CardRewardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CardRewardItems(),
    );
  }
}




