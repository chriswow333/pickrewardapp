

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/cardreward/repository/cardreward/cardreward.dart';
import 'package:pickrewardapp/cardreward/repository/cardreward/proto/generated/card.pbgrpc.dart';
import 'package:pickrewardapp/shared/viewmodel/card.item.dart';

class CardRewardViewModel with ChangeNotifier {

  final List<CardRewardModel> _cardRewardModels = [];

  List<CardRewardModel> get() => _cardRewardModels;


  CardRewardViewModel(String cardID) {
    CardRewardService().init();
    _fetchCardRewards(cardID);
  }


  Future<void> _fetchCardRewards(String cardID) async{ 
    
    if (_cardRewardModels.isNotEmpty) return;

    try {
      
      CardIDProto cardIDProto = CardIDProto();
      cardIDProto.cardID = cardID;
      
      CardRewardsReply cardRewardsReply = await CardRewardService().cardClient.getCardRewardsByCardID(cardIDProto);

      for(final c in cardRewardsReply.cardRewards) {
        

        List<CardRewardDescModel> descModels = [];

        for (final d in c.cardRewardDescriptions){
          descModels.add(CardRewardDescModel(
            name:d.name,
            desc: d.desc,
          ));
        }

        CardRewardTypeEvaluationResp cardRewardTypeEvaluationResp = CardRewardTypeEvaluationResp(
          reward: toReward(c.cardRewardTypeEvaluationResp.reward),
          currency: toCurrency(c.cardRewardTypeEvaluationResp.currency),
          point: toPoint(c.cardRewardTypeEvaluationResp.point),
        );


        _cardRewardModels.add(CardRewardModel(
          id: c.id,
          cardID: c.cardID,
          name:c.name,
          cardRewardDesc:descModels,
          cardRewardType: c.cardRewardType,
          cardRewardTypeEvaluationResp: cardRewardTypeEvaluationResp,
          startDate:DateTime.fromMillisecondsSinceEpoch(c.startDate.toInt()),
          endDate:DateTime.fromMillisecondsSinceEpoch(c.endDate.toInt()), 
        ));

      }

          
      notifyListeners();

     } on GrpcError catch (e) {
      ///handle all grpc errors here
      ///errors such us UNIMPLEMENTED,UNIMPLEMENTED etc...
      print(e);
    } catch (e) {
      ///handle all generic errors here
      print(e);
    }

  }

  Reward toReward(RewardProto reward){
    return Reward(rewardType: reward.rewardType, rewardName: reward.rewardName);
  }
  
  Currency toCurrency(CurrencyProto currency){
    return Currency(currencyType: currency.currencyType, currencyName: currency.currencyName);
  }

  Point toPoint(PointProto point){
    return Point(pointType: point.pointType, pointName: point.pointName);
  }

}


class CardViewModel with ChangeNotifier {
  final CardItemModel cardItemModel;
  CardViewModel(this.cardItemModel);
  get() => cardItemModel;
}


class CardRewardModel {

  final String id;
  final String cardID;
  final String name;
  final List<CardRewardDescModel> cardRewardDesc;
  final int cardRewardType;
  final CardRewardTypeEvaluationResp cardRewardTypeEvaluationResp;
  final int order;
  final DateTime createDate;
  final DateTime updateDate;
  final DateTime startDate;
  final DateTime endDate;


  CardRewardModel({required this.id,
    required this.cardID,
    required this.name,
    required this.cardRewardDesc,
    required this.cardRewardType,
    required this.cardRewardTypeEvaluationResp,
    required this.startDate,
    required this.endDate,
  }):createDate=DateTime.now(), updateDate=DateTime.now(), order = 0;

}


class CardRewardTypeEvaluationResp {
  final Reward reward;
  final Currency currency;
  final Point point;

  CardRewardTypeEvaluationResp({required this.reward,required  this.currency,required  this.point});
}

class Reward {
  
  final int rewardType;
  final String rewardName;

  Reward({required this.rewardType, required this.rewardName});
}

class Currency {

  final int currencyType;
  final String currencyName;
  Currency({required this.currencyType, required this.currencyName});
}

class Point {
  final int pointType;
  final String pointName;
  Point({required this.pointType, required this.pointName});
}

class CardRewardDescModel {
  
  final String name;
  final int order;
  final List<String> desc;

  CardRewardDescModel({
    required this.name,
    required this.desc,
  }):order = 0;
}