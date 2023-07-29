


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardcontent/component/cardreward.detail.dart';
import 'package:pickrewardapp/cardcontent/component/cardreward.evaluation.dart';

class CardReward extends StatelessWidget {
  const CardReward({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardRewardHeader(),
          CardRewardDetails(),
          CardRewardEvaluation(),
        ],
      )
    );
  }
}





class CardRewardHeader extends StatelessWidget {
  const CardRewardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children:[
          CardRewardTypeName(),
          Flexible(
            child: CardRewardName(),
          ),
        ]
      )
    );
    
  }
}

class CardRewardName extends StatelessWidget {
  const CardRewardName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:20),
      child:Text('國內節/假日&國外最高3%回饋國內節/假日&國外最高3%回饋國內節/假日&國外最高3%回饋國內節/假日&國外最高3%回饋',
        style:TextStyle(
          color:Colors.cyan[900],
        ),
      )
    );
  }
}


class CardRewardTypeName extends StatelessWidget {
  const CardRewardTypeName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('現金回饋',
        style:TextStyle(
          color:Colors.cyan[900],
        ),
      )
    );
  }
}