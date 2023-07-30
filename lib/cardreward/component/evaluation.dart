


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.detail.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/reward.item.toggle.dart';
import 'package:pickrewardapp/shared/viewmodel/reward.type.dart';
import 'package:provider/provider.dart';

class Evaluation extends StatelessWidget {
  const Evaluation({super.key});

  @override
  Widget build(BuildContext context) {

    CardRewardSelectedViewModel cardRewardSelelctedViewModel = Provider.of<CardRewardSelectedViewModel>(context);
    
    CardRewardModel? cardRewardModel = cardRewardSelelctedViewModel.getSelectedCardRewardModel();

    if (cardRewardModel == null) {
      return Container();
    }

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          EvaluationHeader(cardRewardModel: cardRewardModel,),
          CardEvaluationDetails(cardRewardModel: cardRewardModel,),
          EvaluationProgressContent(),
        ],
      )
    );
  }
}





class EvaluationHeader extends StatelessWidget {
  const EvaluationHeader({super.key, required this.cardRewardModel});

  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {

    int rewardType = cardRewardModel.rewardType;
    String name = cardRewardModel.name;


    return Container(
      child:Row(
        children:[
          EvaluationRewardTypeName(rewardType: rewardType,),
          Flexible(
            child: EvaluationName(name:name),
          ),
        ]
      )
    );
    
  }
}

class EvaluationName extends StatelessWidget {
  const EvaluationName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:20),
      child:Text(name,
        style:TextStyle(
          color:Colors.cyan[900],
          fontSize: 18,
        ),
      )
    );
  }
}


class EvaluationRewardTypeName extends StatelessWidget {
  const EvaluationRewardTypeName({super.key, required this.rewardType});
  final int rewardType;
  @override
  Widget build(BuildContext context) {

    String rewardTypeName = RewardTypeName.get(rewardType);

    return Container(
      child:Text(rewardTypeName,
        style:TextStyle(
          color:Colors.cyan[900],
          fontSize: 18,
        ),
      )
    );
  }
}



