


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/reward.item.toggle.dart';
import 'package:provider/provider.dart';

class RewardItems extends StatelessWidget {
  const RewardItems({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          RewardItem(rewardID: '', rewardType: 0,),
          RewardItem(rewardID: '', rewardType: 1,),
        ]
      ),
    );
  }
}

class RewardItem extends StatelessWidget {
  const RewardItem({super.key, required this.rewardID, required this.rewardType});
  
  final String rewardID;
  final int rewardType;
  @override
  Widget build(BuildContext context) {

    if (rewardType == 0) {
      return EvaluationItem();
    }else if (rewardType == 1){
      return ActivityItem();
    }else {
      return Container();
    }
    
  }
}


class ActivityItem extends StatelessWidget {
  const ActivityItem({super.key});

  @override
  Widget build(BuildContext context) {

    final String rewardID = "";
    final int rewardType = 1; 
    
    CardRewardToggleViewModel toggleViewModel = Provider.of<CardRewardToggleViewModel>(context);

    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child:Container(
        height:100,
        padding:const EdgeInsets.only(bottom: 20),
        child:TextButton(
          onPressed: (){  
            toggleViewModel.goToItem(rewardType, rewardID);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            elevation:MaterialStatePropertyAll(2),
          ),
          child:ActivityName(),
        )
      )
    );    
  }
}

class ActivityName extends StatelessWidget {
  const ActivityName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Text('全球購物保障, 最高享50萬',
        style:TextStyle(
          color:Colors.cyan[900],
          fontSize: 20,
        ),
      ),
    );
  }
}


class EvaluationItem extends StatelessWidget {
  const EvaluationItem({super.key});

  @override
  Widget build(BuildContext context) {

    final String rewardID = "";
    final int rewardType = 0;

    CardRewardToggleViewModel innverViewModel = Provider.of<CardRewardToggleViewModel>(context);
    return Container(
      height:100,
      padding:const EdgeInsets.only(bottom: 20),
      child:TextButton(
        onPressed: (){
          innverViewModel.goToItem(rewardType, rewardID);
        },
        style: ButtonStyle( 
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          elevation:MaterialStatePropertyAll(2),
        ),
        child:Container(
          child:Row(
            children:[
              EvaluationType(),
              EvaluationName(),
            ]
          )
        )
      )
    );
  }
}

class EvaluationType extends StatelessWidget {
  const EvaluationType({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('現金回饋',
      style:TextStyle(
        color:Colors.cyan[900],
        fontSize: 20,
      ),
    );
  }
}

class EvaluationName extends StatelessWidget {
  const EvaluationName({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:270,
      padding: const EdgeInsets.only(left:20),
      child:
        Text('優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比優惠大比',
          style:TextStyle(
            color:Colors.cyan[900],
            fontSize: 18,
            overflow: TextOverflow.clip,
          ),
      )
    );
  }
}