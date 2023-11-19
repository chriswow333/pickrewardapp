



import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/model/card_reward_type.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.tab.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class CarTab extends StatelessWidget {
  const CarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children:[
          EvaluationTabBtn(),
          ActivityTabBtn(),
        ]
      )
    );
  }
}



class EvaluationTabBtn extends StatelessWidget {
  const EvaluationTabBtn({super.key});

  @override
  Widget build(BuildContext context) {
    CardRewardTabViewModel cardRewardTabViewModel = Provider.of<CardRewardTabViewModel>(context,);

    return Container(
      width:70,
      child:TextButton(
        onPressed: (){
          cardRewardTabViewModel.changeCardRewardType = CardRewardTypeEnum.evaluation;
        },
        child:Column(
          children:[
            Row(
              children:[
                Icon(
                  Icons.monetization_on_outlined,
                  color: Palette.kToBlack[600],
                  size: 18,
                ),
                SizedBox(width:2),
                Text('回饋',
                  style:TextStyle(
                    color:Palette.kToBlack[600],
                    fontSize: 16,
                  ),
                ),    
              ]
            ),
             if(cardRewardTabViewModel.cardRewardType == CardRewardTypeEnum.evaluation)
              BottomSpot(),
          ]
        )
      )
    );
  }
}


class BottomSpot extends StatelessWidget {
  const BottomSpot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7,
      height: 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:Palette.kToYellow[300],
      ),
    
    );
  }
}

class ActivityTabBtn extends StatelessWidget {
  const ActivityTabBtn({super.key});

  @override
  Widget build(BuildContext context) {
    CardRewardTabViewModel cardRewardTabViewModel = Provider.of<CardRewardTabViewModel>(context);

    return Container(
      width:70,
      child:TextButton(
        onPressed: (){
            cardRewardTabViewModel.changeCardRewardType = CardRewardTypeEnum.activity;
        },
        child:Column(
          children:[
            Row(
              children:[
                Icon(
                  Icons.event_available_outlined,
                  color: Palette.kToBlack[600],
                  size: 18,
                ),
                SizedBox(width:2),
                Text('活動',
                  style:TextStyle(
                    color:Palette.kToBlack[600],
                    fontSize: 16,
                  ),
                ),    
              ]
            ),
            if(cardRewardTabViewModel.cardRewardType == CardRewardTypeEnum.activity)
              BottomSpot()
          ]
        )
      )
    );
    
    ;
  }
}