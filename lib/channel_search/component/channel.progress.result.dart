


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/card/repository/card/proto/generated/card.pbgrpc.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.eventresult.dart';
import 'package:pickrewardapp/cardreward/cardreward.dart';
import 'package:pickrewardapp/shared/viewmodel/card.item.dart';
import 'package:provider/provider.dart';

class CardResultsProgress extends StatelessWidget {
  const CardResultsProgress({super.key});

  @override
  Widget build(BuildContext context) {

    CardRewardEventResultsViewModel cardRewardEventResultsViewModel = Provider.of<CardRewardEventResultsViewModel>(context);

    List<CardRewardEventResultProto> cardRewardEventResults = cardRewardEventResultsViewModel.get();

    return Container(
      height:500 ,
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            for(CardRewardEventResultProto c in cardRewardEventResults) 
              CardResult(cardRewardEventResult: c,),
          ],
        )
      ),
    );
  }
}

class CardResult extends StatelessWidget {
  const CardResult({super.key, required this.cardRewardEventResult});
  
  final CardRewardEventResultProto cardRewardEventResult;
  
  @override
  Widget build(BuildContext context) {

    CardRewardEvaluationEventResultProto cardEvaluation = cardRewardEventResult.cardRewardEvaluationEventResult;
    FeedbackEventResultProto feedbackEventResult = cardRewardEventResult.rewardEventResult.feedbackEventResultResp;
   
    return Container(
      padding:const EdgeInsets.only(bottom: 20),
      child:TextButton(
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          elevation:MaterialStatePropertyAll(2),
        ),
        onPressed: (){
          
          CardItemModel cardItemModel = CardItemModel(
            id:cardEvaluation.cardID,
            name:cardEvaluation.cardName,
            descriptions:cardEvaluation.cardDesc,
            image:cardEvaluation.cardImage,
          );


          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  CardContentScreen(cardItemModel:cardItemModel)),
          );
        },
        child:Column(
          children:[
            CardUpdateDate(cardEndDate: cardEvaluation.cardRewardEndDate.toInt(),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                CardTitle(cardName: cardEvaluation.cardName, bankName: cardEvaluation.bankName,cardImage: cardEvaluation.cardImage,),
                RewardItem(reward: cardEvaluation.reward,),
                CardRewardEventResult(feedbackEventResult: feedbackEventResult,),
                CardRewardName(cardRewardName: cardEvaluation.cardRewardName,),
              ],
            ),
          ],
        ),
      )
    );
  }
}


class CardUpdateDate extends StatelessWidget {
  const CardUpdateDate({super.key, required this.cardEndDate});

  final int cardEndDate;
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(cardEndDate*1000);
    String dateTimeFormatted = DateFormat("yyyy/MM/dd").format(dateTime);
    return Row(
      children:[
        Expanded(child:Container()),
        Text(dateTimeFormatted,
          style:TextStyle(
            fontSize: 10,
            color:Colors.cyan[800],
          ),
        ),
      ],
    );
  }
}

class CardRewardName extends StatelessWidget {
  const CardRewardName({super.key, required this.cardRewardName});
  final String cardRewardName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child:Text(cardRewardName,
        style: TextStyle(
          fontSize: 12,
          color:Colors.cyan[900],
        ),
      ),
    );
  }
}
class CardRewardEventResult extends StatelessWidget {
  const CardRewardEventResult({super.key, required this.feedbackEventResult});

  final FeedbackEventResultProto feedbackEventResult;

  @override
  Widget build(BuildContext context) {
    
    if (feedbackEventResult.calculateType == 0 ) {
      double percentage = feedbackEventResult.getPercentage * 100;
      double getReturn = feedbackEventResult.getReturn;

      return Flexible(
        child: Column(
          children:[
            Text(percentage.toStringAsFixed(3),
              style: TextStyle(
                fontSize: 15,
                color:Colors.cyan[900],
              ),
            ),
          Text('折抵'+getReturn.toString(),
              style: TextStyle(
                fontSize: 15,
                color:Colors.cyan[900],
              ),
            ),
          ],
        )
      );
    }else {


      return Container();
    }
    
  }
}

class RewardItem extends StatelessWidget {
  const RewardItem({super.key, required this.reward});

  final RewardProto reward;
  

  @override
  Widget build(BuildContext context) {

    return Text(reward.name,
      style:TextStyle(
        fontSize: 15,
        color:Colors.cyan[900],
      ),
    );
  }
}


class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.cardName, required this.bankName, required this.cardImage});
  
  final String cardName;
  final String bankName;
  final String cardImage;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CardIcon(image: cardImage,),
        CardName(cardName: cardName, bankName: bankName,),
      ]
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
  const CardName({super.key, required this.cardName, required this.bankName});
  
  final String cardName;
  final String bankName; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Text(cardName,
          style: TextStyle(
            fontSize: 15,
            color:Colors.cyan[900],
          ),
        ),
        Text(bankName,
          style: TextStyle(
            fontSize: 12,
            color:Colors.cyan[900],
          ),
        ),
      ]
    );
  }
}