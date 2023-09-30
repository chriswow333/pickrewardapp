



import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';
import 'package:pickrewardapp/cardreward/repository/cardreward/proto/generated/card.pbgrpc.dart';


class EvaluationItem extends StatelessWidget {
  const EvaluationItem({super.key, required this.cardRewardModel});

  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {

    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);
    bool expanded = cardRewardViewModel.getCardRewardExpandStatus(cardRewardModel.id);

    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlack[50]!,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
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
                    children:[
                      Row(
                        children:[
                          CardRewardDuration(startDate: cardRewardModel.startDate, endDate: cardRewardModel.endDate,),
                          SizedBox(width:5,),
                          EvaluationRewardType(reward: cardRewardModel.reward,),
                          SizedBox(width:5,),
                          EvaluationConstraintTypes(evaluationRespProto:cardRewardModel.evaluationRespProto,),
                        ],
                      ),
                      SizedBox(height:5),
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
  const CardRewardDuration({super.key, required this.startDate, required this.endDate});

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
          width: 2,
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
  const EvaluationConstraintTypes({super.key, required this.evaluationRespProto});

  final EvaluationRespProto evaluationRespProto;

  @override
  Widget build(BuildContext context) {

    ConstraintsEvaluationRespProto constraintProto = evaluationRespProto.constraintsEvaluationResp;
    List<ConstraintProto> constraints = constraintProto.matches;


    return Row(
      children:[
        for(ConstraintProto c in constraints)
          EvaluationConstraintType(constraintProto: c,),

      ]
    );
  }
}


class EvaluationConstraintType extends StatelessWidget {
  const EvaluationConstraintType({super.key, required this.constraintProto,});

  final ConstraintProto constraintProto;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right:5),
      child:Container(
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
          constraintProto.constraintName
        )
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
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlue[600]!,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child:Text(rewardTypeName,
        style:TextStyle(
          color:Palette.kToBlue[600],
          fontSize: 18,
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




