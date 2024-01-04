

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

class UserMonthSummary extends StatelessWidget {
  const UserMonthSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:10, right:10, top:10, bottom: 10),
      // width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10), 
        color: Palette.kToBlack[900]
      ),
      child:Column(
        children:[
          UserMonthDetailBtn(),
          Expanded(child:SizedBox()),
          MonthSavingItems(),
          
        ]
      ),
    );
  }
}


class UserMonthDetailBtn extends StatelessWidget {
  const UserMonthDetailBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text('各月份省摳摳佔比'),

          Text('全部資訊')

        ]
      )
    );
  }
}



class MonthSavingItems extends StatelessWidget {
  const MonthSavingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          MonthSavingItem(),
          MonthSavingItem(),
          MonthSavingItem(),
          MonthSavingItem(),
          MonthSavingItem(),
          MonthSavingItem(),
          MonthSavingItem(),
          MonthSavingItem(),
          MonthSavingItem(),
          MonthSavingItem(),
          MonthSavingItem(),
          MonthSavingItem(),
        ]
      )
    );
  }
}



class MonthSavingItem extends StatelessWidget {
  const MonthSavingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:8, right:8),
      child:RotatedBox(
        quarterTurns: -1,
        child:LinearPercentIndicator(
          width:100,
          lineHeight: 8.0,
          percent: 0.6,
          barRadius:Radius.circular(10),
          backgroundColor: Palette.kToYellow[100],
          progressColor:Palette.kToYellow[300],
        ),
      ),
    );
  }
}