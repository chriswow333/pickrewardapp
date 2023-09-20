


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.detail.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.dart';
import 'package:pickrewardapp/cardreward/repository/cardreward/proto/generated/card.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.channel.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.eventresult.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/cardreward/viewmodel/reward.item.toggle.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
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
            Row(
              children:[
                Expanded(
                  child:EvaluationHeader(cardRewardModel: cardRewardModel,),
                ),
              ],
            ),
            Divider(height:10),
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
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Row(
            children:[
              EvaluationRewardTypeName(reward: cardRewardModel.reward,),
              SizedBox(width:10),
              EvaluationConstraintTypes(evaluationRespProto:cardRewardModel.evaluationRespProto,),
            ]
          ),
          SizedBox(height:20),
          EvaluationName(name:name),
        ]
      ),
      
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




class EvaluationName extends StatelessWidget {
  const EvaluationName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding:const EdgeInsets.only(left:20),
      child:Text(name,
        style:TextStyle(
          color:Palette.kToBlack[900],
          fontSize: 18,
        ),
        maxLines: null,
      )
    );
  }
}


class EvaluationRewardTypeName extends StatelessWidget {
  const EvaluationRewardTypeName({super.key, required this.reward});
  
  
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
          fontSize: 20,
        ),
        maxLines: null,
      )
    );
  }
}



