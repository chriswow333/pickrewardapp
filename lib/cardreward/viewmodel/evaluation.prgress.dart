


import 'package:flutter/material.dart';

enum EvaluationProgressEnum {
  Channel, Task, Evaluate
}


class EvaluationProgressViewModel with ChangeNotifier {
  EvaluationProgressEnum _progress = EvaluationProgressEnum.Channel;

  set (EvaluationProgressEnum progress) { 
    _progress = progress;
    notifyListeners();
  }
  get () => _progress;
    
}