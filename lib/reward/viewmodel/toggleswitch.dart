


import 'package:flutter/material.dart';


enum ToggleTypeEnum {Channel, Card}


class ToggleSwitchViewModel with ChangeNotifier{
  
  ToggleTypeEnum _type = ToggleTypeEnum.Channel;
  
  void toggle(){
    _type = _type == ToggleTypeEnum.Channel ? ToggleTypeEnum.Card : ToggleTypeEnum.Channel;
    notifyListeners();
  }

  ToggleTypeEnum get type{
    return _type;
  }
}