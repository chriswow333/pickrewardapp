


import 'package:flutter/material.dart';


class ChannelProgressPage {
  static int channel = 0;
  static int findCard = 1;
  static int result = 2;
}


class ChannelProgressSelectedPage with ChangeNotifier{
  int _page = 0;
  
  changePage(int page) {
    _page = page;
    notifyListeners();
  }

  int get page => _page;

}