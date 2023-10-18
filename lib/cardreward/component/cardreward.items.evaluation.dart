import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/cardreward/model/card_reward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/shared/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:provider/provider.dart';


class EvaluationItem extends StatelessWidget {
  const EvaluationItem({super.key, required this.cardRewardModel});

  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context, listen:false);
    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context, listen:false);
    
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color:Colors.white,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: Palette.kToBlue[50],
        boxShadow:[
          BoxShadow(
            color: Palette.kToBlack[200]!,
            offset: const Offset(
              1.0,
              1.0,
            ),
            blurRadius: 1.0,
          ), 
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), 
        ],
      ),
      child:TextButton(
        style:const ButtonStyle(
          splashFactory:NoSplash.splashFactory,
        ),
        onPressed: (){
          evaluationViewModel.setCardReward(cardRewardModel);
          evaluationSelectedViewModel.setCardRewardModel = cardRewardModel;

        },
        child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              child:EvaluationRewardType(reward: cardRewardModel.reward,),
            ),
            
            const SizedBox(width:10),
            Expanded(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  CardRewawrdTag(cardRewardModel:cardRewardModel),
                  EvaluationName(name: cardRewardModel.name,),
                  const SizedBox(height:5),
                  CardRewardDuration(startDateTime: cardRewardModel.startDate, endDateTime: cardRewardModel.endDate,),
                ],
              ),
            ),
            
          ],
        ),
      )
    );
  }
}




class CardRewawrdTag extends StatelessWidget {
  const CardRewawrdTag({super.key, required this.cardRewardModel});

  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(bottom:10),
      child:Row(
        children:[
          CardRewardDurationMessage(startDate: cardRewardModel.startDate, endDate: cardRewardModel.endDate,),
          EvaluationConstraintTypes(),
        ]
      )
    );
  }
}



class CardRewardDuration extends StatelessWidget {
  const CardRewardDuration({super.key, required this.startDateTime, required this.endDateTime});

  final DateTime startDateTime;
  final DateTime endDateTime;
  
  @override
  Widget build(BuildContext context) {
    
    DateFormat formatter = DateFormat('yyyy/MM/dd');

    final startDate = formatter.format(startDateTime);
    final endDate =  formatter.format(endDateTime);
    
    return Container(
      child:Text('${startDate.toString()} - ${endDate.toString()}',
        style: TextStyle(
          color: Palette.kToBlack[200],
          fontSize: 12,
        ),
      )
    );
  }
}

class CardRewardDurationMessage extends StatelessWidget {
  const CardRewardDurationMessage({super.key, required this.startDate, required this.endDate});

  final DateTime startDate;
  final DateTime endDate;
  
  @override
  Widget build(BuildContext context) {
    
    DateTime now = DateTime.now();

    String durationStatus = "";

    if (startDate.isAfter(now)) {
      durationStatus = "尚未開始";
    }else if (endDate.isBefore(now)) {
      durationStatus = "已結束";
    }else {
      return Container();
    }
  
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToRed[600]!,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child:Text(durationStatus,
        style:TextStyle(
          color:Palette.kToRed[600],
          fontSize: 12,
        ),
        maxLines: null,
      ),
    );
  }
}


class EvaluationConstraintTypes extends StatelessWidget {
  const EvaluationConstraintTypes({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel= Provider.of<EvaluationViewModel>(context);
    EvaluationResp? evaluationResp = evaluationViewModel.evaluationResp;
    if(evaluationResp == null ){
      return Container();
    }
   ConstraintsEvaluationResp constraintResp = evaluationResp.constraintsEvaluationResp;


    return Wrap(
      spacing: 5,
      children:[
        for(ConstraintsEvaluationResp_Constraint c in constraintResp.matches)
          EvaluationConstraintType(constraint: c,),
      ]
    );
  }
}


class EvaluationConstraintType extends StatelessWidget {
  const EvaluationConstraintType({super.key, required this.constraint,});

  final ConstraintsEvaluationResp_Constraint constraint;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToOrange[600]!,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child:Text(
        style:TextStyle(
        color:Palette.kToOrange[600],
        fontSize: 13,
      ),
        constraint.constraintName
      )
    );
  }
}




class EvaluationRewardType extends StatelessWidget {
  const EvaluationRewardType({super.key, required this.reward});
  
  final RewardModel reward;
  
  @override
  Widget build(BuildContext context) {
    
    int rewardType = reward.rewardType;

    String rewardTypeName = "";
    if(rewardType == 0) {
      rewardTypeName = "現金回饋";
    }else {
      rewardTypeName = reward.name;
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child:Text(rewardTypeName,
        style:TextStyle(
          color:Palette.kToBlue[600],
          fontSize: 18,
          // fontWeight: FontWeight.bold,
        ),
        maxLines: null,
      ),
    );
  }
}

class EvaluationName extends StatelessWidget {
  const EvaluationName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return  Text(name,
      style:TextStyle(
        color:Palette.kToBlack[900],
        fontSize: 20,
      ),
      maxLines: null,
    );
  }
}




