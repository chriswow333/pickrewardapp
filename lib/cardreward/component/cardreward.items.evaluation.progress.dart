


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.channel.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.evaluate.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.task.dart';
import 'package:pickrewardapp/cardreward/model/card_reward.dart';
import 'package:pickrewardapp/cardreward/model/evaluation_progress.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';
import 'package:pickrewardapp/shared/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';





class EvaluationProgressContent extends StatelessWidget {
  const EvaluationProgressContent({super.key,});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left:10, right:10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardRewardEvaluationProgress(),
          SizedBox(height:25),
          CardRewardEvaluationDetails(),
        ],
      ),
    );
  }
}


class CardRewardEvaluationProgress extends StatefulWidget {
  const CardRewardEvaluationProgress({super.key,});

  @override
  State<CardRewardEvaluationProgress> createState() => _CardRewardEvaluationProgressState();
}

class _CardRewardEvaluationProgressState extends State<CardRewardEvaluationProgress> {

  EvaluationProgressEnum _progress = EvaluationProgressEnum.Channel;

  void changeEvaluationProgress(EvaluationProgressEnum newProgress) {

    if(_progress == newProgress)return;
    setState(() {
      _progress = newProgress;
    });
  }

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        CardRewardName(),
        SizedBox(height:10),
        EvaluationProgressTitle(),
        SizedBox(height:10),
        EvaluationProgressBar(changeEvaluationProgress:changeEvaluationProgress, progress:_progress),
        SizedBox(height:10),
        if (_progress == EvaluationProgressEnum.Channel)
          EvaluationProgressChannel(),
        if (_progress == EvaluationProgressEnum.Task)            
          CardRewardEvaluationTask(),
        if (_progress == EvaluationProgressEnum.Evaluate)            
          EvaluationProgressEvaluate(),
      ]
    );
  }
}

class CardRewardName extends StatelessWidget {
  const CardRewardName({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);
    CardRewardModel? cardRewardModel = evaluationViewModel.cardRewardModel;
    if (cardRewardModel == null)return Container();

    return Text(cardRewardModel.name,
      style:TextStyle(
        color:Palette.kToBlack[900],
        overflow: TextOverflow.clip,
        fontSize: 20,
      ),
    );
  }
}


class CardRewardEvaluationDetails extends StatefulWidget {
  const CardRewardEvaluationDetails({super.key,});

  @override
  State<CardRewardEvaluationDetails> createState() => _CardRewardEvaluationDetailsState();
}

class _CardRewardEvaluationDetailsState extends State<CardRewardEvaluationDetails> {


  bool expanded = true;

  void toggleExpanded(){
    setState(() {
      expanded = !expanded;
    });
  }

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);
    CardRewardModel? cardRewardModel = evaluationViewModel.cardRewardModel;

    if(cardRewardModel == null)return Container();


    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardRewardEvaluationDetailTitle(expanded:expanded, toggleExpanded: toggleExpanded,),
          if(expanded)
            for (final c in cardRewardModel.descriptions) 
              CardRewradEvaluationDetail(cardRewardDescModel: c,),
        ],
      ),
    );
  }
}


class CardRewardEvaluationDetailTitle extends StatelessWidget {

  const CardRewardEvaluationDetailTitle({super.key, required this.expanded, required this.toggleExpanded});
  final bool expanded;
  final VoidCallback toggleExpanded; 

  @override
  Widget build(BuildContext context) {

    return Container(
      child:TextButton(
        style:const ButtonStyle(
          padding:MaterialStatePropertyAll(EdgeInsets.all(0)),
          splashFactory:NoSplash.splashFactory,
          side:MaterialStatePropertyAll(BorderSide.none),
        ),
        onPressed: (){
          toggleExpanded();
        },
        child:Row(
          children:[
            Icon(
              expanded ? Icons.arrow_drop_down_rounded:Icons.arrow_right_rounded,
              color: Palette.kToBlack[600],
            ),
            Text('詳細說明',
              style:TextStyle(
                color:Palette.kToBlack[900],
                overflow: TextOverflow.clip,
                fontSize: 20,
              ),
            )
          ]
        )
        
      ),
      
    );
  }
}


class CardRewradEvaluationDetail extends StatelessWidget {
  const CardRewradEvaluationDetail({super.key, required this.cardRewardDescModel});

