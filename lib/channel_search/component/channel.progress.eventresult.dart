


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.eventresult.result.dart';
import 'package:pickrewardapp/channel_search/model/channel_progress.dart';
import 'package:pickrewardapp/channel_search/model/pay_usage.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class EventResultProgress extends StatelessWidget {
  const EventResultProgress({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left:5, right:5),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          EventResultProgressTitle(controller:controller),
          SizedBox(height:10),
          EvaluationCriteriaSelected(),
          SizedBox(height:10),
          EventResultMessage(),
          SizedBox(height:20),
          Expanded(
            child:SingleChildScrollView(
              child:Column(
                children:[
                  EventResults(),
                ]
              )
            )
          ),
          SizedBox(height:20),
          Container(
            child:ReEvaluateItem(controller: controller,),
          )
        ]   
      )
    );
  }
}


class EventResultProgressTitle extends StatelessWidget {
  
  const EventResultProgressTitle({super.key, required this.controller});
  
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Stack(
        children:[
          InkWell(
            onTap:(){
              controller.animateToPage(ChannelProgressPage.criteria, 
                duration: const Duration(milliseconds: 200), 
                curve: Curves.linear
              );
            },
            child:const Icon(
              Icons.arrow_back_ios_new
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('查詢高回饋信用卡',
                style: TextStyle(
                  fontSize: 18,
                  color:Palette.kToBlack[500],
                  fontWeight: FontWeight.bold
                ),
              ),
            ]
          ),
        ]
      )
    );
  }
}


class ReEvaluateItem extends StatelessWidget {
  const ReEvaluateItem({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text('不滿意以上信用卡?',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Palette.kToBlack[600],
              borderRadius:BorderRadius.all(Radius.circular(12.0)),
            ),
            padding: const EdgeInsets.only(left:24, right:24, top:8, bottom: 8),
            child:InkWell(
              onTap: (){
                controller.animateToPage(ChannelProgressPage.channel, 
                  duration: const Duration(milliseconds: 200), 
                  curve: Curves.linear
                );
              },
              child:Container(
                padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                child:Text('我要重新找卡',
                  style: TextStyle(
                    color: Palette.kToBlack[0],
                    fontSize: 16,
                  ),
                )
              )
            )
          )
        ]
      )
    );
    ;
  }
}

class EvaluationCriteriaSelected extends StatelessWidget {
  const EvaluationCriteriaSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Expanded(
          child:Container(
            padding:EdgeInsets.fromLTRB(5, 10, 5, 10),
            child:Container(
              padding:EdgeInsets.fromLTRB(15, 20, 15, 20),
                decoration: BoxDecoration(
                color:Palette.kToBlack[0],
                border: Border.all(
                  color:Palette.kToBlack[50]!,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  CriteriaSelectedChannel(),
                  SizedBox(height:10),
                  CriteriaSelectedCostAndDate(),
                  CriteriaSelectedTaskLabels(),
                  CardRewardSelectedPay(),
                ]
              )
            )
          )
        )
      ]
    );
  }
}


class CriteriaSelectedChannel extends StatelessWidget {
  const CriteriaSelectedChannel({super.key});

  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

    List<String> channelNames = criteriaViewModel.channelItemModels.map((e) => e.name).toList();
    List<String> selectedNames = criteriaViewModel.channelLabels.map((e) => e.name).toList();
    selectedNames.addAll(channelNames);
    String names = selectedNames.join(", ");

    return Container( 
      child:Text(names,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}

class CriteriaSelectedCostAndDate extends StatelessWidget {
  const CriteriaSelectedCostAndDate({super.key});

  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    DateTime dateTime = criteriaViewModel.date;
        int cost = criteriaViewModel.cost;

    String formattedDate = DateFormat('yyyy/MM/dd').format(dateTime);

    return Container(
      child:Text('預計刷卡日期: $formattedDate, 預計刷卡: $cost元',
        style:TextStyle(
          fontSize: 12,
        )
      )
    );
  }
}

class CriteriaSelectedTaskLabels extends StatelessWidget {
  const CriteriaSelectedTaskLabels({super.key});

  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    String taskLabels = criteriaViewModel.taskLabels.map((e) => e.name).join(", ");

    if(taskLabels.isNotEmpty) {
      taskLabels = "接受$taskLabels等任務活動";
      return Container(
        child:Text(taskLabels,
          style:TextStyle(
            fontSize: 12,
          )
        )
      );
    }
    
    return Container();
  }
}



class CardRewardSelectedPay extends StatelessWidget {
  const CardRewardSelectedPay({super.key});

  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

    PayUsageEnum payUsage = criteriaViewModel.payUsage;
    String payUsageStr = "";
    
