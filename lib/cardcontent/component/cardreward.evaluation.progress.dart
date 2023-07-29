


import 'package:flutter/material.dart';

class CardRewardEvaluationProgressBar extends StatelessWidget {
  const CardRewardEvaluationProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        ChannelProgressItem(),
        ProgressArrow(),
        TaskProgressItem(),
        ProgressArrow(),
        EvaluateProgressItem()
      ]
    );
  }
}

class EvaluateProgressItem extends StatelessWidget {
  const EvaluateProgressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
      },
      style:ButtonStyle(
        padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
           Colors.cyan[900]
        ),
        shape:MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side:BorderSide(
              width:0.5,
              color:Colors.black12,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child:Text(
        '消費方式',
        style: TextStyle(
          fontSize: 15,
          color: Colors.cyan[50],
        ),  
      )
    );
  }
}


class TaskProgressItem extends StatelessWidget {
  const TaskProgressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
      },
      style:ButtonStyle(
        padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
           Colors.cyan[900]
        ),
        shape:MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side:BorderSide(
              width:0.5,
              color:Colors.black12,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child:Text(
        '任務活動',
        style: TextStyle(
          fontSize: 15,
          color: Colors.cyan[50],
        ),  
      )
    );
  }
}

class ProgressArrow extends StatelessWidget {
  const ProgressArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Icon(Icons.arrow_forward),
    );
  }
}


class ChannelProgressItem extends StatelessWidget {
  const ChannelProgressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
      },
      style:ButtonStyle(
        padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
           Colors.cyan[900]
        ),
        shape:MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side:BorderSide(
              width:0.5,
              color:Colors.black12,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child:Text(
        '消費通路',
        style: TextStyle(
          fontSize: 15,
          color: Colors.cyan[50],
        ),  
      )
    );
  }
}