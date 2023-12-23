



import 'package:flutter/material.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:pickrewardapp/channel_search/component/channel.progress.eventresult.dart';
import 'package:pickrewardapp/channel_search/component/channel.progress.eventresult.result.detail.dart';
import 'package:pickrewardapp/channel_search/model/event_result.dart';
import 'package:pickrewardapp/channel_search/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/channel_search/viewmodel/eventresult.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class CardEventResults extends StatelessWidget {
  const CardEventResults({super.key});

  @override
  Widget build(BuildContext context) {

    CardEventResultsViewModel cardEventResultViewModel = Provider.of<CardEventResultsViewModel>(context);

    if (cardEventResultViewModel.loading) {
      return Container(
        padding: EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child:CircularProgressIndicator(),
      );
    }
    
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    
    CardEventResultsModel cardEventResultsModel = CardEventResultsModel.build(cardEventResultViewModel.cardEventResults, criteriaViewModel);

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(int i = 0; i <  cardEventResultsModel.cardEventResultModels.length; i++)
            CardEventResult(cardEventResultModel: cardEventResultsModel.cardEventResultModels[i], rank: i,),
        ]
      )
    );
  }
}


class CardEventResult extends StatelessWidget {
  const CardEventResult({super.key, required this.cardEventResultModel, required this.rank});

  final int rank;
  final CardEventResultModel cardEventResultModel;

  @override
  Widget build(BuildContext context) {

    
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child:TextButton(
        onPressed: (){

          showCupertinoModalBottomSheet(
            context: context,
            expand: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              ),
            builder: (context) {
              return CardRewardEvaluationDetailBottomUp(rank:rank, cardEventResultModel: cardEventResultModel,);
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
                child: CardRewardEventResultItem(cardEventResultModel: cardEventResultModel,), 
              ),
              Flexible(
                // fit:FlexFit.tight,
                flex: 4,
                child: CardIcon(image: cardEventResultModel.cardImage,),
              ),
            ]
          )
        )
      ),
    );
  }
}




class CardRewardEventResultItem extends StatelessWidget {
  const CardRewardEventResultItem({super.key, required this.cardEventResultModel});
  
  final CardEventResultModel cardEventResultModel;
  
  @override
  Widget build(BuildContext context) {

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardName(name:cardEventResultModel.cardName),
          CardRewardFeedback(cardEventResultModel: cardEventResultModel,),
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
  const CardRewardFeedback({super.key, required this.cardEventResultModel});

  final CardEventResultModel cardEventResultModel;

  @override
  Widget build(BuildContext context) {

    if(cardEventResultModel.cardRewardEventResultModels.isEmpty)return Container();


    final feedback = cardEventResultModel.cardRewardEventResultModels[0].evaluationEventResultModel;

    String percentage = (feedback.getPercentage * 100).toStringAsFixed(1);
    
    if(feedback.calculateType == 0) {
      // 趴數回饋
      return Container(
        child:Text('回饋$percentage%, 獲得${feedback.getReturn}元',
          style:TextStyle(
            fontSize: 12,
          )
        )
      );
    }else {
      // 固定回饋
      return Container(
        child:Text('折抵${feedback.getReturn}元',
          style:TextStyle(
            fontSize: 12,
          )
        )
      );
    }

    
  }
}
