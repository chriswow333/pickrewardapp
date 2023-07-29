

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardRewardEvaluationProgressTask extends StatelessWidget {
  const CardRewardEvaluationProgressTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top:20),
        child:Column(
          children:[
            TaskItem(),
        ]
      )
    );
  }
}



class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          TaskItemTitle(),
          TaskItemDescs(),
        ]
      )
    );
    ;
  }
}

class TaskItemTitle extends StatelessWidget {
  const TaskItemTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children:[
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStatePropertyAll(Colors.cyan[900]),
            value: true,
            onChanged: (bool? value) {
            },
          ),
          Text(
            '任務名稱任務名稱任務名稱',
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


class TaskItemDescs extends StatelessWidget {
  const TaskItemDescs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:40),
      child:Column(
        children:[
          TaskItemDesc(),
          TaskItemDesc(),

        ]
      )
    );
  }
}

class TaskItemDesc extends StatelessWidget {
  const TaskItemDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:10, left:10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          TaskItemDescName(),
          TaskItemDescDesc(),
        ]
      )
    );
  }
}

class TaskItemDescName extends StatelessWidget {
  const TaskItemDescName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        '任務名稱任務名稱任務名稱任務名稱',
        style: TextStyle(
          fontSize: 15,
          color: Colors.cyan[900],
        ),  
      )
    );
  }
}

class TaskItemDescDesc extends StatelessWidget {
  const TaskItemDescDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('優惠大比優惠大比優惠大比')
        ]
      )
    );
  }
}