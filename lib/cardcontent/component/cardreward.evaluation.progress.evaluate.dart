

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardcontent/component/cardreward.evaluation.progress.evaluate.cost.dart';
import 'package:pickrewardapp/cardcontent/component/cardreward.evaluation.progress.evaluate.costdate.dart';
import 'package:pickrewardapp/cardcontent/component/cardreward.evaluation.progress.evaluate.pay.dart';

class CardRewardEvaluationProgressEvaluate extends StatelessWidget {
  const CardRewardEvaluationProgressEvaluate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CardRewardEvaluationProgressPay(),
        CardRewardEvaluationProgressCost(),
        CardRewardEvaluationProgressCostDate(),
      ]
    );
  }
}