


import 'package:flutter/material.dart';
import 'package:pickrewardapp/reward/component/channel.progress.findcard.cost.dart';
import 'package:pickrewardapp/reward/component/channel.progress.findcard.pay.dart';
import 'package:pickrewardapp/reward/component/channel.progress.findcard.rewardway.dart';

class FindCardProgress extends StatelessWidget {
  const FindCardProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        CostName(),
        SizedBox(height:20),
        CostButtons(),
        
        SizedBox(height:20),

        PayName(),
        PayStores(),

        SizedBox(height:20),

        CostDate(),

        SizedBox(height:20),
        
        RewardWayName(),
        RewardWayItems(),

        SizedBox(height:40),
        
        SubmitEvaluateCard(),
      ],
    );
  }
}



class SubmitEvaluateCard extends StatelessWidget {
  const SubmitEvaluateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // decoration: BoxDecoration(
      //   border:Border.all(),
      // ),
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        TextButton(
          style: ButtonStyle(
            padding:MaterialStatePropertyAll(EdgeInsets.only(left:20, right:20, top:5, bottom:5)),
            shape:MaterialStatePropertyAll(RoundedRectangleBorder( borderRadius: BorderRadius.circular(20) )),
            backgroundColor: MaterialStatePropertyAll(Colors.cyan[900]),
          ),
          onPressed: (){},
          child:Text('送出選卡',
            style: TextStyle(
              fontSize: 25,
              color:Colors.cyan[50],
            ),
          ),
        )
      ],
    );
  }
}
