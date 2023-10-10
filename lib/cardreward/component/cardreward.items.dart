import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.activity.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.tab.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:provider/provider.dart';



class RewardItems extends StatelessWidget {
  const RewardItems({super.key});

  @override
  Widget build(BuildContext context) {

    
    CardRewardTabViewModel cardRewardTabViewModel = Provider.of<CardRewardTabViewModel>(context);

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);

    if(evaluationViewModel.selectedEvaluationItem){
      return const EvaluationProgressContent();
    }

    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

    if (cardRewardTabViewModel.cardRewardType == CardRewardTypeEnum.activity) {
      return Container(
        padding:const EdgeInsets.only(left:5, right: 5),
        child:Wrap(
          runSpacing: 15,
          direction: Axis.horizontal, 
          children:[
            for(final c in cardRewardViewModel.activityCardRewardModels)
              ActivityItem(cardRewardModel: c,)
          ]
        )
      );

    }else if(cardRewardTabViewModel.cardRewardType == CardRewardTypeEnum.evaluation) {

      return Container(
        padding:const EdgeInsets.only(left:5, right: 5),
        child:Wrap(
          runSpacing: 15,
          direction: Axis.horizontal, 
          children:[
            for(final c in cardRewardViewModel.evaluationCardRewardModels)
              EvaluationItem(cardRewardModel: c,)
          ]
        )
      );
    }

    return Container();
  }
}



// class RewardItem extends StatelessWidget {
//   const RewardItem({super.key, required this.cardRewardModel, });
  
//   final CardRewardModel cardRewardModel;

//   @override
//   Widget build(BuildContext context) {
    
//     EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);

//     if(evaluationViewModel.selectedEvaluationItem){
//       return EvaluationProgressContent();
//     }else {
//       if (cardRewardModel.cardRewardType == CardRewardTypeEnum.activity.cardRewardType) {
//         return ActivityItem(cardRewardModel: cardRewardModel,);
//       }else if (cardRewardModel.cardRewardType == CardRewardTypeEnum.evaluation.cardRewardType){
//         return EvaluationItem(cardRewardModel: cardRewardModel,);
//       }else {
//         return Container();
//       }  
//     }

    

    
//   }
// }

