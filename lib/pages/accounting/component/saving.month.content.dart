import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

class SavingMonthItems extends StatelessWidget {
  const SavingMonthItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:const Column(
        children:[
          SavingMonthByYear(), 
          SizedBox(height:20),
          SavingMonthsByCard(),
        ]
      )
    );
  }
}


class SavingMonthsByCard extends StatelessWidget {
  const SavingMonthsByCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Container(
          decoration: BoxDecoration(
          color:Palette.kToBlack[700],
          borderRadius: BorderRadius.circular(20)
        ),
        child:const SingleChildScrollView(
          child:Column(
            children:[
              SavingCardItem(),
              SavingCardItem(),
              SavingCardItem(),
              SavingCardItem(),
              SavingCardItem(),
              SavingCardItem(),
              SavingCardItem(),
              SavingCardItem(),
              SavingCardItem(),
              SavingCardItem(),
              SavingCardItem(),
            ]
          )
        )
      )
    );
  }
}



class SavingCardItem extends StatelessWidget {
  const SavingCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child:Row(
        children:[
          Container(
            child:Text('國泰xxxx卡',
              style: TextStyle(
                fontSize: 14,
                color:Palette.kToBlack[0],
              ),
            )
          ),
          Expanded(
            child:LinearPercentIndicator(
              lineHeight: 8.0,
              percent: 0.5,
              barRadius:const Radius.circular(10),
              backgroundColor: Palette.kToYellow[100],
              progressColor:Palette.kToYellow[300],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:[
              Container(
                child:Text('NT\$ 350',
                  style: TextStyle(
                    fontSize: 14,
                    color:Palette.kToBlack[0],
                  ),
                )
              ),
              
              Container(
                child:Text('總消費 NT\$ 6,500',
                  style: TextStyle(
                    fontSize: 14,
                    color:Palette.kToBlack[0],
                  ),
                )
              ),
            ]
          )
          
        ]
      )
    );
  }
}


class SavingMonthByYear extends StatelessWidget {
  const SavingMonthByYear({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:double.infinity,
      child:Column(
        children:[
          Container(
            child:const Text('2023年')
          ),
          const Padding(padding: EdgeInsets.only(top:10)),
          SingleChildScrollView(
            scrollDirection:Axis.horizontal,
            child:Wrap(
              alignment:WrapAlignment.start,
              spacing:20,
              children:[
                Container(
                  child:Column(
                    children:[
                      const Text('Sep'),
                      const Text('9'),
                      Container(
                        width: 25,
                        height:2,
                        decoration: BoxDecoration(
                          color: Palette.kToBlack[300]
                        ),
                      ),
                    ]
                  ),
                ),
                Container(
                  child:Column(
                    children:[
                      const Text('Sep'),
                      const Text('9'),
                      Container(
                        width: 25,
                        height:2,
                        decoration: BoxDecoration(
                          color: Palette.kToBlack[300]
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            )
          )
        ]
      )
    );
  }
}