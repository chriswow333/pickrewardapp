

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class EvaluationProgressTask extends StatelessWidget {
  const EvaluationProgressTask({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);
    EvaluationRespProto? resp = evaluationViewModel.get();
    if (resp == null) return Container();

    TaskEvaluationRespProto taskResp = resp.taskEvaluationResp;
      
    List<TaskProto> matches = taskResp.matches;

    return Container(
      height:350,
      child:SingleChildScrollView(
        child:Column(
          children:[
            for(TaskProto t in matches)
              TaskItem(task:t),
          ]  
        )
      ),
    );
  }
}


class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.task});

  final TaskProto task;
  
  @override
  Widget build(BuildContext context) {

    List<TaskDescriptionProto> descItems = task.descriptions;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          TaskItemTitle(name:task.name, id:task.id),
          TaskItemDescriptions(descItems: descItems,),
        ]
      )
    );
  }
}

class TaskItemTitle extends StatelessWidget {
  const TaskItemTitle({super.key, required this.name, required this.id});

  final String name;
  final String id;

  @override
  Widget build(BuildContext context) {

    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);

    return Container(
      child:TextButton(
        style:const ButtonStyle(
         splashFactory:NoSplash.splashFactory,
        ),
        onPressed: (){
          evaluationSelectedViewModel.setTaskID(id);
        },
        child:Row(
          children:[
            Checkbox(
              checkColor: Colors.white,
              fillColor: evaluationSelectedViewModel.hasTaskID(id)?
                MaterialStatePropertyAll(Palette.kToBlue[600]):MaterialStatePropertyAll(Palette.kToBlack[600]),
              value: evaluationSelectedViewModel.hasTaskID(id),
              onChanged: (bool? value) {},
            ),
            Flexible(
              child: Text(name,
                style: TextStyle(
                  fontSize: 18,
                  color: Palette.kToBlack[900],
                ),  
              ),
            ),
          ]
        )
      ),
    ); 
  }
}


class TaskItemDescriptions extends StatelessWidget {
  const TaskItemDescriptions({super.key, required this.descItems});

  final List<TaskDescriptionProto> descItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:55),
      child:Column(
        children:[
          for(TaskDescriptionProto d in descItems)
            TaskItemDesc(desc:d),
        ]
      )
    );
  }
}

class TaskItemDesc extends StatelessWidget {
  const TaskItemDesc({super.key, required this.desc});

  final TaskDescriptionProto desc;
  
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
      child:
      Text(name,
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
      // padding:const EdgeInsets.only(left:5),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(String d in desc)
            Text(d,
              style: TextStyle(
              fontSize: 15,
              color: Colors.cyan[900],
            ),  
          )
        ]
      )
    );
  }
}