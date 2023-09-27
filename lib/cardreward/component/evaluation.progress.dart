


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.channel.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.eventresult.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.task.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.prgress.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';





class EvaluationProgressBar extends StatelessWidget {
  const EvaluationProgressBar({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);

    EvaluationRespProto? resp =  evaluationViewModel.get();

    if (resp == null) return Container();
    
    bool hasTask = resp.taskEvaluationResp.matches.length != 0  || resp.taskEvaluationResp.misMatches.length != 0;

    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        ChannelProgressItem(),
        if(hasTask)
          ProgressArrow(),
        if(hasTask)
          TaskProgressItem(),
        ProgressArrow(),
        EvaluateProgressItem(),
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
        // padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        // elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
          progressViewModel.get() == EvaluationProgressEnum.Evaluate ? Palette.kToBlue[600]:Palette.kToBlue[50]
        ),
        shape:MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side:BorderSide(
              width:1.0,
              color:Colors.black12,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child:Text(
        '消費方式',
        style: TextStyle(
          fontSize: 20,
          color: progressViewModel.get() == EvaluationProgressEnum.Evaluate ? Palette.kToBlue[50]:Palette.kToBlue[600],
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
        // padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        // elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
          progressViewModel.get() == EvaluationProgressEnum.Task ? Palette.kToBlue[600]:Palette.kToBlue[50]
        ),
        shape:MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side:BorderSide(
              width:1.0,
              color:Colors.black12,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child:Text(
        '任務活動',
        style: TextStyle(
          fontSize: 20,
          color: progressViewModel.get() == EvaluationProgressEnum.Task ? Palette.kToBlue[50]:Palette.kToBlue[600],
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
      // padding:EdgeInsets.only(left:10, right:10),
      child:Icon(
        Icons.double_arrow_rounded,
        color:Palette.kToBlue[100],
        size:40,
        weight: 10,
      ),
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
        // padding:MaterialStatePropertyAll(EdgeInsets.all(5)),
        // elevation:MaterialStatePropertyAll(1.0),
        backgroundColor: MaterialStatePropertyAll(
          progressViewModel.get() == EvaluationProgressEnum.Channel ? Palette.kToBlue[600]:Palette.kToBlue[50]
        ),
        shape:MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side:BorderSide(
              width:1.0,
              color:Colors.black12,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child:Text(
        '消費通路',
        style: TextStyle(
          fontSize: 20,
          color: progressViewModel.get() == EvaluationProgressEnum.Channel ? Palette.kToBlue[50]:Palette.kToBlue[600],
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
          Divider(height:20),
          EvaluationProgressTitle(),
          SizedBox(height:10),
          CardRewardEvaluationEventResult(),
          SizedBox(height:10),
          EvaluationProgressBar(),
          SizedBox(height:10),
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
          color:Palette.kToBlack[900],
          fontSize: 20,
        ),
      ),
    );
  }
}


