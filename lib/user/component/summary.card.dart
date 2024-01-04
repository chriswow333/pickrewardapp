




import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

class UserCardSummary extends StatelessWidget {
  const UserCardSummary({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          UserCardDetailBtn(),
          Expanded(child:SizedBox()),
          SummaryCardItems(),
        ]
      ),
    );
  }
}

class SummaryCardItems extends StatelessWidget {
  const SummaryCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          SummaryCardItem(),
          SummaryCardItem(),
          SummaryCardItem(),
        ]
      )
    );
  }
}


class SummaryCardItem extends StatelessWidget {
  const SummaryCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:6, bottom: 6),
      child:Row(
        children:[
          Text('CUBE卡',
            style: TextStyle(
              color: Palette.kToBlack[0],
              fontSize: 12,
            ),
          ),
          Expanded(
            child:LinearPercentIndicator(
              width:MediaQuery.of(context).size.width - 200,
              lineHeight: 12.0,
              percent: 1.0,
              // animation:true,
              barRadius:Radius.circular(10),
              backgroundColor: Palette.kToBlack[900],
              progressColor:Palette.kToYellow[300],
            ),
          ),

          Text('+NT\$350',
            style: TextStyle(
              color: Palette.kToYellow[300],
            ),
          ),
          
        ]
      )
    );
  }
}

class UserCardDetailBtn extends StatelessWidget {
  const UserCardDetailBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text(
          '當月省下的摳摳',
          style: TextStyle(
            color: Palette.kToYellow[300],
          ),
        ),
        Text('全部資訊>',
          style: TextStyle(
            color: Palette.kToBlack[0],
          ),
        ),
      ],
    );
  }
}


