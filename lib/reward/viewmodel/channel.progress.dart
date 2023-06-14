


import 'package:flutter/material.dart';

enum ChannelProgressEnum {Channel, FindCard, Result}



class ChannelProgressViewModel with ChangeNotifier{
  
  ChannelProgressEnum _progress = ChannelProgressEnum.Channel;
  
  set progress(ChannelProgressEnum p){
    _progress = p;
    notifyListeners();
  }

  ChannelProgressEnum get progress{
    return _progress;
  }
}