    if (payUsage != PayUsageEnum.whatever) {
      payUsageStr = "${payUsage.name}行動支付";
      return Container(
        child:Text(payUsageStr,
          style:TextStyle(
            fontSize: 12,
          )
        )
      );
    }
    return Container();
  }
}




class CardRewarEvaluationDetailTitle extends StatelessWidget {
  const CardRewarEvaluationDetailTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Flexible(
            child: Text('玫瑰Giving卡',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 20,),
          Flexible(
            child: Text('最高回饋 3% 30元',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
        ]
      ),
    );
  }
}


class CardIcon extends StatelessWidget {
  const CardIcon({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all()
      ),
      width:80,
      height:50,
      child:Placeholder(),
    );
    Image.memory(
      gaplessPlayback: true,
      base64Decode(image), 
      width:70,
      height:50,
    );
  }
}



class CardRewardEventResultItem extends StatelessWidget {
  const CardRewardEventResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardName(name:'玫瑰Giving卡'),
          CardRewardFeedback(),
        ]
      )
    );
  }
}


class CardRewardFeedback extends StatelessWidget {
  const CardRewardFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('獲得3% 30元',
        style:TextStyle(
          fontSize: 12,
        )
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
      child:Text('${name}',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}

class CardRewardRank extends StatelessWidget {
  const CardRewardRank({super.key, required this.rank});

  final int rank;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('Top ${rank}',
        style: TextStyle(
          fontSize: 14,
        ),
      )
    );
  }
}


