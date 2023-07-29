

import 'package:flutter/material.dart';
import 'package:pickrewardapp/shared/viewmodel/card.item.dart';

class CardRewardViewModel with ChangeNotifier {

  final List<CardRewardModel> _cardRewardModels = [];

  get() => _cardRewardModels;


  Future<void> fetchCardRewards(String cardID) async{ 
    
    List<CardRewardDescModel> cardRewardDescs = [];
    cardRewardDescs[0] = CardRewardDescModel(
      name: '', 
      descs: ['你好', '妳好'], 
    );

    _cardRewardModels[0] = CardRewardModel(
      id: '', 
      cardID: cardID, 
      cardRewardDescs: cardRewardDescs, 
      currency: 0, 
      rewardType: 1, 
      startDate: 0, 
      endDate: 0,
    );
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
  final List<CardRewardDescModel> cardRewardDescs;
  final int currency;
  final int rewardType;
  final int order;
  final int createDate;
  final int updateDate;
  final int startDate;
  final int endDate;


  CardRewardModel({required this.id,
    required this.cardID,
    required this.cardRewardDescs,
    required this.currency,
    required this.rewardType,
    required this.startDate,
    required this.endDate,
  }):createDate=0, updateDate=0, order = 0;

}


class CardRewardDescModel {
  
  final String name;
  final int order;
  final List<String> descs;

  CardRewardDescModel({
    required this.name,
    required this.descs,
  }):order = 0;
}