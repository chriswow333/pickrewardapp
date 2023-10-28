


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/model/card_header.dart';
import 'package:pickrewardapp/shared/repository/card/proto/generated/card.pbgrpc.dart';
import 'package:pickrewardapp/channel_search/viewmodel/reward.eventresult.dart';
import 'package:pickrewardapp/cardreward/cardreward.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class CardResultsProgress extends StatelessWidget {
  const CardResultsProgress({super.key});

  @override
  Widget build(BuildContext context) {

    CardRewardEventResultsViewModel cardRewardEventResultsViewModel = Provider.of<CardRewardEventResultsViewModel>(context);

    List<EvaluateCardRewardsReply_CardRewardEventResult> cardRewardEventResults = cardRewardEventResultsViewModel.cardRewardEventResults;
    
    if(cardRewardEventResults.isNotEmpty) {
      return Container(
        child:SingleChildScrollView(
          child:Wrap(
            runSpacing: 20,
            children:[
              for(EvaluateCardRewardsReply_CardRewardEventResult c in cardRewardEventResults) 
                CardResult(cardRewardEventResult: c,),
            ],
          )
        ),
      );
    }else {
      return Container(
        alignment: Alignment.topCenter,
        child:Text('無搜尋結果',
          style:TextStyle(
            fontSize: 18,
            color:Palette.kToBlack[600],
          )
        )
      );
    }

    
  }
}

class CardResult extends StatelessWidget {
  const CardResult({super.key, required this.cardRewardEventResult});
  
  final EvaluateCardRewardsReply_CardRewardEventResult cardRewardEventResult;
  
  @override
  Widget build(BuildContext context) {

    CardRewardEvaluationEventResult cardEvaluation = cardRewardEventResult.cardRewardEvaluationEventResult;
    EvaluationEventResultResp_FeedbackEventResultResp feedbackEventResult = cardRewardEventResult.evaluationEventResultResp.feedbackEventResultResp;
   
    List<String> shortNames = cardEvaluation.cardRewardTaskShortNames;   
    
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
          CardHeaderItemModel cardHeaderItemModel = CardHeaderItemModel(
            id:cardEvaluation.cardID,
            name:cardEvaluation.cardName,
            descriptions:cardEvaluation.cardDesc,
            image:cardEvaluation.cardImage, 
            updateDate: cardEvaluation.updateDate.toInt(),
            lintUrl: cardEvaluation.linkURL,
            
          );

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  CardContentScreen(cardHeaderItemModel:cardHeaderItemModel)),
          );
        },
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            CardName(cardName: cardEvaluation.cardName, bankName: cardEvaluation.bankName,),
            const SizedBox(height:10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                TaskShortNames(shortNames:shortNames),
                CardRewardName(cardRewardName: cardEvaluation.cardRewardName,),
                Row(
                  children:[
                    CardIcon(image: cardEvaluation.cardImage,),
                    const SizedBox(width:20),
                    EvaluationResult(reward:cardEvaluation.reward, feedbackEventResult: feedbackEventResult,),
                  ]
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}


class TaskShortNames extends StatelessWidget {
  const TaskShortNames({super.key, required this.shortNames});
  final List<String> shortNames;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        for(String shortName in shortNames)
          TaskShortName(shortName: shortName)
      ]
    );
  }
}


class TaskShortName extends StatelessWidget {
  const TaskShortName({super.key, required this.shortName});
  final String shortName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right:5),
      child:Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            color:Palette.kToRed[600]!,
          ),
        ),
        child:Text(shortName,
          style: TextStyle(
            fontSize: 12,
            color:Palette.kToRed[600]
          ),
        )
      )
    );
  }
}

class EvaluationResult extends StatelessWidget {
  const EvaluationResult({super.key, required this.reward, required this.feedbackEventResult});
  
  final CardRewardEvaluationEventResult_Reward reward;
  final EvaluationEventResultResp_FeedbackEventResultResp feedbackEventResult;

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
                    color:Palette.kToBlack[600],
                    fontSize: 18,
                  ),
                ),
                Text('獲得 ${percentage}% ${getReturnStr}${returnUnit} ',
                  style:TextStyle(
                    color:Palette.kToYellow[400],
                    fontSize: 18,
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
                    color:Palette.kToBlack[600],
                    fontSize: 18,
                  ),
                ),
                Text('折抵 ${getReturnStr}${returnUnit} ',
                  style:TextStyle(
                    color:Palette.kToYellow[400],
                    fontSize: 18,
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
            fontSize: 18,
          ),
          maxLines:null,
      )
    );
  }
}
// class CardRewardEventResult extends StatelessWidget {
//   const CardRewardEventResult({super.key, required this.feedbackEventResult});

//   final FeedbackEventResultProto feedbackEventResult;

//   @override
//   Widget build(BuildContext context) {
    
//     if (feedbackEventResult.calculateType == 0 ) {
//       double percentage = feedbackEventResult.getPercentage * 100;
//       double getReturn = feedbackEventResult.getReturn;

//       return Flexible(
//         child: Column(
//           children:[
//             Text(percentage.toStringAsFixed(3),
//               style: TextStyle(
//                 fontSize: 15,
//                 color:Palette.kToBlack[900],
//               ),
//             ),
//           Text('折抵'+getReturn.toString(),
//               style: TextStyle(
//                 fontSize: 15,
//                 color:Palette.kToBlack[900],
//               ),
//             ),
//           ],
//         )
//       );
//     }else {
//       return Container();
//     }
    
//   }
// }

// class RewardItem extends StatelessWidget {
//   const RewardItem({super.key, required this.reward});

//   final RewardProto reward;
  

//   @override
//   Widget build(BuildContext context) {

//     return Text(reward.name,
//       style:TextStyle(
//         fontSize: 15,
//         color:Palette.kToBlack[900],
//       ),
//     );
//   }
// }


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