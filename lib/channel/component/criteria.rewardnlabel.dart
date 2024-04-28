import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel/model/rewardtype.dart';
import 'package:pickrewardapp/channel/model/tasklabel.dart';
import 'package:pickrewardapp/channel/viewmodel/task_label.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

import 'package:pickrewardapp/channel/viewmodel/criteria.selected.dart';


class RewardTypeAndTaskLabelWidget extends StatelessWidget {
  const RewardTypeAndTaskLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color:Palette.kToBlack[0],
      ),
      padding: const EdgeInsets.all(20),

      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SizedBox(height:10),
          CardRewardTypeName(),
          SizedBox(height:10),
          CardRewardTypeItems(),
          SizedBox(height:10),
          Divider(thickness: 1,),
          SizedBox(height:10),
          TaskLabelName(),
          SizedBox(height:10),
          TaskLabelItems(),
        ]
      )
    );
  }
}



class CardRewardTypeName extends StatelessWidget {
  const CardRewardTypeName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('信用卡回饋方式',
      style:TextStyle(
        fontSize: 16,
        color:Palette.kToBlack[400],
        fontWeight: FontWeight.bold,
      )
    );
  }
}

class CardRewardTypeItems extends StatelessWidget {
  const CardRewardTypeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children:[
        CashType(),
        SizedBox(width:20),
        PointType(),
      ]
    );
  }
}


class CashType extends StatelessWidget {
  const CashType({super.key});


  @override
  Widget build(BuildContext context) {
    
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);

    return TextButton(
      onPressed: (){
        criteriaViewModel.rewardType = RewardType.cash;
      },
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
        side: MaterialStatePropertyAll(
          BorderSide(
            width:1.5,
            color: criteriaViewModel.rewardType.compareTo(RewardType.cash) == 0 ? 
              Palette.kToYellow[400]!:Palette.kToBlack[400]!,
          )
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        padding:const MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
        animationDuration:const Duration(microseconds: 0),
      ),
      child:Container(
        child:Text(RewardType.cash.name,
          style:TextStyle(
            fontSize: 14,
            color:Palette.kToBlack[400],
          ),
        ),
      ),
    );
  }
}



class PointType extends StatelessWidget {
  
  const PointType({super.key});

  @override
  Widget build(BuildContext context) {

    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    
    return TextButton(
      onPressed: (){
        criteriaViewModel.rewardType = RewardType.point;
      },
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
        side: MaterialStatePropertyAll(
          BorderSide(
            width:1.5,
            color: criteriaViewModel.rewardType.compareTo(RewardType.point) == 0 ? 
              Palette.kToYellow[400]!:Palette.kToBlack[400]!,
          )
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        padding:const MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
        animationDuration:const Duration(microseconds: 0),
      ),
      child:Text(RewardType.point.name,
        style:TextStyle(
          fontSize: 14,
          color:Palette.kToBlack[400],
        ),
      ),
    );
  }
}


class TaskLabelName extends StatelessWidget {
  const TaskLabelName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('信用卡任務篩選(可多選)',
      style:TextStyle(
        fontSize: 16,
        color:Palette.kToBlack[500],
        fontWeight: FontWeight.bold,
      )
    );
  }
}


class TaskLabelItems extends StatelessWidget {
  const TaskLabelItems({super.key});

  @override
  Widget build(BuildContext context) {

    TaskLabelViewModel taskLabelViewModel = Provider.of<TaskLabelViewModel>(context);
    
    return Container(
      child:Wrap(
        spacing:10,
        runSpacing: 5,
        children:[
          for(TaskLabelModel taskLabelModel in taskLabelViewModel.taskLabelModels)
            TaskLabelItem(taskLabelModel: taskLabelModel,),
        ]
      )
    );
  }
}

class TaskLabelItem extends StatelessWidget {
  const TaskLabelItem({super.key, required this.taskLabelModel});

  final TaskLabelModel taskLabelModel;


  @override
  Widget build(BuildContext context) {
    
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    
    bool exist = criteriaViewModel.existInitTaskLabels(taskLabelModel.label);

    if(!exist){
      criteriaViewModel.setInitTaskLabels = taskLabelModel;
    }
    
    return Container(
      child:TextButton(
        onPressed: (){
          criteriaViewModel.taskLabel = taskLabelModel;
        },
        style:ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Palette.kToBlack[0]),
          side: MaterialStatePropertyAll(
            BorderSide(
              width:1.5,
              color: !exist || criteriaViewModel.existTaskLabel(taskLabelModel.label)?
                Palette.kToYellow[400]!:Palette.kToBlack[400]!,
            )
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          padding:const MaterialStatePropertyAll(EdgeInsets.only(left:16, right:16, top:8, bottom: 8)),
          animationDuration:const Duration(microseconds: 0),
        ),
        child:Text(taskLabelModel.name,
          style:TextStyle(
            fontSize: 14,
            color:Palette.kToBlack[500],
          )
        )
      )
    );
  }
}