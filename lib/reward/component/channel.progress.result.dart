


import 'package:flutter/material.dart';

class CardResults extends StatelessWidget {
  const CardResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        SizedBox(height:20),
        CardResult(),
        SizedBox(height:15),
        CardResult(),
        SizedBox(height:15),
        CardResult(),
        SizedBox(height:15),
        CardResult(),
      ],
    );
  }
}

class CardResult extends StatelessWidget {
  const CardResult({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.white),
        elevation:MaterialStatePropertyAll(2),
      ),
      onPressed: (){},
      child:Column(
        children:[
          
          CardUpdateDate(),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              CardTitle(),
              CardRewardName(),
              CardRewardValue(),
              CardRewardDesc(),
            ],
          ),
        ],
      ),
      
    );
  }
}


class CardUpdateDate extends StatelessWidget {
  const CardUpdateDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Expanded(child:Container()),
        Text('2023/01/01',
          style:TextStyle(
            fontSize: 10,
            color:Colors.cyan[800],
          ),
        ),
      ],
    );
  }
}

class CardRewardDesc extends StatelessWidget {
  const CardRewardDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child:Text('取得回饋取得回饋取得回饋取得回饋取得回饋取得回饋取得回饋取得回饋',
        style: TextStyle(
          fontSize: 12,
          color:Colors.cyan[900],
        ),
      ),
    );
  }
}
class CardRewardValue extends StatelessWidget {
  const CardRewardValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Text('0.59%',
          style: TextStyle(
            fontSize: 15,
            color:Colors.cyan[900],
          ),
        ),
       Text('折抵5元',
          style: TextStyle(
            fontSize: 15,
            color:Colors.cyan[900],
          ),
        ),
      ],
    );
  }
}

class CardRewardName extends StatelessWidget {
  const CardRewardName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('現金回饋',
      style:TextStyle(
        fontSize: 15,
        color:Colors.cyan[900],
      ),
    );
  }
}


class CardTitle extends StatelessWidget {
  const CardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CardIcon(),
        CardName(),
      ]
    );
  }
}


class CardIcon extends StatelessWidget {
  const CardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.card_membership_rounded,
      color:Colors.cyan[900],
      size: 40,
    );
  }
}


class CardName extends StatelessWidget {
  const CardName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Text('CUBE卡',
          style: TextStyle(
            fontSize: 15,
            color:Colors.cyan[900],
          ),
        ),
        Text('國泰世華商業銀行',
          style: TextStyle(
            fontSize: 12,
            color:Colors.cyan[900],
          ),
        ),
      ]
    );
  }
}