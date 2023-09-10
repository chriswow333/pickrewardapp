import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/reward.item.toggle.dart';
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


class ActivityItem extends StatelessWidget {
  const ActivityItem({super.key, required this.cardRewardModel});

    final CardRewardModel cardRewardModel;


  @override
  Widget build(BuildContext context) {

    CardRewardSelectedViewModel selectedViewModel = Provider.of<CardRewardSelectedViewModel>(context);

    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child:Container(
        height:100,
        padding:const EdgeInsets.only(bottom: 20),
        child:TextButton(
          onPressed: (){  
            selectedViewModel.goToCardRewardItem(cardRewardModel);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            elevation:MaterialStatePropertyAll(2),
          ),
          child:ActivityName(name:cardRewardModel.name),
        )
      )
    );    
  }
}

class ActivityName extends StatelessWidget {
  const ActivityName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Text(name,
        style:TextStyle(
          color:Palette.kToBlack[900],
          fontSize: 20,
        ),
      ),
    );
  }
}


class EvaluationItem extends StatelessWidget {
  const EvaluationItem({super.key, required this.cardRewardModel});


  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {

    CardRewardSelectedViewModel cardRewardselectedViewModel = Provider.of<CardRewardSelectedViewModel>(context);
    return Container(
      height:100,
      padding:const EdgeInsets.only(bottom: 20),
      child:TextButton(
        onPressed: (){
          cardRewardselectedViewModel.goToCardRewardItem(cardRewardModel);
        },
        style: ButtonStyle( 
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          elevation:MaterialStatePropertyAll(2),
        ),
        child:Container(
          child:Row(
            children:[
              EvaluationRewardType(reward: cardRewardModel.reward,),
              SizedBox(width:5,),
              EvaluationName(name: cardRewardModel.name,),
            ]
          )
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
      rewardTypeName = reward.name + " 回饋";
    }
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 200,
      ),
      child:Text(rewardTypeName,
        style:TextStyle(
          color:Palette.kToBlack[900],
          fontSize: 20,
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
    return  Expanded(
      child:Text(name,
          style:TextStyle(
            color:Palette.kToBlack[900],
          ),
          maxLines: null,
      )
    );
  }
}