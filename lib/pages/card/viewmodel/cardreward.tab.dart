


import 'package:flutter/material.dart';



enum ShowStatus {
  all,
  evaluation,
  others,
}

class CardRewardTabViewModel with ChangeNotifier{
  
  ShowStatus _showStatus = ShowStatus.all;

  set showAll(ShowStatus status){
    _showStatus = status;
    notifyListeners();
  }

  ShowStatus get showStatus  => _showStatus;

}