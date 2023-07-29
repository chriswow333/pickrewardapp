



import 'package:flutter/material.dart';

class CardRewardDetails extends StatelessWidget {
  const CardRewardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardRewardDetail(),
        ],
      )
    );
  }
}


class CardRewardDetail extends StatelessWidget {
  const CardRewardDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardRewardDetailTitle(),
          CardRewardDetailName(),
          CardRewardDetailDescs(),
        ],
      ),
    );
  }
}

class CardRewardDetailTitle extends StatelessWidget {
  const CardRewardDetailTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('詳細說明',
        style:TextStyle(
          color:Colors.cyan[900],
          fontSize: 15,
        ),
      )
    );
  }
}

class CardRewardDetailName extends StatelessWidget {
  const CardRewardDetailName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('活動日期: 2023/1/1~2023/9/30結帳帳單。',
        style:TextStyle(
          color:Colors.cyan[900],
        ),
      )
    );
  }
}

class CardRewardDetailDescs extends StatelessWidget {
  const CardRewardDetailDescs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:10),
      child:Column(
        children:[
          CardRewardDetailDesc(),
        ]
      ),
    );
  }
}


class CardRewardDetailDesc extends StatelessWidget {
  const CardRewardDetailDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('√ 完成台新帳戶扣繳台新信用卡費設定，可續享節假日與國外消費３％回饋',
        style:TextStyle(
          color:Colors.cyan[900],
        ),
      )
    );
  }
}