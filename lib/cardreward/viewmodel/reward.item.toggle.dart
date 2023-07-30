


import 'package:flutter/material.dart';

// enum CardContentEnum {ItemList, Item}


class CardRewardToggleViewModel with ChangeNotifier {

  bool _showItemList = true;

  int _cardRewardType = 0;
  String _rewardID = "";

  goToItem(int cardRewardType, String rewardID){
    _showItemList = false;
    _cardRewardType = cardRewardType;
    _rewardID = rewardID;
    notifyListeners();
  }

  backToItems(){
    _showItemList = true;
    notifyListeners();
  }

  bool isShowItemList () => _showItemList;

  String rewardID() => _rewardID;
  int cardRewardType() => _cardRewardType;

}
