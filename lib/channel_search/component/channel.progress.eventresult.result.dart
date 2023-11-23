


import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.eventresult.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.eventresult.result.detail.dart';
import 'package:pickrewardapp/shared/config/palette.dart';

class EventResults extends StatelessWidget {
  const EventResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          EventResult(),
          EventResult(),
          EventResult(),
          EventResult(),
          EventResult(),
          EventResult(),
          EventResult(),
          EventResult(),
        ]
      )
    );
  }
}


class EventResult extends StatelessWidget {
  const EventResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child:InkWell(
        onTap: (){
          showModalBottomSheet(
            context: context,
            isScrollControlled:true,
            isDismissible: true, 
            // barrierColor:Colors.transparent,
             shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              ),
            builder: (context) {
              return Container(
                // padding: EdgeInsets.only(top:20),
                height:MediaQuery.of(context).size.height * 0.9,
                child:Column(
                  children: [
                    SizedBox(height:5),
                    Container(
                      width:MediaQuery.of(context).size.width * 0.2,
                      height:3,
                      color:Palette.kToBlack[50],
                    ),
                    SizedBox(height:10),
                    CardRewarEvaluationDetailTitle(),
                    SizedBox(height: 20,),
                    Expanded(
                      child:SingleChildScrollView(
                        child:CardRewardEvaluationResultDetails(),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child:Container(
          padding: EdgeInsets.fromLTRB(20,30,20,30),
          decoration: BoxDecoration(
            color:Palette.kToBlack[0],
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              Flexible(
                fit:FlexFit.tight,
                flex: 4,
                child: CardRewardRank(rank: 1,),
              ),
              Flexible(
                fit:FlexFit.tight,
                flex: 10,
                child: CardRewardEventResultItem(), 
              ),
              Flexible(
                // fit:FlexFit.tight,
                flex: 4,
                child: CardIcon(image: "",),
              ),
            ]
          )
        )
      ),
      
    );
    ;
  }
}

