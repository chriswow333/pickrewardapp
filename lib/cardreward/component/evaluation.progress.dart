


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.prgress.dart';
import 'package:provider/provider.dart';

class EvaluationProgressBar extends StatelessWidget {
  const EvaluationProgressBar({super.key});

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
    EvaluationProgressViewModel progressViewModel = Provider.of<EvaluationProgressViewModel>(context);
    return TextButton(
      onPressed: (){
        progressViewModel.set(EvaluationProgressEnum.Evaluate);
      },
      style:ButtonStyle(
        padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
           progressViewModel.get() == EvaluationProgressEnum.Evaluate ?  Colors.cyan[900] : Colors.white,
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
          color: progressViewModel.get() == EvaluationProgressEnum.Evaluate ? Colors.cyan[50]:Colors.cyan[900],
        ),  
      )
    );
  }
}


class TaskProgressItem extends StatelessWidget {
  const TaskProgressItem({super.key});

  @override
  Widget build(BuildContext context) {
    EvaluationProgressViewModel progressViewModel = Provider.of<EvaluationProgressViewModel>(context);

    return TextButton(
      onPressed: (){
        progressViewModel.set(EvaluationProgressEnum.Task);
      },
      style:ButtonStyle(
        padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
           progressViewModel.get() == EvaluationProgressEnum.Task ?  Colors.cyan[900] : Colors.white,
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
          color: progressViewModel.get() == EvaluationProgressEnum.Task ? Colors.cyan[50]:Colors.cyan[900],
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

    EvaluationProgressViewModel progressViewModel = Provider.of<EvaluationProgressViewModel>(context);
    
    return TextButton(
      onPressed: (){
        progressViewModel.set(EvaluationProgressEnum.Channel);
      },
      style:ButtonStyle(
        padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
          progressViewModel.get() == EvaluationProgressEnum.Channel ?  Colors.cyan[900] : Colors.white,
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
          color: progressViewModel.get() == EvaluationProgressEnum.Channel ? Colors.cyan[50]:Colors.cyan[900],
        ),  
      )
    );
  }
}