  final DescriptionModel cardRewardDescModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardRewardEvaluationDetailName(name:cardRewardDescModel.name),
          CardRewardEvaluationDetailDescItems(desc:cardRewardDescModel.desc),
        ]
      ),
    );
  }
}

class CardRewardEvaluationDetailName extends StatelessWidget {
  const CardRewardEvaluationDetailName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(name,
        style:TextStyle(
          color:Palette.kToBlack[900],
          overflow: TextOverflow.clip,
        ),
      )
    );
  }
}


class CardRewardEvaluationDetailDescItems extends StatelessWidget {
  const CardRewardEvaluationDetailDescItems({super.key, required this.desc});
  final List<String> desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top:10, left:10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for (final d in desc) 
            CardRewardEvaluationDetailDescItem(desc:d,),
        ]
      )
    );
  }
}


class CardRewardEvaluationDetailDescItem extends StatelessWidget {
  const CardRewardEvaluationDetailDescItem({super.key, required this.desc});
  final String desc;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const EdgeInsets.only(top:5),
      child:Text(desc,
        style:TextStyle(
          color:Palette.kToBlack[900],
          overflow: TextOverflow.clip,
        ),
      )
    );
  }
}




class EvaluationProgressBar extends StatelessWidget {
  const EvaluationProgressBar({super.key, required this.changeEvaluationProgress, required this.progress});

  final Function changeEvaluationProgress;
  final EvaluationProgressEnum progress;

  @override
  Widget build(BuildContext context) {


    

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);
    EvaluationResp? evaluationResp =  evaluationViewModel.evaluationResp;

    if (evaluationResp == null) return Container();

    CardRewardModel? cardRewardModel = evaluationViewModel.cardRewardModel;
    bool hasTask = false;
    if(cardRewardModel != null &&cardRewardModel!.tasks.length > 0) {
      hasTask = true;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
        ChannelProgressItem(changeEvaluationProgress: changeEvaluationProgress, progress:progress,),
        if(hasTask)
          ProgressArrow(),
        if(hasTask)
          TaskProgressItem(changeEvaluationProgress: changeEvaluationProgress, progress:progress,),
        ProgressArrow(),
        EvaluateProgressItem(changeEvaluationProgress: changeEvaluationProgress, progress:progress,),
      ]
    );
  }
}

class EvaluateProgressItem extends StatelessWidget {
  const EvaluateProgressItem({super.key, required this.changeEvaluationProgress, required this.progress});
  
  final Function changeEvaluationProgress;
  final EvaluationProgressEnum progress;

  @override
  Widget build(BuildContext context) {

    
    return TextButton(
      onPressed: (){
        changeEvaluationProgress(EvaluationProgressEnum.Evaluate);
      },
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          progress == EvaluationProgressEnum.Evaluate ? Palette.kToBlue[600]:Palette.kToBlue[50]
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
          // fontSize: 20,
          color: progress == EvaluationProgressEnum.Evaluate ? Palette.kToBlue[50]:Palette.kToBlue[600],
        ),  
      )
    );
  }
}


class TaskProgressItem extends StatelessWidget {
  const TaskProgressItem({super.key, required this.changeEvaluationProgress, required this.progress});

  final Function changeEvaluationProgress;
  final EvaluationProgressEnum progress;

  @override
  Widget build(BuildContext context) {

    return TextButton(
      onPressed: (){
        changeEvaluationProgress(EvaluationProgressEnum.Task);
      },
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          progress == EvaluationProgressEnum.Task ? Palette.kToBlue[600]:Palette.kToBlue[50]
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
          // fontSize: 20,
          color: progress == EvaluationProgressEnum.Task ? Palette.kToBlue[50]:Palette.kToBlue[600],
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
      padding:EdgeInsets.only(left:10, right:10),
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
  const ChannelProgressItem({super.key, required this.changeEvaluationProgress, required this.progress });

    final Function changeEvaluationProgress;
    final EvaluationProgressEnum progress;


  @override
  Widget build(BuildContext context) {

    return TextButton(
      onPressed: (){
        changeEvaluationProgress(EvaluationProgressEnum.Channel);
      },
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          progress == EvaluationProgressEnum.Channel ? Palette.kToBlue[600]:Palette.kToBlue[50]
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
          // fontSize: 18,
          color: progress == EvaluationProgressEnum.Channel ? Palette.kToBlue[50]:Palette.kToBlue[600],
        ),  
      )
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
          fontSize: 16,
        ),
      ),
    );
  }
}


