import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pickrewardapp/cardreward/model/card_reward.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';


class EvaluationItem extends StatelessWidget {
  const EvaluationItem({super.key, required this.cardRewardModel});

  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context, listen:false);
    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context, listen:false);
    
    return Container(
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color:Colors.white,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: Palette.kToBlack[0],
      ),
      child:TextButton(
        style:const ButtonStyle(
          splashFactory:NoSplash.splashFactory,
        ),
        onPressed: (){
          evaluationViewModel.setCardReward(cardRewardModel);
          evaluationSelectedViewModel.setCardRewardModel = cardRewardModel;
        },
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            EvaluationName(name: cardRewardModel.name,),
            CardRewardDuration(startDateTime: cardRewardModel.startDate, endDateTime: cardRewardModel.endDate,),
            CardRewardTask(cardRewardModel: cardRewardModel,),
            Divider(),
            CardRewardDescriptions(cardRewardModel: cardRewardModel,),
          ],
        ),
      ),
    );
  }
}


class CardRewardDescriptions extends StatelessWidget {
  const CardRewardDescriptions({super.key, required this.cardRewardModel});
  final CardRewardModel cardRewardModel;
  @override
  Widget build(BuildContext context) {
    cardRewardModel.descriptions;
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(DescriptionModel descriptionModel in cardRewardModel.descriptions)
            CardRewardDescription(descriptionModel: descriptionModel,),
        ]
      )
    );
  }

}

class CardRewardDescription extends StatelessWidget {
  const CardRewardDescription({super.key, required this.descriptionModel});

  final DescriptionModel descriptionModel;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Container(
            child:Text('${descriptionModel.name}',
              style: TextStyle(
                fontSize:18,
              ),
            ),
          ),
          for(String d in descriptionModel.desc)
            Container(
              child:Text('${d}',
                style:TextStyle(
                ),
              ),
            ),
        ]
      )
    );
  }
}


class CardRewardTask extends StatelessWidget {
  const CardRewardTask({super.key, required this.cardRewardModel});

  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('活動任務',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          TaskItems(tasks:cardRewardModel.tasks)
        ]
      )
    );
  }
}


class TaskItems extends StatelessWidget {
  const TaskItems({super.key, required this.tasks});
  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        for(TaskModel t in tasks)
          TaskItem(taskModel: t)
      ]
    );
  }
}


class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.taskModel});

  final TaskModel taskModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                color:Palette.kToRed[100]!,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child:Text('${taskModel.shortName}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color:Palette.kToRed[100],
              ),
            ),
          ),
          
          Container(
            padding:EdgeInsets.only(left:10, top:5),
            child:Text('${taskModel.name}',
              style: TextStyle(
                // fontSize: 18,
              ),
            )
          )
          
        ]
      ),
    );
  }
}

class TaskShortName extends StatelessWidget {
  const TaskShortName({super.key, required this.shortName});
  final String shortName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right:5),
      child:Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            color:Palette.kToRed[600]!,
          ),
        ),
        child:Text(shortName,
          style: TextStyle(
            fontSize: 16,
            color:Palette.kToRed[600]
          ),
        )
      )
    );
  }
}


class CardRewardDuration extends StatelessWidget {
  const CardRewardDuration({super.key, required this.startDateTime, required this.endDateTime});

  final DateTime startDateTime;
  final DateTime endDateTime;
  
  @override
  Widget build(BuildContext context) {
    
    DateFormat formatter = DateFormat('yyyy/MM/dd');

    final startDate = formatter.format(startDateTime);
    final endDate =  formatter.format(endDateTime);
    
    return Container(
      padding: EdgeInsets.only(top:20),
      child:Row(
        children:[

            Text('活動期間',
              style: TextStyle(
                color: Palette.kToBlack[500],
                fontSize: 18,
              ),
            ),
            SizedBox(width:20),
            Container(
              child:Text('${startDate.toString()} - ${endDate.toString()}',
                style: TextStyle(
                  color: Palette.kToBlack[500],
                  fontSize: 16,
                ),
              )
            )
          
        ]
      )
    );
    ;
  }
}

class CardRewardDurationMessage extends StatelessWidget {
  const CardRewardDurationMessage({super.key, required this.startDate, required this.endDate});

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
          width: 1,
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


// class EvaluationConstraintTypes extends StatelessWidget {
//   const EvaluationConstraintTypes({super.key});

//   @override
//   Widget build(BuildContext context) {

//     EvaluationViewModel evaluationViewModel= Provider.of<EvaluationViewModel>(context);
//     EvaluationResp? evaluationResp = evaluationViewModel.evaluationResp;
//     if(evaluationResp == null ){
//       return Container();
//     }
//    ConstraintsEvaluationResp constraintResp = evaluationResp.constraintsEvaluationResp;


//     return Wrap(
//       spacing: 5,
//       children:[
//         for(ConstraintsEvaluationResp_Constraint c in constraintResp.matches)
//           EvaluationConstraintType(constraint: c,),
//       ]
//     );
//   }
// }


// class EvaluationConstraintType extends StatelessWidget {
//   const EvaluationConstraintType({super.key, required this.constraint,});

//   final ConstraintsEvaluationResp_Constraint constraint;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(5.0),
//       decoration: BoxDecoration(
//         border: Border.all(
//           color:Palette.kToOrange[600]!,
//           width: 2,
//         ),
//         borderRadius: BorderRadius.circular(12.0),
//       ),
//       child:Text(
//         style:TextStyle(
//         color:Palette.kToOrange[600],
//         fontSize: 13,
//       ),
//         constraint.constraintName
//       )
//     );
//   }
// }




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
      rewardTypeName = reward.name;
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child:Text(rewardTypeName,
        style:TextStyle(
          color:Palette.kToBlack[600],
          fontSize: 14,
          // fontWeight: FontWeight.bold,
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
    return Container(
      child:Text(name,
        style:TextStyle(
          color:Palette.kToBlack[900],
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        maxLines: null,
      )
    );
  }
}




