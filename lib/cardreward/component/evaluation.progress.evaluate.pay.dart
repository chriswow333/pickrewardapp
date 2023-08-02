



import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:provider/provider.dart';

class CardRewardEvaluationProgressPay extends StatelessWidget {
  const CardRewardEvaluationProgressPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        PayName(),
        PayItems(),
      ]
    );
  }
}

class PayName extends StatelessWidget {
  const PayName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('行動支付',
      style: TextStyle(
        fontSize: 20,
        color: Colors.cyan[900],
      ),  
    );
  }
}

class PayItems extends StatelessWidget {
  const PayItems({super.key});

  @override
  Widget build(BuildContext context) {
        
    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);
    EvaluationRespProto? resp = evaluationViewModel.get();

    if (resp == null) return Container();
    
    PayEvaluationRespProto payResp = resp.payEvaluationResp;
    
    List<PayProto> pays = payResp.matches;

    return SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children:[ 
          for(PayProto p in pays)
            PayItem(pay:p),

        ]
      ),
    );
  }
}

class PayItem extends StatelessWidget {
  const PayItem({super.key, required this.pay});
  
  final PayProto pay;

  @override
  Widget build(BuildContext context) {

    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);

    return TextButton(
      style:ButtonStyle(
        alignment: Alignment.center,
        splashFactory:NoSplash.splashFactory,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        side:evaluationSelectedViewModel.hasPayID(pay.id) ?
        MaterialStatePropertyAll(
          BorderSide(
            color:Colors.teal[900]!,
            width: 1,
          ),
        ) :null,
        padding:const MaterialStatePropertyAll(
          EdgeInsets.fromLTRB(12, 12, 12, 12),
        ),
      ),
      onPressed: () {  
        evaluationSelectedViewModel.setPayID(pay.id);
      },
      child:Container(
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        child:Column(
          children:[
            PayItemIcon(image:pay.image),
            PayItemName(name:pay.name),
          ],
        ),
      ),
    );
  }
}

class PayItemIcon extends StatelessWidget {
  const PayItemIcon({super.key, required this.image});
  
  final String image;
  
  @override
  Widget build(BuildContext context) {
    return Container(
     child:Image.memory(
        gaplessPlayback: true,
        base64Decode(image), 
        width:70,
        height:50,
      ),
    );
  }
}

class PayItemName extends StatelessWidget {
  const PayItemName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth, 
      child:Text(
        name,
        style:TextStyle(
          color: Colors.teal[900],
        ),
      )
    );
  }
}