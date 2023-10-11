


import 'package:flutter/material.dart';



class ChannelProgressSelectedPage with ChangeNotifier{
  int _page = 0;
  
  changePage(int page) {
    _page = page;
    notifyListeners();
  }

  int get page => _page;

}