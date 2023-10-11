


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/model/card_reward_type.dart';



class CardRewardTabViewModel with ChangeNotifier{
  
  CardRewardTypeEnum _selectedCardRewardType = CardRewardTypeEnum.evaluation;

  set changeCardRewardType(CardRewardTypeEnum cardRewardType){
    if(_selectedCardRewardType == cardRewardType) return;
    _selectedCardRewardType = cardRewardType;
    notifyListeners();
  }

  get cardRewardType  => _selectedCardRewardType;

}