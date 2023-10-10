

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.evaluate.cost.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.evaluate.costdate.dart';
import 'package:pickrewardapp/cardreward/component/cardreward.items.evaluation.progress.evaluate.pay.dart';
import 'package:pickrewardapp/shared/repository/evaluation/proto/generated/evaluation.pb.dart';
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
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color:Palette.kToBlack[50]!,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child:Column(
            children:[
              CardRewardEvaluationProgressCost(),
              SizedBox(height:25),
              CardRewardEvaluationProgressCostDate(),
            ]
          )
        ),
        
        if(!evaluationSelectedViewModel.evaluated)
          CardRewardEvaluationBtn(),

        if(evaluationSelectedViewModel.evaluated)
          EvaluateEventResult()
      ]
    );
  }
}

class EvaluateEventResult extends StatelessWidget {
  const EvaluateEventResult({super.key});

  @override
  Widget build(BuildContext context) {
    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);


    EvaluationEventResultRespViewModel evaluationEventResultRespViewModel = Provider.of<EvaluationEventResultRespViewModel>(context);
    if(evaluationEventResultRespViewModel.feedbackEventResult == null) {
      return Container();
    }

    EvaluationEventResultRespReply_FeedbackEventResultResp? feedbackEventResult = evaluationEventResultRespViewModel.feedbackEventResult;
    if(feedbackEventResult == null) return Container();
    
    String returnUnit = evaluationSelectedViewModel.cardRewardModel!.reward.rewardType == 0 ? "元":"點";
    feedbackEventResult.getReturn;

    double getReturn = feedbackEventResult.getReturn;
    String getReturnStr = getReturn.toInt().toString();
    String percentage = (feedbackEventResult.getPercentage * 100).toStringAsFixed(3);
    int length = percentage.length - 1;
    while(length > 0) {
      if(percentage[length] != '0' && percentage[length] != "."){
        break;
      }
      length--; 
    }

    percentage = percentage.substring(0,length+1);

    if(feedbackEventResult.calculateType == 0){
      return Container(
        padding:EdgeInsets.only(top:25),
        alignment: Alignment.center,
        child:Container(
          padding:EdgeInsets.only(top: 10, bottom: 10, left:20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Palette.kToOrange[600],
          ),
          child:Text('獲得 ${percentage}% ${getReturnStr}${returnUnit}',
            style:TextStyle(
              color:Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          )
        )
      );
    }else if (feedbackEventResult.calculateType == 1){
      return Container(
        padding:EdgeInsets.only(top:25),
        alignment: Alignment.center,
        child:Container(
          padding:EdgeInsets.only(top: 10, bottom: 10, left:20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Palette.kToOrange[600],
          ),
          child:Text('折抵 ${getReturnStr}${returnUnit}',
            style:TextStyle(
              color:Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          )
        )
      );
    }

    return Container();
    
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