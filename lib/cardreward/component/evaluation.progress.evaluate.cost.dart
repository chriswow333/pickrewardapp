
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:provider/provider.dart';

class CardRewardEvaluationProgressCost extends StatelessWidget {
  const CardRewardEvaluationProgressCost({super.key});

  @override
  Widget build(BuildContext context) {


    return Container(
      padding:const EdgeInsets.only(top:10),
      child:Row(
        children:[
          CostName(),
          SizedBox(width:20),
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
      style: TextStyle(
        fontSize: 20,
        color: Colors.cyan[900],
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

  TextEditingController _controller= new TextEditingController(text: '1000');
  

  @override
  Widget build(BuildContext context) {
    
    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);
    
    return SizedBox(
      width:150,
      child:TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ], //
        onChanged: (text){
          int intVal = int.parse(text);
          evaluationSelectedViewModel.setCost(intVal);
        },
        decoration:InputDecoration(
          // border: OutlineInputBorder(),
          // labelText:dsd 'Password',
        ),
      ),
    );
  }
}