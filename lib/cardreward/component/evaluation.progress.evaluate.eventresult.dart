
import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.cost.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.costdate.dart';
import 'package:pickrewardapp/cardreward/component/evaluation.progress.evaluate.pay.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.eventresult.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:provider/provider.dart';



class CardRewardEvaluationEventResult extends StatelessWidget {
  const CardRewardEvaluationEventResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        EventResultName(),
        EventResultGetPercentage(),
        SizedBox(width:20),
        EventResultGetReturn(),
      ],
    );
  }
}


class EventResultName extends StatelessWidget {
  const EventResultName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('試算結果',
      style: TextStyle(
        fontSize: 20,
        color: Colors.cyan[900],
      ),  
    );
  }
}


class EventResultGetPercentage extends StatelessWidget {
  const EventResultGetPercentage({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationEventResultRespViewModel evaluationEventResultRespViewModel = Provider.of<EvaluationEventResultRespViewModel>(context);
    double getPercentage = evaluationEventResultRespViewModel.feedbackEventResult!.getPercentage;
    
    return Text(getPercentage.toString(),
      style: TextStyle(
        fontSize: 20,
        color: Colors.cyan[900],
      ),  
    );
  }
}


class EventResultGetReturn extends StatelessWidget {
  const EventResultGetReturn({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationEventResultRespViewModel evaluationEventResultRespViewModel = Provider.of<EvaluationEventResultRespViewModel>(context);
    double getReturn = evaluationEventResultRespViewModel.feedbackEventResult!.getReturn;
    
    return Text(getReturn.toString() + "元",
      style: TextStyle(
        fontSize: 20,
        color: Colors.cyan[900],
      ),  
    );
  }
}

