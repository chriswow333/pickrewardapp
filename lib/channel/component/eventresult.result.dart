



import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:pickrewardapp/channel/component/eventresult.dart';
import 'package:pickrewardapp/channel/component/eventresult.result.detail.dart';
import 'package:pickrewardapp/channel/model/eventresult.dart';
import 'package:pickrewardapp/channel/viewmodel/criteria.selected.dart';
import 'package:pickrewardapp/channel/viewmodel/eventresult.dart';
import 'package:pickrewardapp/shared/config/palette.dart';
import 'package:provider/provider.dart';

class CardEventResults extends StatelessWidget {
  const CardEventResults({super.key});

  @override
  Widget build(BuildContext context) {

    CardEventResultsViewModel cardEventResultViewModel = Provider.of<CardEventResultsViewModel>(context);

    if (cardEventResultViewModel.loading) {
      return Container(
        padding: const EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child:const CircularProgressIndicator(),
      );
    }
    
    CriteriaViewModel criteriaViewModel = Provider.of<CriteriaViewModel>(context);
    
    // CardEventResultsModel cardEventResultsModel = CardEventResultsModel.build(cardEventResultViewModel.cardEventResults, criteriaViewModel);

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Container(
            child:Text("pending...")
          )
          // for(int i = 0; i <  cardEventResultsModel.cardEventResultModels.length; i++)
          //   CardEventResult(cardEventResultModel: cardEventResultsModel.cardEventResultModels[i], rank: i,),
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
      padding: const EdgeInsets.only(bottom: 10),
      child:TextButton(
        onPressed: (){
          
          showBarModalBottomSheet(
            // overlayStyle:SystemUiOverlayStyle(
            //   // statusBarColor: Colors.white, 
            //   statusBarBrightness: Brightness.dark,
            // ),
            // barrierColor: Colors.black,
            context: context,
            expand: true,
            // shape: const RoundedRectangleBorder(
            //     borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            //   ),
            builder: (context) {
              return CardRewardEvaluationDetailBottomUp(rank:rank, cardEventResultModel: cardEventResultModel,);
            },
          );

        },
        child:Container(
          padding: const EdgeInsets.fromLTRB(20,30,20,30),
          decoration: BoxDecoration(
            color:Palette.kToBlack[0],
            borderRadius: const BorderRadius.all(Radius.circular(20)),
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
      child:Text(name,
        style: const TextStyle(
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
      child:Text('Top $rank',
        style: const TextStyle(
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
          style:const TextStyle(
            fontSize: 12,
          )
        )
      );
    }else {
      // 固定回饋
      return Container(
        child:Text('折抵${feedback.getReturn}元',
          style:const TextStyle(
            fontSize: 12,
          )
        )
      );
    }

    
  }
}



class CardIcon extends StatelessWidget {
  const CardIcon({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.memory(
      gaplessPlayback: true,
      base64Decode(image), 
      width:80,
      height:50,
    );
  }
}
