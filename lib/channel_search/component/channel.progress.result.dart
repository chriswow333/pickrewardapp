


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
      height:MediaQuery.of(context).size.height - 230 ,
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            for(CardRewardEventResultProto c in cardRewardEventResults) 
              CardResult(cardRewardEventResult: c,),
            for(CardRewardEventResultProto c in cardRewardEventResults) 
              CardResult(cardRewardEventResult: c,),
            for(CardRewardEventResultProto c in cardRewardEventResults) 
              CardResult(cardRewardEventResult: c,),
            for(CardRewardEventResultProto c in cardRewardEventResults) 
              CardResult(cardRewardEventResult: c,),
            for(CardRewardEventResultProto c in cardRewardEventResults) 
              CardResult(cardRewardEventResult: c,),
            for(CardRewardEventResultProto c in cardRewardEventResults) 
              CardResult(cardRewardEventResult: c,),
            for(CardRewardEventResultProto c in cardRewardEventResults) 
              CardResult(cardRewardEventResult: c,),
            for(CardRewardEventResultProto c in cardRewardEventResults) 
              CardResult(cardRewardEventResult: c,),
            for(CardRewardEventResultProto c in cardRewardEventResults) 
              CardResult(cardRewardEventResult: c,),
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
   
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Container(
          padding:const EdgeInsets.only(bottom: 5, top:5),
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
            style:ButtonStyle(
              alignment: Alignment.center,
              padding:const MaterialStatePropertyAll(
                EdgeInsets.fromLTRB(0, 12, 0, 0),
              ),
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
                CardUpdateDate(cardEndDate: cardEvaluation.cardRewardEndDate.toInt(),),

                Row(
                  children:[
                    CardIcon(image: cardEvaluation.cardImage,),
                    SizedBox(width:20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        EvaluationResult(reward:cardEvaluation.reward, feedbackEventResult: feedbackEventResult,),
                        RewardTypeName(rewardTypeName: cardEvaluation.reward.name,),
                      ]
                    )
                  ]
                ),
                CardName(cardName: cardEvaluation.cardName, bankName: cardEvaluation.bankName,),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children:[
                //     // CardTitle(cardName: cardEvaluation.cardName, bankName: cardEvaluation.bankName,cardImage: cardEvaluation.cardImage,),
                //     // RewardItem(reward: cardEvaluation.reward,),
                //     CardRewardEventResult(feedbackEventResult: feedbackEventResult,),
                //     CardRewardName(cardRewardName: cardEvaluation.cardRewardName,),
                //   ],
                // ),
              ],
            ),
          ),
        ),
        SizedBox(height:10),
      ]
    );
  }
}


class RewardTypeName extends StatelessWidget {
  const RewardTypeName({super.key, required this.rewardTypeName});
  final String rewardTypeName;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(rewardTypeName,
        style: TextStyle(
          fontSize: 20,
          color:Palette.kToBlack[900],
        ),
      )
    );
  }
}



class EvaluationResult extends StatelessWidget {
  const EvaluationResult({super.key, required this.reward, required this.feedbackEventResult});
  
  final RewardProto reward;
  final FeedbackEventResultProto feedbackEventResult;

  @override
  Widget build(BuildContext context) {
    String returnName = reward.rewardType == 0 ? "現金":"點數";
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
      child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          if(feedbackEventResult.calculateType == 0)
            Text("${percentage}% ${returnName}回饋, 折抵${getReturnStr}",
              style:TextStyle(
                fontSize: 20,
                color:Palette.kToBlack[800],
              ),
            ),
          if(feedbackEventResult.calculateType == 1)
            Text("折抵${getReturnStr}",
              style:TextStyle(
                fontSize: 20,
                color:Palette.kToBlack[800],
              ),
            )

        ]
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
            color:Palette.kToBlack[800],
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
          color:Palette.kToBlack[900],
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


class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.cardName, required this.bankName, required this.cardImage});
  
  final String cardName;
  final String bankName;
  final String cardImage;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        // CardIcon(image: cardImage,),
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
        width:120,
        height:90,
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
          FittedBox(
            fit: BoxFit.fitWidth, 
            child: Text(bankName,
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