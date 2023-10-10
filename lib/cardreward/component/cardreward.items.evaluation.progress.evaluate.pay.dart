



import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/repository/evaluation/proto/generated/evaluation.pb.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.dart';
import 'package:pickrewardapp/cardreward/viewmodel/evaluation.selected.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class CardRewardEvaluationProgressPay extends StatelessWidget {
  const CardRewardEvaluationProgressPay({super.key});

  @override
  Widget build(BuildContext context) {

    EvaluationViewModel evaluationViewModel = Provider.of<EvaluationViewModel>(context);
    EvaluationResp? evaluationResp = evaluationViewModel.evaluationResp;
    if (evaluationResp == null) return Container();
    
    PayEvaluationResp payEvaluationResp = evaluationResp.payEvaluationResp;
    
    List<PayEvaluationResp_Pay> pays = payEvaluationResp.matches;
    if(pays.length == 0)return Container();

    return Container(
      padding:EdgeInsets.only(bottom:15),
      child:Container(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            PayName(),
            SizedBox(height:10),
            Row(
              children:[
                Expanded(
                  child:PayItems(pays: pays,),
                ),
              ]
            ),
          ]
        )
        
      )
    );
  }
}



class PayName extends StatelessWidget {
  const PayName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('行動支付',
      style:TextStyle(
        color: Palette.kToBlack[600],
        fontSize: 18,
      ),
    );
  }
}

class PayItems extends StatelessWidget {
  const PayItems({super.key, required this.pays});
  final List<PayEvaluationResp_Pay> pays;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Wrap(
          spacing: 10,
          children:[ 
            for(PayEvaluationResp_Pay p in pays) PayItem(pay:p),
          ]
        ),
      )
    );
  }
}



class PayItem extends StatelessWidget {
  const PayItem({super.key, required this.pay});
  
  final PayEvaluationResp_Pay pay;

  @override
  Widget build(BuildContext context) {

    EvaluationSelectedViewModel evaluationSelectedViewModel = Provider.of<EvaluationSelectedViewModel>(context);

    return TextButton(
        style:ButtonStyle(
          alignment: Alignment.center,
          splashFactory:NoSplash.splashFactory,
          side:evaluationSelectedViewModel.hasPayID(pay.id)?
          MaterialStatePropertyAll(
            BorderSide(
              color:Palette.kToBlue[600]!,
              width: 1,
            )
          ):null,
          padding: MaterialStatePropertyAll(
            EdgeInsets.all(10),
          )
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
          color: Palette.kToBlack[600],
        ),
      )
    );
  }
}