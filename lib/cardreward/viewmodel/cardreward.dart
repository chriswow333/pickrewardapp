

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/shared/repository/card/card.dart';
import 'package:pickrewardapp/shared/repository/card/proto/generated/card.pbgrpc.dart';
import 'package:pickrewardapp/card/viewmodel/card.item.dart';

class CardRewardViewModel with ChangeNotifier {

  final List<CardRewardModel> _cardRewardModels = [];

  List<CardRewardModel> get() => _cardRewardModels;

  final Map<String, bool> _cardRewardExpanded = {};

  CardRewardModel? expandedCardRewardEvaluation;


  CardRewardViewModel(String cardID) {
    CardService().init();
    _fetchCardRewards(cardID);
  }


  void toggleCardReward(String cardRewardID) {
    _cardRewardExpanded[cardRewardID] = !_cardRewardExpanded[cardRewardID]!;
    
    for(CardRewardModel c in _cardRewardModels) {
      if(c.id == cardRewardID) {
        if(c.cardRewardType == 1) {
          if(expandedCardRewardEvaluation == null) {
            expandedCardRewardEvaluation = c;
          }else {
            expandedCardRewardEvaluation = null;
          }
        }else {
          expandedCardRewardEvaluation = null; 
        }
        break;
      }
    }

    notifyListeners();
  }

  bool getCardRewardExpandStatus(String cardRewardID) {
    return _cardRewardExpanded[cardRewardID]!;
  }
  


  static int initLimit = 1000;
  static int initOffset = 0;
  Future<void> _fetchCardRewards(String cardID) async{ 
    
    if (_cardRewardModels.isNotEmpty) return;

    try {
      
      CardRewardsByCardIDReq cardRewardsByCardIDReq = CardRewardsByCardIDReq();
      cardRewardsByCardIDReq.cardID = cardID;
      cardRewardsByCardIDReq.limit = initLimit;
      cardRewardsByCardIDReq.offset = initOffset;

      
      CardRewardsReply cardRewardsReply = await CardService().cardClient.getCardRewardsByCardID(cardRewardsByCardIDReq);

      for(final c in cardRewardsReply.cardRewards) {


        CardRewardModel cardRewardModel = CardRewardModel(
          id: c.id,
          cardID: c.cardID,
          name:c.name,
          descriptions:c.descriptions
            .map((d) => DescriptionModel(
              name:d.name,
              order:d.order,
              desc: d.desc,
            )).toList(),
          createDate: DateTime.fromMillisecondsSinceEpoch(c.createDate.toInt()*1000),
          updateDate: DateTime.fromMillisecondsSinceEpoch(c.updateDate.toInt()*1000),
          startDate:DateTime.fromMillisecondsSinceEpoch(c.startDate.toInt()*1000),
          endDate:DateTime.fromMillisecondsSinceEpoch(c.endDate.toInt()*1000), 
          cardRewardType: c.cardRewardType,
          reward: RewardModel(
            id:c.reward.id,
            name:c.reward.name,
            rewardType: c.reward.rewardType,
            createDate: c.reward.createDate.toInt(),
            updateDate:c.reward.updateDate.toInt(),
          ),
          order: c.order,
        );


        _cardRewardModels.add(cardRewardModel);

        _cardRewardExpanded[c.id] = false;
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
}


class CardHeaderViewModel with ChangeNotifier {
  final CardHeaderItemModel _cardHeaderItemModel;
  CardHeaderViewModel(this._cardHeaderItemModel);
  get cardHeaderItemModel => _cardHeaderItemModel;
}


class CardRewardModel {

  final String id;
  final String cardID;
  final String name;
  final List<DescriptionModel> descriptions;
  final DateTime createDate;
  final DateTime updateDate;

  final DateTime startDate;
  final DateTime endDate;
  final int cardRewardType;
  final RewardModel reward;
  final int order;


  CardRewardModel({
    required this.id,
    required this.cardID,
    required this.name,
    required this.descriptions,
    required this.createDate,
    required this.updateDate,
    required this.startDate,
    required this.endDate,
    required this.cardRewardType,
    required this.reward,
    required this.order,
  });

}

class RewardModel {
  final String id;
  final String name;
  final int rewardType;
  final int createDate;
  final int updateDate;
  RewardModel({required this.id, required this.rewardType, required this.name, required this.createDate, required this.updateDate});
}

class DescriptionModel {
  
  final String name;
  final int order;
  final List<String> desc;

  DescriptionModel({
    required this.name,
    required this.order,
    required this.desc,
  });
}