

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardcontent/component/cardreward.evaluation.progress.channel.dart';
import 'package:pickrewardapp/cardcontent/component/cardreward.evaluation.progress.dart';
import 'package:pickrewardapp/cardcontent/component/cardreward.evaluation.progress.evaluate.dart';
import 'package:pickrewardapp/cardcontent/component/cardreward.evaluation.progress.evaluate.pay.dart';
import 'package:pickrewardapp/cardcontent/component/cardreward.evaluation.progress.task.dart';

class CardRewardEvaluation extends StatelessWidget {
  const CardRewardEvaluation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardRewardEvaluationTitle(),
          CardRewardEvaluationProgressBar(),
          CardRewardEvaluationProgressChannel(),
          CardRewardEvaluationProgressTask(),
          CardRewardEvaluationProgressEvaluate(),
        ],
      ),
    );
  }
}


class CardRewardEvaluationTitle extends StatelessWidget {
  const CardRewardEvaluationTitle({super.key});

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


