



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

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);

    bool selectedEvaluation = evaluationViewModel.selectedEvaluationItem;

    if(selectedEvaluation) {
      return BackToRewardItemsBtn();
    }else {
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
}


class BackToRewardItemsBtn extends StatelessWidget {
  const BackToRewardItemsBtn({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);
    return TextButton(
      onPressed: (){
        evaluationViewModel.backToCardRewardItems();
      },
      child:Row(
        children:[
          Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Palette.kToBlack[600],
            size: 18,
          ),
          SizedBox(width:2),
          Text('返回列表',
            style:TextStyle(
              color:Palette.kToBlack[600],
              fontSize: 16,
            ),
          ),    
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
              BottomLine(),
          ]
        )
      )
    );
  }
}


class BottomLine extends StatelessWidget {
  const BottomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlack[400]!, 
          // width: 10,
        ),
        color:Palette.kToBlack[400],
        
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
              BottomLine()
          ]
        )
      )
    );
    
    ;
  }
}