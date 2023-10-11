


import 'package:flutter/material.dart';

class EvaluationDetailToggleViewModel with ChangeNotifier {

  bool _expanded = false;


  void toggle(){
    _expanded = !_expanded;
    notifyListeners();
  }

  get expanded => _expanded;

}