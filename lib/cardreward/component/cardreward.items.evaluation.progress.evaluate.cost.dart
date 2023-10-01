
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class CardRewardEvaluationProgressCost extends StatelessWidget {
  const CardRewardEvaluationProgressCost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CostName(),
          Cost(),
        ]
      )
    );
  }
}


class CostName extends StatelessWidget {
  const CostName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('消費金額',
      style:TextStyle(
        color: Palette.kToBlack[600],
        fontSize: 18,
      ),
    );
  }
}


class Cost extends StatefulWidget {
  const Cost({super.key});

  @override
  State<Cost> createState() => _CostState();
}

class _CostState extends State<Cost> {
  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);
    _controller.text = evaluationSelectedViewModel.getCost().toString();

    return SizedBox(
      width:100,
      child:TextField(
        controller: _controller,
        textAlign:TextAlign.start,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ], //
        onChanged: (text){
          int intVal = int.parse(text);
          evaluationSelectedViewModel.setCost(intVal);
        },
        style:TextStyle(
          fontSize: 16,
        ),
        decoration:InputDecoration(
          // border: OutlineInputBorder(),
          // labelText:dsd 'Password',
        ),
      ),
    );
  }
}