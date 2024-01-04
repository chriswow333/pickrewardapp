


import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

class UserSavingSummary extends StatelessWidget {
  const UserSavingSummary({super.key});

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
      child:Stack(
        alignment:Alignment.bottomRight,
        children:[
          Container(
            alignment: Alignment.bottomRight,
            child:Image.asset(
              'images/logo.png',
              width:100,
              height:100,
              color:Palette.kToBlack[50]
            ),
          ),
          Column(
            children:[
              SummaryStartFrom(),
              Expanded(child: SizedBox()),
              TotalSaving(),
            ]
          ),
        ]
      )
    );
  }
}


class SummaryStartFrom extends StatelessWidget {
  const SummaryStartFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
          Text('從2023.11.12起',
            style: TextStyle(
              color: Palette.kToBlack[0]
            ),
          ),
            
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Palette.kToBlack[0],
            ),
            width: 1,
            height: 1,
          )
        ]
      )
    );
  }
}

class TotalSaving extends StatelessWidget {
  const TotalSaving({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('累計省下的摳摳有',
            style: TextStyle(
              color: Palette.kToYellow[200],
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height:5),
          Row(
            children:[
              Text('NT\$',
              style: TextStyle(
                color: Palette.kToBlack[0]
              ),
            ),
              Text('124,360',
                style: TextStyle(
                  fontSize: 30,
                  color: Palette.kToBlack[0],
                  fontWeight: FontWeight.bold,
                ),
              )
            ]
          ),
        ]
      )
    );
  }
}

