

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.cost.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.costdate.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.pay.dart';

class EvaluationProgressEvaluate extends StatelessWidget {
  const EvaluationProgressEvaluate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CardRewardEvaluationProgressPay(),
        CardRewardEvaluationProgressCost(),
        CardRewardEvaluationProgressCostDate(),
        CardRewardEvaluationBtn(),
      ]
    );
  }
}


class CardRewardEvaluationBtn extends StatelessWidget {
  const CardRewardEvaluationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:5, bottom:5)),
        shape:MaterialStatePropertyAll(RoundedRectangleBorder( borderRadius: BorderRadius.circular(20) )),
        backgroundColor: MaterialStatePropertyAll(Colors.cyan[900]),
      ),
      onPressed: (){},
      child:Text('試算回饋',
        style: TextStyle(
          fontSize: 25,
          color:Colors.cyan[50],
        ),
      ),
    );
  }
}