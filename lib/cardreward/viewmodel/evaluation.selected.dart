


import 'package:flutter/material.dart';

class EvaluationSelectedViewModel with ChangeNotifier {

  Set<String> _channelIDs = {};
  Set<String> _taskIDs = {};
  Set<String> _payIDs = {};
  Set<int> _labels = {};
  DateTime _costDate = DateTime.now();
  int _cost = 1000;

  setChannelID(String channelID) {
    if(_channelIDs.contains(channelID)){
      _channelIDs.remove(channelID);
    }else {
      _channelIDs.add(channelID);
    }
    
    notifyListeners();
  }

  Set<String> getChannelIDs() => _channelIDs;
  
  bool hasChannlID(String channelID){
    return _channelIDs.contains(channelID);
  }


  setTaskID(String taskID) {
    if(_taskIDs.contains(taskID)) {
      _taskIDs.remove(taskID);
    }else {
      _taskIDs.add(taskID);
    }
    
    notifyListeners();
  }

  Set<String>  getTaskIDs() => _taskIDs;

  bool hasTaskID(String taskID) {
    return _taskIDs.contains(taskID);
  }

  setPayID(String payID) {
    if(_payIDs.contains(payID)) {
      _payIDs.remove(payID);
    }else {
      _payIDs.add(payID);  
    }
    notifyListeners();
  }

  Set<String> getPayIDs() => _payIDs;

  bool hasPayID(String payID){
    return _payIDs.contains(payID);
  }



  setLabel(int label) {
    if(_labels.contains(label)) {
      _labels.remove(label);
    }else {
      _labels.add(label);
    }
    notifyListeners();
  }

  bool hasLabel(int label) {
    return _labels.contains(label);
  }

  Set<int> getLabels() => _labels;



  setCost(int cost){
    _cost = cost;
    notifyListeners();
  }

  int getCost() => _cost;

  setCostDate(DateTime costDate){
    _costDate = costDate;
    notifyListeners();
  }

  DateTime getCostDate() => _costDate;


}