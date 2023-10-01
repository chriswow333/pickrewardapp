


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/card/repository/card/proto/generated/card.pbgrpc.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.eventresult.dart';
import 'package:pickrewardapp/cardreward/cardreward.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/shared/viewmodel/card.item.dart';
import 'package:provider/provider.dart';

class CardResultsProgress extends StatelessWidget {
  const CardResultsProgress({super.key});

  @override
  Widget build(BuildContext context) {

    CardRewardEventResultsViewModel cardRewardEventResultsViewModel = Provider.of<CardRewardEventResultsViewModel>(context);

    List<CardRewardEventResultProto> cardRewardEventResults = cardRewardEventResultsViewModel.get();

    return Container(
      child:SingleChildScrollView(
        child:Wrap(
          runSpacing: 20,
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
        style:const ButtonStyle(
          splashFactory:NoSplash.splashFactory,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            CardName(cardName: cardEvaluation.cardName, bankName: cardEvaluation.bankName,),
            SizedBox(height:10),
            Row(
              children:[
                CardIcon(image: cardEvaluation.cardImage,),
                SizedBox(width: 10,),
                Expanded(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      EvaluationResult(reward:cardEvaluation.reward, feedbackEventResult: feedbackEventResult,),
                      SizedBox(height:5),
                      CardRewardName(cardRewardName: cardEvaluation.cardRewardName,),
                    ]
                  )
                ),
              ]
            ),
            
          ],
        ),
      ),
    );
  }
}





class EvaluationResult extends StatelessWidget {
  const EvaluationResult({super.key, required this.reward, required this.feedbackEventResult});
  
  final RewardProto reward;
  final FeedbackEventResultProto feedbackEventResult;

  @override
  Widget build(BuildContext context) {

    String returnUnit = reward.rewardType == 0 ? "元":"點";
    String rewardName = reward.rewardType == 0 ? "現金":reward.name;
    feedbackEventResult.getReturn;

    double getReturn = feedbackEventResult.getReturn;
    String getReturnStr = getReturn.toInt().toString();
    String percentage = (feedbackEventResult.getPercentage * 100).toStringAsFixed(3);
    int length = percentage.length - 1;
    while(length > 0) {
      if(percentage[length] != '0' && percentage[length] != "."){
        break;
      }
      length--; 
    }

    percentage = percentage.substring(0,length+1);

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          if(feedbackEventResult.calculateType == 0)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text('${rewardName}回饋',
                  style:TextStyle(
                    color:Palette.kToBlue[600],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('獲得 ${percentage}% ${getReturnStr}${returnUnit} ',
                  style:TextStyle(
                    color:Palette.kToOrange[600],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]
            ),
         
          if(feedbackEventResult.calculateType == 1)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text('${rewardName}回饋',
                  style:TextStyle(
                    color:Palette.kToBlue[600],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('折抵 ${getReturnStr}${returnUnit} ',
                  style:TextStyle(
                    color:Palette.kToOrange[600],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]
            ),
        ]
      ),
    );
  }
}



class CardRewardName extends StatelessWidget {
  const CardRewardName({super.key, required this.cardRewardName});
  final String cardRewardName;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(cardRewardName,
          style: TextStyle(
            color:Palette.kToBlack[600],
          ),
          maxLines:null,
      )
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
                color:Palette.kToBlack[900],
              ),
            ),
          Text('折抵'+getReturn.toString(),
              style: TextStyle(
                fontSize: 15,
                color:Palette.kToBlack[900],
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
        color:Palette.kToBlack[900],
      ),
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
  const CardName({super.key, required this.cardName, required this.bankName});
  
  final String cardName;
  final String bankName; 

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
            Text(cardName,
              style: TextStyle(
                fontSize: 20,
                color:Palette.kToBlack[600],
              ),
            ),
          SizedBox(width:10),
          Text(bankName,
            style: TextStyle(
              fontSize: 14,
              color:Palette.kToBlack[600],
            ),
          ),
        ]
      )
    );
  }
}