


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/component/activity.detail.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:500,
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            CardActivityName(),
            CardActivityDetails(),
          ],
        ),
      ),
    );
  }
}



class CardActivityName extends StatelessWidget {
  const CardActivityName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('平日消費滿額享2次居家清潔服務',
        style: TextStyle(
          color:Colors.cyan[900],
          fontSize: 18,
        ),
      )
    );
  }
}


