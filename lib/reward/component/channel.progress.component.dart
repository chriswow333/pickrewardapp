



import 'package:flutter/material.dart';

class RewardProgressBar extends StatelessWidget {
  const RewardProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        ChannelProgressItem(),
        ProgressArrow(),
        FindCardProgressItem(),
        ProgressArrow(),
        FindResultProgressItem(),
      ],
    );
  }
}


class FindResultProgressItem extends StatelessWidget {
  const FindResultProgressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:Colors.cyan[50],
      ),
      child:Text(
        '搜尋結果',
        style: TextStyle(
          fontSize: 20,
          color:Colors.cyan[900],
        ),  
      )
    );
  }
}

class FindCardProgressItem extends StatelessWidget {
  const FindCardProgressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:Colors.cyan[50],
      ),
      child:Text(
        '找卡片',
        style: TextStyle(
          fontSize: 20,
          color:Colors.cyan[900],
        ),  
      )
    );
  }
}

class ProgressArrow extends StatelessWidget {
  const ProgressArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Icon(Icons.arrow_forward),
    );
  }
}
class ChannelProgressItem extends StatelessWidget {
  const ChannelProgressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:Colors.cyan[50],
      ),
      child:Text(
        '消費通路',
        style: TextStyle(
          fontSize: 20,
          color:Colors.cyan[900],
        ),  
      )
    );
  }
}

