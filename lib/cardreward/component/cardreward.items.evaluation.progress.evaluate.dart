

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.evaluate.cost.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.evaluate.costdate.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.evaluate.eventresult.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.evaluate.pay.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.eventresult.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class EvaluationProgressEvaluate extends StatelessWidget {
  const EvaluationProgressEvaluate({super.key});

  @override
  Widget build(BuildContext context) {
    

    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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

    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);
    EvaluationEventResultRespViewModel evaluationEventResultRespViewModel = Provider.of<EvaluationEventResultRespViewModel>(context);

    return Container(
      padding:EdgeInsets.only(top:25),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          TextButton(
            style: ButtonStyle(
              padding:const MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:5, bottom:5)),
              shape:MaterialStatePropertyAll(RoundedRectangleBorder( borderRadius: BorderRadius.circular(20) )),
              backgroundColor: MaterialStatePropertyAll(
                evaluationSelectedViewModel.evaluated ? null: Palette.kToBlue[600]
              ),
            ),
            onPressed: (){
              if(evaluationSelectedViewModel.evaluated)return;
              evaluationEventResultRespViewModel.evaluateCardRewardEvaluation(evaluationSelectedViewModel);
              evaluationSelectedViewModel.evaluated = true;
            },
            child:Text('試算回饋',
              style: TextStyle(
                fontSize: 25,
                color:evaluationSelectedViewModel.evaluated ?Palette.kToBlack[100]:Palette.kToBlue[50],
              ),
            ),
          )
        ]
      )
    );
  }
}