class EventResultMessage extends StatelessWidget {
  const EventResultMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Text('推薦你使用',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}



// class CardEvaluationResults extends StatelessWidget {
//   const CardEvaluationResults({super.key});

//   @override
//   Widget build(BuildContext context) {

    
//     CardRewardEventResultsViewModel cardRewardEventResultsViewModel = Provider.of<CardRewardEventResultsViewModel>(context);

//     List<EvaluateCardRewardsReply_CardRewardEventResult> cardRewardEventResults = cardRewardEventResultsViewModel.cardRewardEventResults;
    
//     return Wrap(
//       runSpacing: 20,
//       children:[
//         for(EvaluateCardRewardsReply_CardRewardEventResult c in cardRewardEventResults) 
//           CardEvaluationResult(cardRewardEventResult: c,),
//       ],
//     );
//   }
// }

// class CardEvaluationResult extends StatelessWidget {
//   const CardEvaluationResult({super.key, required this.cardRewardEventResult});
  
//   final EvaluateCardRewardsReply_CardRewardEventResult cardRewardEventResult;
  
//   @override
//   Widget build(BuildContext context) {

//     CardRewardEvaluationEventResult cardEvaluation = cardRewardEventResult.cardRewardEvaluationEventResult;
//     EvaluationEventResultResp_FeedbackEventResultResp feedbackEventResult = cardRewardEventResult.evaluationEventResultResp.feedbackEventResultResp;
   
//     List<String> shortNames = cardEvaluation.cardRewardTaskShortNames;   
    
//     return Container(
//     padding: const EdgeInsets.all(5),
//     decoration: BoxDecoration(
//       border: Border.all(
//         color:Colors.white,
//       ),
//       borderRadius: const BorderRadius.all(
//         Radius.circular(10),
//       ),
//       color:Palette.kToBlue[50],
//       boxShadow: [
//         BoxShadow(
//           color: Palette.kToBlack[200]!,
//           offset: const Offset(
//             1.0,
//             1.0,
//           ),
//           blurRadius: 1.0,
//           // spreadRadius: 0.5,
//         ), //BoxShadow
//         BoxShadow(
//           color: Colors.white,
//           offset: const Offset(0.0, 0.0),
//           blurRadius: 0.0,
//           spreadRadius: 0.0,
//         ), //BoxShadow
//       ],
//     ),
//       child:TextButton(
//         style:const ButtonStyle(
//           splashFactory:NoSplash.splashFactory,
//         ),
//         onPressed: (){
//           CardHeaderItemModel cardHeaderItemModel = CardHeaderItemModel(
//             id:cardEvaluation.cardID,
//             name:cardEvaluation.cardName,
//             descriptions:cardEvaluation.cardDesc,
//             image:cardEvaluation.cardImage, 
//             updateDate: cardEvaluation.updateDate.toInt(),
//             lintUrl: cardEvaluation.linkURL,
            
//           );

//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) =>  CardContentScreen(cardHeaderItemModel:cardHeaderItemModel)),
//           );
//         },
//         child:Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children:[
//             CardName(cardName: cardEvaluation.cardName, bankName: cardEvaluation.bankName,),
//             const SizedBox(height:10),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children:[
//                 TaskShortNames(shortNames:shortNames),
//                 CardRewardName(cardRewardName: cardEvaluation.cardRewardName,),
//                 Row(
//                   children:[
//                     CardIcon(image: cardEvaluation.cardImage,),
//                     const SizedBox(width:20),
//                     EvaluationResult(reward:cardEvaluation.reward, feedbackEventResult: feedbackEventResult,),
//                   ]
//                 )
//               ]
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


// class TaskShortNames extends StatelessWidget {
//   const TaskShortNames({super.key, required this.shortNames});
//   final List<String> shortNames;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children:[
//         for(String shortName in shortNames)
//           TaskShortName(shortName: shortName)
//       ]
//     );
//   }
// }


// class TaskShortName extends StatelessWidget {
//   const TaskShortName({super.key, required this.shortName});
//   final String shortName;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(right:5),
//       child:Container(
//         padding: const EdgeInsets.all(5),
//         decoration: BoxDecoration(
//           borderRadius: const BorderRadius.all(
//             Radius.circular(15),
//           ),
//           border: Border.all(
//             color:Palette.kToRed[600]!,
//           ),
//         ),
//         child:Text(shortName,
//           style: TextStyle(
//             fontSize: 12,
//             color:Palette.kToRed[600]
//           ),
//         )
//       )
//     );
//   }
// }

// class EvaluationResult extends StatelessWidget {
//   const EvaluationResult({super.key, required this.reward, required this.feedbackEventResult});
  
//   final CardRewardEvaluationEventResult_Reward reward;
//   final EvaluationEventResultResp_FeedbackEventResultResp feedbackEventResult;

//   @override
//   Widget build(BuildContext context) {

//     String returnUnit = reward.rewardType == 0 ? "元":"點";
//     String rewardName = reward.rewardType == 0 ? "現金":reward.name;
//     feedbackEventResult.getReturn;

//     double getReturn = feedbackEventResult.getReturn;
//     String getReturnStr = getReturn.toInt().toString();
//     String percentage = (feedbackEventResult.getPercentage * 100).toStringAsFixed(3);
//     int length = percentage.length - 1;
//     while(length > 0) {
//       if(percentage[length] != '0' && percentage[length] != "."){
//         break;
//       }
//       length--; 
//     }

//     percentage = percentage.substring(0,length+1);

//     return Container(
//       child:Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children:[
//           if(feedbackEventResult.calculateType == 0)
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children:[
//                 Text('${rewardName}回饋',
//                   style:TextStyle(
//                     color:Palette.kToBlack[600],
//                     fontSize: 18,
//                   ),
//                 ),
//                 Text('獲得 ${percentage}% ${getReturnStr}${returnUnit} ',
//                   style:TextStyle(
//                     color:Palette.kToYellow[400],
//                     fontSize: 18,
//                   ),
//                 ),
//               ]
//             ),
         
//           if(feedbackEventResult.calculateType == 1)
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children:[
//                 Text('${rewardName}回饋',
//                   style:TextStyle(
//                     color:Palette.kToBlack[600],
//                     fontSize: 18,
//                   ),
//                 ),
//                 Text('折抵 ${getReturnStr}${returnUnit} ',
//                   style:TextStyle(
//                     color:Palette.kToYellow[400],
//                     fontSize: 18,
//                   ),
//                 ),
//               ]
//             ),
//         ]
//       ),
//     );
//   }
// }



// class CardRewardName extends StatelessWidget {
//   const CardRewardName({super.key, required this.cardRewardName});
//   final String cardRewardName;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:Text(cardRewardName,
//           style: TextStyle(
//             color:Palette.kToBlack[600],
//             fontSize: 18,
//           ),
//           maxLines:null,
//       )
//     );
//   }
// }
// class CardIcon extends StatelessWidget {
//   const CardIcon({super.key, required this.image});

//   final String image;
//   @override
//   Widget build(BuildContext context) {
//     return Image.memory(
//         gaplessPlayback: true,
//         base64Decode(image), 
//         width:70,
//         height:50,
//       );
//   }
// }


// class CardName extends StatelessWidget {
//   const CardName({super.key, required this.cardName, required this.bankName});
  
//   final String cardName;
//   final String bankName; 

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children:[
//             Text(cardName,
//               style: TextStyle(
//                 fontSize: 20,
//                 color:Palette.kToBlack[600],
//               ),
//             ),
//           SizedBox(width:10),
//           Text(bankName,
//             style: TextStyle(
//               fontSize: 14,
//               color:Palette.kToBlack[600],
//             ),
//           ),
//         ]
//       )
//     );
//   }
// }