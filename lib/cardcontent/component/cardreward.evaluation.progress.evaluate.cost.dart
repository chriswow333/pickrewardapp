
import 'package:flutter/material.dart';

class CardRewardEvaluationProgressCost extends StatelessWidget {
  const CardRewardEvaluationProgressCost({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding:const EdgeInsets.only(top:20),
      child:Row(
        children:[
          CostName(),
          SizedBox(width:20),
          CostField(),
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



class CostField extends StatelessWidget {
  const CostField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:250,
      child:TextField(
        controller: TextEditingController(),
        // obscureText: true,
        decoration:InputDecoration(
          // border: OutlineInputBorder(),
          // labelText:dsd 'Password',
        ),
      ),
    );
  }
}
