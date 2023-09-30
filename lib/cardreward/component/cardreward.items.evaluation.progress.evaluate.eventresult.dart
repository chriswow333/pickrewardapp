
import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.eventresult.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class CardRewardEvaluationEventResult extends StatelessWidget {
  const CardRewardEvaluationEventResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        EventResultGetReturn(),
        SizedBox(width:10,),
        EventResultGetPercentage(),
      ]
    );
  }
}




class EventResultGetPercentage extends StatelessWidget {
  const EventResultGetPercentage({super.key});

  @override
  Widget build(BuildContext context) {
    
    EvaluationEventResultRespViewModel evaluationEventResultRespViewModel = Provider.of<EvaluationEventResultRespViewModel>(context);
    if(evaluationEventResultRespViewModel.feedbackEventResult == null) {
      return Container();
    }

    double percentage = evaluationEventResultRespViewModel.feedbackEventResult!.getPercentage * 100;
    String percentageStr = percentage.toStringAsFixed(3);
    int length = percentageStr.length - 1;
    while(length > 0) {
      if(percentageStr[length] != '0' && percentageStr[length] != "."){
        break;
      }
      length--; 
    }
    percentageStr = percentageStr.substring(0,length+1);

    if(percentage != 0.0) {
      return Text(percentageStr+"%回饋",
        style: TextStyle(
          fontSize: 20,
          color: Palette.kToBlack[900],
        ),  
      );  
    }else {
      return Container();
    }
    
  }
}


class EventResultGetReturn extends StatelessWidget {
  const EventResultGetReturn({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);
  
    EvaluationEventResultRespViewModel evaluationEventResultRespViewModel = Provider.of<EvaluationEventResultRespViewModel>(context);
    if (evaluationEventResultRespViewModel.feedbackEventResult == null){
      return Container();
    }


    String unit = evaluationSelectedViewModel.cardRewardModel!.reward.name;
    double getReturn = evaluationEventResultRespViewModel.feedbackEventResult!.getReturn;
    return Text("折抵 " +getReturn.toString() + " " + unit,
      style: TextStyle(
        fontSize: 20,
        color: Palette.kToBlack[900],
      ),  
    );

    
  }
}

