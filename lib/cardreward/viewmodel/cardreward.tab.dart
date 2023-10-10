


import 'package:flutter/material.dart';


enum CardRewardTypeEnum implements Comparable<CardRewardTypeEnum> {

  activity(cardRewardType:0),
  evaluation(cardRewardType:1)
  ;

  const CardRewardTypeEnum({
    required this.cardRewardType,   
  });

  final int cardRewardType;
  
  @override
  int compareTo(CardRewardTypeEnum other) => cardRewardType - other.cardRewardType;
}

class CardRewardTabViewModel with ChangeNotifier{
  
  CardRewardTypeEnum _selectedCardRewardType = CardRewardTypeEnum.evaluation;

  set changeCardRewardType(CardRewardTypeEnum cardRewardType){
    if(_selectedCardRewardType == cardRewardType) return;
    _selectedCardRewardType = cardRewardType;
    notifyListeners();
  }

  get cardRewardType  => _selectedCardRewardType;

}