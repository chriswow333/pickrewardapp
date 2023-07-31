


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.channel.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.task.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.prgress.dart';
import 'package:provider/provider.dart';

class EvaluationProgressBar extends StatelessWidget {
  const EvaluationProgressBar({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);

    EvaluationRespProto? resp =  evaluationViewModel.get();
    if (resp == null) return Container();
    
    bool hasTask = resp.taskEvaluationResp.matches.length != 0 
      || resp.taskEvaluationResp.misMatches.length != 0;


    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        ChannelProgressItem(),
        if(hasTask)
          ProgressArrow(),
        if(hasTask)
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




class EvaluationProgressContent extends StatelessWidget {
  const EvaluationProgressContent({super.key, required this.rewardID});

  final String rewardID;
  @override
  Widget build(BuildContext context) {
    
    EvaluationProgressViewModel progressViewModel = Provider.of<EvaluationProgressViewModel>(context);





    return Container(
      padding: const EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          EvaluationProgressTitle(),
          SizedBox(height:20),
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


class EvaluationProgressTitle extends StatelessWidget {
  const EvaluationProgressTitle({super.key});

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


