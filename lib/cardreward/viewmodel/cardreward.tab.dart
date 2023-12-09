


import 'package:flutter/material.dart';



class CardRewardTabViewModel with ChangeNotifier{
  
  bool _showAll = true;

  set showAll(bool value){
    _showAll = value;
    notifyListeners();
  }

  bool get showAll  => _showAll;

}