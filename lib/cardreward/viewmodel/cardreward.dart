

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

        _cardRewardModels.add(CardRewardModel(
          id: c.id,
          cardID: c.cardID,
          name:c.name,
          cardRewardDesc:descModels,
          currency:c.currency,
          cardRewardType: c.cardRewardType,
          rewardType:c.rewardType,
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
  final int currency;
  final int cardRewardType;
  final int rewardType;
  final int order;
  final DateTime createDate;
  final DateTime updateDate;
  final DateTime startDate;
  final DateTime endDate;


  CardRewardModel({required this.id,
    required this.cardID,
    required this.name,
    required this.cardRewardDesc,
    required this.currency,
    required this.cardRewardType,
    required this.rewardType,
    required this.startDate,
    required this.endDate,
  }):createDate=DateTime.now(), updateDate=DateTime.now(), order = 0;

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