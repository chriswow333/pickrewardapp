


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/activity.detail.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/reward.item.toggle.dart';
import 'package:provider/provider.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:500,
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            CardActivityName(),
            CardActivityDetails(),
          ],
        ),
      ),
    );
  }
}



class CardActivityName extends StatelessWidget {
  const CardActivityName({super.key});

  @override
  Widget build(BuildContext context) {

    CardRewardSelectedViewModel cardRewardSelectedViewModel = Provider.of<CardRewardSelectedViewModel>(context);

    CardRewardModel? cardRewardModel = cardRewardSelectedViewModel.getSelectedCardRewardModel();

    if(cardRewardModel == null)return Container();

    return Container(
      child:Text(cardRewardModel.name,
        style: TextStyle(
          color:Colors.cyan[900],
          fontSize: 18,
        ),
      )
    );
  }
}


