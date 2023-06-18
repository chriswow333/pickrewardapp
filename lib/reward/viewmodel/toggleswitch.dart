


import 'package:flutter/material.dart';


enum ToggleTypeEnum {Channel, Card}


class ToggleSwitchViewModel with ChangeNotifier{
  
  ToggleTypeEnum _type = ToggleTypeEnum.Channel;
  
  set toggle(ToggleTypeEnum toggleTypeEnum) {
    if (_type == toggleTypeEnum) return;
    
    _type = toggleTypeEnum;
    notifyListeners();
  }

  ToggleTypeEnum get type{
    return _type;
  }
}