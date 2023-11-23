


import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.eventresult.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.eventresult.result.detail.dart';
import 'package:pickrewardapp/channel_search/viewmodel/eventresult.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:pickrewardapp/shared/repository/card/v1/proto/generated/card.pb.dart';
import 'package:provider/provider.dart';

class CardEventResults extends StatelessWidget {
  const CardEventResults({super.key});

  @override
  Widget build(BuildContext context) {
    CardEventResultsViewModel cardEventResultViewModel =Provider.of<CardEventResultsViewModel>(context);
    cardEventResultViewModel.cardEventResults;

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(int i = 0; i <  cardEventResultViewModel.cardEventResults.length; i++)
            CardEventResult(cardEventResult: cardEventResultViewModel.cardEventResults[i], rank: i,),
        ]
      )
    );
  }
}


class CardEventResult extends StatelessWidget {
  const CardEventResult({super.key, required this.cardEventResult, required this.rank});

  final int rank;
  final EvaluateCardsReply_CardEventResultResp cardEventResult;

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
                child: CardRewardRank(rank: rank+1,),
              ),
              Flexible(
                fit:FlexFit.tight,
                flex: 10,
                child: CardRewardEventResultItem(cardEventResult: cardEventResult,), 
              ),
              Flexible(
                // fit:FlexFit.tight,
                flex: 4,
                child: CardIcon(image: cardEventResult.cardImage,),
              ),
            ]
          )
        )
      ),
      
    );
    ;
  }
}



class CardRewarEvaluationDetailTitle extends StatelessWidget {
  const CardRewarEvaluationDetailTitle({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Flexible(
            child: Text('玫瑰Giving卡',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 20,),
          Flexible(
            child: Text('最高回饋 3% 30元',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
        ]
      ),
    );
  }
}


class CardRewardEventResultItem extends StatelessWidget {
  const CardRewardEventResultItem({super.key, required this.cardEventResult});
  
  final EvaluateCardsReply_CardEventResultResp cardEventResult;
  
  @override
  Widget build(BuildContext context) {

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardName(name:cardEventResult.cardName),
          CardRewardFeedback(cardEventResult: cardEventResult,),
        ]
      )
    );
  }
}



class CardName extends StatelessWidget {
  const CardName({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('${name}',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}




class CardRewardRank extends StatelessWidget {
  const CardRewardRank({super.key, required this.rank});

  final int rank;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('Top ${rank}',
        style: TextStyle(
          fontSize: 14,
        ),
      )
    );
  }
}



class CardRewardFeedback extends StatelessWidget {
  const CardRewardFeedback({super.key, required this.cardEventResult});

  final EvaluateCardsReply_CardEventResultResp cardEventResult;

  @override
  Widget build(BuildContext context) {

    if(cardEventResult.cardRewardEventResultResps.isEmpty)return Container();


    EvaluationEventResultResp_FeedbackEventResultResp feedback = cardEventResult
    .cardRewardEventResultResps[0]
    .evaluationEventResultResp
    .feedbackEventResultResp;

    String percentage = (feedback.getPercentage * 100).toStringAsFixed(1);


    return Container(
      child:Text('回饋$percentage%, 獲得${feedback.getReturn}元',
        style:TextStyle(
          fontSize: 12,
        )
      )
    );
  }
}
