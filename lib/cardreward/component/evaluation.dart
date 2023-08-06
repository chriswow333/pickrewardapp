


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.detail.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.channel.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.eventresult.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/cardreward/viewmodel/reward.item.toggle.dart';
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
      child:MultiProvider(
        providers: [
          ChangeNotifierProvider<EvaluationViewModel>(create:(_)=>EvaluationViewModel(cardRewardModel.id)),
          ChangeNotifierProvider<EvaluationChannelCategoryViewModel>(create:(_)=>EvaluationChannelCategoryViewModel()),
          ChangeNotifierProvider<EvaluationSelectedViewModel>(create:(_)=>EvaluationSelectedViewModel(cardRewardModel:cardRewardModel)),
          ChangeNotifierProvider<EvaluationEventResultRespViewModel>(create:(_)=>EvaluationEventResultRespViewModel()),
        ],
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            EvaluationHeader(cardRewardModel: cardRewardModel,),
            CardEvaluationDetails(cardRewardModel: cardRewardModel,),
            EvaluationProgressContent(rewardID: cardRewardModel.id,),
          ],
        )
      )
      
    );
  }
}





class EvaluationHeader extends StatelessWidget {
  const EvaluationHeader({super.key, required this.cardRewardModel});

  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {

    String name = cardRewardModel.name;
    return Container(
      child:Row(
        children:[
          EvaluationRewardTypeName(cardRewardTypeEvaluationResp: cardRewardModel.cardRewardTypeEvaluationResp,),
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
  const EvaluationRewardTypeName({super.key, required this.cardRewardTypeEvaluationResp});
  
  
    final CardRewardTypeEvaluationResp cardRewardTypeEvaluationResp;

  @override
  Widget build(BuildContext context) {

    String name = "";
    if (cardRewardTypeEvaluationResp.reward.rewardType == 1) {
      name = cardRewardTypeEvaluationResp.reward.rewardName;
    } else if (cardRewardTypeEvaluationResp.reward.rewardType == 2) {
      name = cardRewardTypeEvaluationResp.point.pointName;
    }
    
    return Container(
      child:Text(name,
        style:TextStyle(
          color:Colors.cyan[900],
          fontSize: 18,
        ),
      )
    );
  }
}



