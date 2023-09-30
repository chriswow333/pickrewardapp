import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.activity.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.dart';
import 'package:pickrewardapp/cardreward/repository/cardreward/proto/generated/card.pbgrpc.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';


class RewardItems extends StatelessWidget {
  const RewardItems({super.key});

  @override
  Widget build(BuildContext context) {
              
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);
    
    List<CardRewardModel> cardRewardModels = cardRewardViewModel.get();

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(final c in cardRewardModels)
            RewardItem(cardRewardModel: c,),
        ]
      ),
    );
  }
}

class RewardItem extends StatelessWidget {
  const RewardItem({super.key, required this.cardRewardModel, });
  
  final CardRewardModel cardRewardModel;


  @override
  Widget build(BuildContext context) {

    if (cardRewardModel.cardRewardType == 0) {
      return ActivityItem(cardRewardModel: cardRewardModel,);
    }else if (cardRewardModel.cardRewardType == 1){
      return EvaluationItem(cardRewardModel: cardRewardModel,);
    }else {
      return Container();
    }
  }
}

