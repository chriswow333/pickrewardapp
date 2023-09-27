

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


        RewardProto rewardProto = c.reward;

        RewardModel reward = RewardModel(
          id:rewardProto.id,
          name:rewardProto.name,
          rewardType: rewardProto.rewardType,
          createDate: rewardProto.createDate.toInt(),
          updateDate:rewardProto.updateDate.toInt(),
        );

        _cardRewardModels.add(CardRewardModel(
          id: c.id,
          cardID: c.cardID,
          name:c.name,
          cardRewardDesc:descModels,
          cardRewardType: c.cardRewardType,
          reward: reward,
          startDate:DateTime.fromMillisecondsSinceEpoch(c.startDate.toInt()*1000),
          endDate:DateTime.fromMillisecondsSinceEpoch(c.endDate.toInt()*1000), 
          evaluationRespProto:c.evaluationResp, 
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
  final RewardModel reward;
  final int order;
  final DateTime createDate;
  final DateTime updateDate;
  final DateTime startDate;
  final DateTime endDate;
  final EvaluationRespProto evaluationRespProto;


  CardRewardModel({
    required this.id,
    required this.cardID,
    required this.name,
    required this.cardRewardDesc,
    required this.cardRewardType,
    required this.reward,
    required this.startDate,
    required this.endDate,
    required this.evaluationRespProto,

  }):createDate=DateTime.now(), updateDate=DateTime.now(), order = 0;

}

class RewardModel {
  final String id;
  final String name;
  final int rewardType;
  final int createDate;
  final int updateDate;
  RewardModel({required this.id, required this.rewardType, required this.name, required this.createDate, required this.updateDate});
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