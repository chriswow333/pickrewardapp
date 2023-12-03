



import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/channel_search/model/event_result.dart';
import 'package:pickrewardapp/shared/config/palette.dart';


class CardRewardEvaluationDetailBottomUp extends StatelessWidget {
  const CardRewardEvaluationDetailBottomUp({super.key, required this.cardEventResultModel});

  final CardEventResultModel cardEventResultModel;

  @override
  Widget build(BuildContext context) {

    return Container(
      // height:MediaQuery.of(context).size.height * 0.90,
      child:Column(
        children: [
          CardRewardEvaluationDetailTitle(cardEventResultModel: cardEventResultModel,),
          const SizedBox(height: 10,),
          CostName(cost:cardEventResultModel.cost),
          Expanded(
            child:SingleChildScrollView(
              // physics: AlwaysScrollableScrollPhysics(),
              child:CardRewardEvaluationResultDetails(cardEventResultModel: cardEventResultModel,),
            ),
          ),
        ],
      ),
    );
  }
}

class CostName extends StatelessWidget {
  const CostName({super.key, required this.cost});

  final int cost;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('以預估消費金額\$$cost來計算',
        style: TextStyle(
          fontSize: 14,
          decoration: TextDecoration.none,
          color:Palette.kToBlack[500],
          fontWeight: FontWeight.normal,
        ),
      )
    );
  }
}

class CardRewardEvaluationDetailTitle extends StatelessWidget {
  const CardRewardEvaluationDetailTitle({super.key, required this.cardEventResultModel});
  
  final CardEventResultModel cardEventResultModel;

  @override
  Widget build(BuildContext context) {

    
    return Container(
      padding: EdgeInsets.all(20),
      child:Column(
        children:[
          CardRewardEvaluationTitleBar(),
          Divider(),
          CardImage(image:cardEventResultModel.cardImage),
          CardName(cardEventResultModel:cardEventResultModel),
          SizedBox(height:5),
          CardRewardDetailBtn(),

        ]
      ),
    );
  }
}

class CardRewardDetailBtn extends StatelessWidget {
  const CardRewardDetailBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:TextButton(
        onPressed:(){

        },
        child:Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Text('查看完整資訊',
              style: TextStyle(
                fontSize:14,
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

class CardName extends StatelessWidget {
  const CardName({super.key, required this.cardEventResultModel});
  
  final CardEventResultModel cardEventResultModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text("${cardEventResultModel.bankName} ${cardEventResultModel.cardName}",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color:Palette.kToBlack[500],
          decoration: TextDecoration.none,
        ),
      )
    );
  }
}

class CardImage extends StatelessWidget {
  const CardImage({super.key, required this.image, });
  final String image;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth:150,
      ),
      child:Image.memory(
        gaplessPlayback: true,
        base64Decode(image), 
      )
    );
  }
}




class CardRewardEvaluationTitleBar extends StatelessWidget {
  const CardRewardEvaluationTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text('截制刷 Top1',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color:Palette.kToBlack[500],
              decoration: TextDecoration.none,
            ),
          ),
          TextButton(
            onPressed:(){
              Navigator.pop(context);
            },
            child:Icon(
              Icons.cancel_outlined,
            )
          )
          
        ]
      )
    );
  }
}



class CardRewardEvaluationResultDetails extends StatelessWidget {
  const CardRewardEvaluationResultDetails({super.key, required this.cardEventResultModel});

  final CardEventResultModel cardEventResultModel;

  @override
  Widget build(BuildContext context) {

    List<CardRewardEvaluationResultDetail> detailWidgets = [];

    for(CardRewardEventResultModel cardRewardEventResultModel in cardEventResultModel.cardRewardEventResultModels){

      for(String name in cardRewardEventResultModel.evaluationEventResultModel.channelLabelMatched){
        detailWidgets.add(
          CardRewardEvaluationResultDetail(
            matchedChannelOrChannelLabelName:name, 
            cardRewardEventResultModel:cardRewardEventResultModel
          )
        );
      }
      
      for(String name in cardRewardEventResultModel.evaluationEventResultModel.channelMatched){

        
        detailWidgets.add(
          CardRewardEvaluationResultDetail(
            matchedChannelOrChannelLabelName:name, 
            cardRewardEventResultModel:cardRewardEventResultModel
          )
       );
      }
    }

    return Container(
      child:Column(
        children:[
          for(CardRewardEvaluationResultDetail widget in detailWidgets)
            widget
        ]
      )
    );
    
  }
}

class CardRewardEvaluationResultDetail extends StatelessWidget {
  const CardRewardEvaluationResultDetail({super.key, 
    required this.cardRewardEventResultModel, 
    required this.matchedChannelOrChannelLabelName
  });

  final CardRewardEventResultModel cardRewardEventResultModel;
  final String matchedChannelOrChannelLabelName;

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.all(10),
      child:Container(
        padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Palette.kToBlack[0],
            borderRadius: BorderRadius.circular(20),
          ),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            FeedbackGetPercentage(evaluationEventResultModel:cardRewardEventResultModel.evaluationEventResultModel),
            SizedBox(width:10),
            Expanded(
              child:CardRewardEvaluationContent(
                cardRewardEventResultModel: cardRewardEventResultModel, 
                matchedChannelOrChannelLabelName: matchedChannelOrChannelLabelName, 
              ),
            )
            
          ]
        )
      )
    );
  }
}


