import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/repository/cardreward/proto/generated/card.pbgrpc.dart';
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
        // height:100,
        padding:const EdgeInsets.only(bottom: 20),
        child:TextButton(
          onPressed: (){  
            selectedViewModel.goToCardRewardItem(cardRewardModel);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            elevation:MaterialStatePropertyAll(2),
          ),
          child:Column(
            children:[
              Row(
                children:[
                  CardRewardDuration(startDate: cardRewardModel.startDate, endDate: cardRewardModel.endDate,),
                  ActivityRewardType(),
                  SizedBox(width:2),
                ]
              ),
              ActivityName(name:cardRewardModel.name),
            ]
          )
        )
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

class ActivityRewardType extends StatelessWidget {
  const ActivityRewardType({super.key,});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlue[600]!,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child:Text('一般回饋',
        style:TextStyle(
          color:Palette.kToBlue[600],
          fontSize: 12,
        ),
        maxLines: null,
      ),
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
      // height:130,
      padding:const EdgeInsets.only(bottom: 20),
      // alignment: Alignment.center,
      child:TextButton(
        onPressed: (){
          cardRewardselectedViewModel.goToCardRewardItem(cardRewardModel);
        },
        style: ButtonStyle( 
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          elevation:MaterialStatePropertyAll(2),
        ),
        child:Container(
          padding:const EdgeInsets.only(top:5),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Expanded(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Row(
                      children:[
                        CardRewardDuration(startDate: cardRewardModel.startDate, endDate: cardRewardModel.endDate,),
                        SizedBox(width:10,),
                        EvaluationRewardType(reward: cardRewardModel.reward,),
                        SizedBox(width:10,),
                        EvaluationConstraintTypes(evaluationRespProto:cardRewardModel.evaluationRespProto,),
                      ]
                    ),
                    SizedBox(height:10),
                    
                    EvaluationName(name: cardRewardModel.name,),
                    
                  ], 
                ),
              )
            ]
          )
        )
      )
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
        // fontSize: 18,
      ),
      maxLines: null,
    );
  }
}