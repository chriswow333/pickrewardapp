


import 'package:flutter/material.dart';

// enum CardContentEnum {ItemList, Item}


class CardRewardToggleViewModel with ChangeNotifier {

  bool _showItemList = true;

  int _rewardType = 0;
  String _rewardID = "";

  goToItem(int rewardType, String rewardID){
    _showItemList = false;
    _rewardType = rewardType;
    _rewardID = rewardID;
    notifyListeners();
  }

  backToItems(){
    _showItemList = true;
    notifyListeners();
  }

  bool isShowItemList () => _showItemList;

  String rewardID() => _rewardID;
  int rewardType() => _rewardType;

}
