

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.cost.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.costdate.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.eventresult.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.pay.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.eventresult.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:provider/provider.dart';

class EvaluationProgressEvaluate extends StatelessWidget {
  const EvaluationProgressEvaluate({super.key});

  @override
  Widget build(BuildContext context) {
    
    EvaluationEventResultRespViewModel evaluationEventResultRespViewModel = Provider.of<EvaluationEventResultRespViewModel>(context);
    FeedbackEventResultProto? feedbackEventResult = evaluationEventResultRespViewModel.feedbackEventResult;

    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        CardRewardEvaluationProgressPay(),
        CardRewardEvaluationProgressCost(),
        CardRewardEvaluationProgressCostDate(),
        if (feedbackEventResult != null)
          CardRewardEvaluationEventResult(),
        if(!evaluationSelectedViewModel.evaluated)
          CardRewardEvaluationBtn(),
      ]
    );
  }
}
class CardRewardEvaluationBtn extends StatelessWidget {
  const CardRewardEvaluationBtn({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);
    EvaluationEventResultRespViewModel evaluationEventResultRespViewModel = Provider.of<EvaluationEventResultRespViewModel>(context);
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        TextButton(
          style: ButtonStyle(
            padding:const MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:5, bottom:5)),
            shape:MaterialStatePropertyAll(RoundedRectangleBorder( borderRadius: BorderRadius.circular(20) )),
            backgroundColor: MaterialStatePropertyAll(Colors.cyan[900]),
          ),
          onPressed: (){
              evaluationEventResultRespViewModel.evaluateCardRewardEvaluation(evaluationSelectedViewModel);
              evaluationSelectedViewModel.evaluated = true;
          },
          child:Text('試算回饋',
            style: TextStyle(
              fontSize: 25,
              color:Colors.cyan[50],
            ),
          ),
        )
      ]
    );
  }
}