class CardRewardEvaluationContent extends StatelessWidget {
  const CardRewardEvaluationContent({super.key, required this.cardRewardEventResultModel, required this.matchedChannelOrChannelLabelName});

  final CardRewardEventResultModel cardRewardEventResultModel;
  final String matchedChannelOrChannelLabelName;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          MatchedChannelOrChannelLabelName(name:matchedChannelOrChannelLabelName),
          SizedBox(height: 5,),
          FeedbackGetReturn(cardRewardEventResultModel: cardRewardEventResultModel,),
          SizedBox(height: 10,),
          CardRewardDurationDate(cardRewardEventResultModel:cardRewardEventResultModel),
          CardRewardNameDetail(cardRewardEventResultModel:cardRewardEventResultModel),
          SizedBox(height: 10,),
          CardRewardTag(cardRewardEventResultModel: cardRewardEventResultModel,),
        ]
      )
    );
  }
}

class CardRewardNameDetail extends StatelessWidget {
  const CardRewardNameDetail({super.key, required this.cardRewardEventResultModel});
  
  final CardRewardEventResultModel cardRewardEventResultModel;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child:Text(cardRewardEventResultModel.cardRewardName,
        style: TextStyle(
          fontSize: 14,
          color: Palette.kToBlack[200],
          decoration: TextDecoration.none,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

class FeedbackGetReturn extends StatelessWidget {
  const FeedbackGetReturn({super.key, required this.cardRewardEventResultModel});

  final CardRewardEventResultModel cardRewardEventResultModel;

  @override
  Widget build(BuildContext context) {
    int cost = cardRewardEventResultModel.evaluationEventResultModel.cost;
    double getReturn = cardRewardEventResultModel.evaluationEventResultModel.getReturn;
    return Container(
      child:Text('消費\$$cost, 省 \$$getReturn',
        style: TextStyle(
          color:Palette.kToOrange[500],
          fontWeight: FontWeight.bold,
          fontSize: 14,
          decoration: TextDecoration.none,
        ),
      )
    );
  }
}



class MatchedChannelOrChannelLabelName extends StatelessWidget {
  const MatchedChannelOrChannelLabelName({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(name,
        style: TextStyle(
          fontSize: 16,
          color: Palette.kToBlack[500],
          decoration: TextDecoration.none,
          
        ),
      )
    );
  }
}



class FeedbackGetPercentage extends StatelessWidget {
  const FeedbackGetPercentage({super.key, required this.evaluationEventResultModel});
  
  final EvaluationEventResultModel evaluationEventResultModel;

  @override
  Widget build(BuildContext context) {


    String percentage = "";
    
    if(evaluationEventResultModel.calculateType == 0) {
      // 趴數回饋
      percentage = "${(evaluationEventResultModel.getPercentage * 100).toStringAsFixed(1)}%";
    }else {
      // 固定回饋
      percentage = "折${evaluationEventResultModel.getReturn.toStringAsFixed(0)}";
    }

    return Container(
      width:60,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Palette.kToBlack[20],
        borderRadius: BorderRadius.circular(10)
      ),
      child:FittedBox(
        child:Text('$percentage',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Palette.kToBlack[500],
            decoration: TextDecoration.none,
          ),
        )
      )
      
    );
  }
}

class CardRewardDurationDate extends StatelessWidget {
  const CardRewardDurationDate({super.key, required this.cardRewardEventResultModel,});

  final CardRewardEventResultModel cardRewardEventResultModel;

  @override
  Widget build(BuildContext context) {

    // final startDateTimeFormat = DateFormat('yyyy/MM/dd').format(cardRewardEventResultModel.cardRewardStartDate);
    final endDateTimeFormat = DateFormat('yyyy/MM/dd').format(cardRewardEventResultModel.cardRewardEndDate);
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Text('($endDateTimeFormat為止)',
            style: TextStyle(
              fontSize: 14,
              color: Palette.kToBlack[200],
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal,
            ),
          )
        ]
      )
      
    );
  }
}


class CardRewardTag extends StatelessWidget {
  const CardRewardTag({super.key, required this.cardRewardEventResultModel});

 final CardRewardEventResultModel cardRewardEventResultModel;

  @override
  Widget build(BuildContext context) {

    return Container(
      child:Row(
        children:[
          CardRewardType(rewardTypeName: cardRewardEventResultModel.rewardTypeName,),
          for (String labelName in cardRewardEventResultModel.cardRewardTaskLabelNames)
            CardRewardLabel(labelName: labelName,),
        ]
      )
    );
  }
}

class CardRewardType extends StatelessWidget {
  const CardRewardType({super.key, required this.rewardTypeName});

  final String rewardTypeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right:5, ),
      child:Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Palette.kToBlue[700]!,
        ),
        child:Container(
          padding: EdgeInsets.only(left:2,right:2),
          child:Text(rewardTypeName,
            style: TextStyle(
              color:Palette.kToBlack[0],
              fontSize: 14,
              decoration: TextDecoration.none,
            ),
          )
        ),
      )
    );
  }
}

class CardRewardLabel extends StatelessWidget {
  const CardRewardLabel({super.key, required this.labelName});

  final String labelName;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right:5, ),
      child:Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          // border: Border.all(
          //   color:Palette.kToRed[600]!,
          // ),
          borderRadius: BorderRadius.circular(20),
          color:Palette.kToYellow[600],

        ),
        child:Text(labelName,
          style: TextStyle(
            color:Palette.kToBlack[0],
            fontSize: 14,
            decoration: TextDecoration.none,
          ),
        )
      )
    );
  }
}

