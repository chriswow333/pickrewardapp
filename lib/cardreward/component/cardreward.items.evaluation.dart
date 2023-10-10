import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/shared/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:provider/provider.dart';


class EvaluationItem extends StatelessWidget {
  const EvaluationItem({super.key, required this.cardRewardModel});

  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {

    
    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context, listen:false);
    evaluationViewModel.fetchEvaluationResp(cardRewardModel.id);

    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

    // bool expanded = cardRewardViewModel.getCardRewardExpandStatus(cardRewardModel.id);
    bool expanded = true;

    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color:expanded?Palette.kToBlack[50]!:Colors.white,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color:expanded?null: Palette.kToBlue[50],
        boxShadow: expanded?null:[
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
      child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Expanded(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                TextButton(
                  style:const ButtonStyle(
                    splashFactory:NoSplash.splashFactory,
                  ),
                  onPressed: (){
                    cardRewardViewModel.toggleCardReward(cardRewardModel.id);
                  },
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Row(
                        children:[
                          EvaluationRewardType(reward: cardRewardModel.reward,),
                          SizedBox(width:5),
                          CardRewardDurationMessage(startDate: cardRewardModel.startDate, endDate: cardRewardModel.endDate,),
                          SizedBox(width:5),
                          EvaluationConstraintTypes(),
                        ],
                      ),
                      SizedBox(height:5),
                      CardRewardDuration(startDateTime: cardRewardModel.startDate, endDateTime: cardRewardModel.endDate,),
                      SizedBox(height:10),
                      EvaluationName(name: cardRewardModel.name,),
                    ],
                  ),
                ),
                if(expanded)
                  EvaluationProgressContent(cardRewardModel: cardRewardModel),
              ], 
            ),
          )
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

  // final EvaluationRespProto evaluationRespProto;

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel= Provider.of<EvaluationViewModel>(context);
    EvaluationResp? evaluationResp = evaluationViewModel.evaluationResp;
    if(evaluationResp == null ){
      return Container();
    }
   ConstraintsEvaluationResp constraintResp = evaluationResp.constraintsEvaluationResp;

    // ConstraintsEvaluationRespProto constraintProto = evaluationRespProto.constraintsEvaluationResp;
    // List<ConstraintProto> constraints = constraintProto.matches;

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
      rewardTypeName = reward.name + "回饋";
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child:Text(rewardTypeName,
        style:TextStyle(
          color:Palette.kToBlue[600],
          fontSize: 18,
          fontWeight: FontWeight.bold,
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




