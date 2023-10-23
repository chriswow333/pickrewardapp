

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/model/card_reward.dart';
import 'package:pickrewardapp/shared/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';



class CardRewardEvaluationTask extends StatelessWidget {
  const CardRewardEvaluationTask({super.key});

  @override
  Widget build(BuildContext context) {
    
    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color:Palette.kToBlack[50]!,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          TaskName(),
          for(TaskModel t in evaluationViewModel.cardRewardModel!.tasks)
            TaskItem(taskModel:t),
        ]  
      )
    );
  }
}


class TaskName extends StatelessWidget {
  const TaskName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('任務活動',
    style:TextStyle(
        color: Palette.kToBlack[600],
        fontSize: 18,
      ),
    );
  }
}

class TaskItem extends StatefulWidget {
  const TaskItem({super.key, required this.taskModel});

  final TaskModel taskModel;

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {

  bool expandedDetail = false;

  callbackExpanded(){
    setState(() {
      expandedDetail = !expandedDetail;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<DescriptionModel> descItems = widget.taskModel.descriptions;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          TaskItemTitle(taskModel: widget.taskModel, callbackExpanded: callbackExpanded, expandedDetail: expandedDetail,),
          if(expandedDetail)
            TaskItemDescriptions(descItems: descItems,),
        ]
      )
    );
  }
}


class TaskItemTitle extends StatelessWidget {

  const TaskItemTitle({super.key, required this.callbackExpanded, required this.taskModel, required this.expandedDetail});

  final TaskModel taskModel;
  final Function callbackExpanded;
  final bool expandedDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:TextButton(
        style:const ButtonStyle(
         splashFactory:NoSplash.splashFactory,
        ),
        onPressed: (){
          callbackExpanded();
        },
        child:Row(
          children:[
            Container(
              padding:EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                border: Border.all(
                  color: Palette.kToRed[600]!,
                ),
              ),
              child:Text(taskModel.shortName,
                style: TextStyle(
                  color: Palette.kToRed[600]!,
                ),
              )
            ),
            SizedBox(width:10),
            Expanded(
              child:Text(taskModel.name,
                style: TextStyle(
                  fontSize: 18,
                  color: Palette.kToBlack[900],
                ),  
              ),
            )
          ]
        )
      ),
    ); 
  }
}



class TaskItemDescriptions extends StatelessWidget {
  const TaskItemDescriptions({super.key, required this.descItems});
  final List<DescriptionModel> descItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:5),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(DescriptionModel d in descItems)
            TaskItemDesc(desc:d),
        ]
      )
    );
  }
}


class TaskItemDesc extends StatelessWidget {
  const TaskItemDesc({super.key, required this.desc,});

  final DescriptionModel desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          TaskItemDescName(name:desc.name),
          TaskItemDescDesc(desc:desc.desc),
        ]
      )
    );
  }
}

class TaskItemDescName extends StatelessWidget {
  const TaskItemDescName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(name,
        style: TextStyle(
          fontSize: 15,
          color: Palette.kToBlack[900],
        ),  
      )
    );
  }
}

class TaskItemDescDesc extends StatelessWidget {
  const TaskItemDescDesc({super.key, required this.desc});
  final List<String> desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(String d in desc)
            Text(d,
              style: TextStyle(
              fontSize: 13,
              color: Palette.kToBlack[500],
            ),  
          )
        ]
      )
    );
  }
}