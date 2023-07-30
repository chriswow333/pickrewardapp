


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';

// enum CardContentEnum {ItemList, Item}


class CardRewardSelectedViewModel with ChangeNotifier {

  bool _showItemList = true;


  CardRewardModel? _selectedCardRewardModel;

  goToCardRewardItem(CardRewardModel cardRewardModel){
    _selectedCardRewardModel = cardRewardModel;
    _showItemList = false;
    notifyListeners();
  }

  CardRewardModel? getSelectedCardRewardModel() => _selectedCardRewardModel;

  backToItems(){
    _showItemList = true;
    notifyListeners();
  }

  bool isShowItemList () => _showItemList;
  
  String rewardID() {
    if (_selectedCardRewardModel == null )return "";
    return _selectedCardRewardModel!.id;

  }

  int cardRewardType(){
    if (_selectedCardRewardModel == null) return 0;
    return _selectedCardRewardModel!.cardRewardType;
  }

}
