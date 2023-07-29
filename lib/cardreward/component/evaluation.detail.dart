



import 'package:flutter/material.dart';

class EvaluationDetails extends StatelessWidget {
  const EvaluationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          EvaluationDetail(),
        ],
      )
    );
  }
}


class EvaluationDetail extends StatelessWidget {
  const EvaluationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          EvaluationDetailTitle(),
          EvaluationDetailName(),
          EvaluationDetailDescs(),
        ],
      ),
    );
  }
}

class EvaluationDetailTitle extends StatelessWidget {
  const EvaluationDetailTitle({super.key});

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

class EvaluationDetailName extends StatelessWidget {
  const EvaluationDetailName({super.key});

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

class EvaluationDetailDescs extends StatelessWidget {
  const EvaluationDetailDescs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:10),
      child:Column(
        children:[
          EvaluationDetailDesc(),
        ]
      ),
    );
  }
}


class EvaluationDetailDesc extends StatelessWidget {
  const EvaluationDetailDesc({super.key});

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