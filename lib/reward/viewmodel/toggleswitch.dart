


import 'package:flutter/material.dart';


enum ToggleTypeEnum {Channel, Card}


class ToggleSwitchViewModel with ChangeNotifier{
  
  ToggleTypeEnum _type = ToggleTypeEnum.Channel;
  
  set toggle(ToggleTypeEnum toggleTypeEnum) {
    _type = toggleTypeEnum;
    notifyListeners();
  }

  ToggleTypeEnum get type{
    return _type;
  }
}