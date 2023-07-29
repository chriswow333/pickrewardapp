


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.detail.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.channel.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.task.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.prgress.dart';
import 'package:provider/provider.dart';

class Evaluation extends StatelessWidget {
  const Evaluation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          EvaluationHeader(),
          EvaluationDetails(),
          EvaluationContent(),
        ],
      )
    );
  }
}





class EvaluationHeader extends StatelessWidget {
  const EvaluationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children:[
          EvaluationTypeName(),
          Flexible(
            child: EvaluationName(),
          ),
        ]
      )
    );
    
  }
}

class EvaluationName extends StatelessWidget {
  const EvaluationName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:20),
      child:Text('國內節/假日&國外最高3%回饋國內節/假日&國外最高3%回饋國內節/假日&國外最高3%回饋國內節/假日&國外最高3%回饋',
        style:TextStyle(
          color:Colors.cyan[900],
        ),
      )
    );
  }
}


class EvaluationTypeName extends StatelessWidget {
  const EvaluationTypeName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('現金回饋',
        style:TextStyle(
          color:Colors.cyan[900],
        ),
      )
    );
  }
}




class EvaluationContent extends StatelessWidget {
  const EvaluationContent({super.key});

  @override
  Widget build(BuildContext context) {
    
    EvaluationProgressViewModel progressViewModel = Provider.of<EvaluationProgressViewModel>(context);

    return Container(
      padding: const EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          EvaluationTitle(),
          EvaluationProgressBar(),
          SizedBox(height:20),
          if (progressViewModel.get() == EvaluationProgressEnum.Channel)
            EvaluationProgressChannel(),
          if (progressViewModel.get() == EvaluationProgressEnum.Task)            
            EvaluationProgressTask(),
          if (progressViewModel.get() == EvaluationProgressEnum.Evaluate)            
            EvaluationProgressEvaluate(),
        ],
      ),
    );
  }
}


class EvaluationTitle extends StatelessWidget {
  const EvaluationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('試算回饋',
        style:TextStyle(
          color:Colors.cyan[900],
          fontSize: 18,
        ),
      ),
    );
  }
}


