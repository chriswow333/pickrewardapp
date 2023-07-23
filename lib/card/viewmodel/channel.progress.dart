


import 'package:flutter/material.dart';

enum ChannelProgressEnum {Channel, FindCard, FindResult}



class ChannelProgressViewModel with ChangeNotifier{
  
  ChannelProgressEnum _progress = ChannelProgressEnum.Channel;
  
  set progress(ChannelProgressEnum p){
    if(p == _progress)return;
    _progress = p;
    notifyListeners();
    
  }

  ChannelProgressEnum get progress{
    return _progress;
  }
}