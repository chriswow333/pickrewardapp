


import 'package:flutter/material.dart';
import 'package:pickrewardapp/cardreward/viewmodel/cardreward.dart';

class EvaluationSelectedViewModel with ChangeNotifier {

  CardRewardModel? _cardRewardModel;

  set setCardRewardModel(CardRewardModel? cardRewardModel){
    _cardRewardModel = cardRewardModel;
  }

  CardRewardModel? get cardRewardModel => _cardRewardModel;

  bool _evaluated = false;
  set evaluated(bool action) { 
    _evaluated = action;
    notifyListeners();
  }
  bool get evaluated => _evaluated;
  


  Set<String> _channelIDs = {};
  setChannelID(String channelID) {
    _evaluated = false;
    if(_channelIDs.contains(channelID)){
      _channelIDs.remove(channelID);
    }else {
      _channelIDs.add(channelID);
    }
    
    notifyListeners();
  }
  Set<String> getChannelIDs() => _channelIDs;
  bool hasChannlID(String channelID){return _channelIDs.contains(channelID);}



  Set<String> _taskIDs = {};
  setTaskID(String taskID) {
    _evaluated = false;
    if(_taskIDs.contains(taskID)) {
      _taskIDs.remove(taskID);
    }else {
      _taskIDs.add(taskID);
    }
    notifyListeners();
  }
  Set<String>  getTaskIDs() => _taskIDs;
  bool hasTaskID(String taskID) {return _taskIDs.contains(taskID); }



  Set<String> _payIDs = {};
  setPayID(String payID) {
    _evaluated = false;

    if(_payIDs.contains(payID)) {
      _payIDs.remove(payID);
    }else {
      _payIDs.add(payID);  
    }
    notifyListeners();
  }
  Set<String> getPayIDs() => _payIDs;
  bool hasPayID(String payID){return _payIDs.contains(payID);}


  Set<int> _labels = {};
  setLabel(int label) {
    _evaluated = false;

    if(_labels.contains(label)) {
      _labels.remove(label);
    }else {
      _labels.add(label);
    }
    notifyListeners();
  }
  bool hasLabel(int label) {return _labels.contains(label);}
  Set<int> getLabels() => _labels;


  int _cost = 1000;
  setCost(int cost){
    _evaluated = false;
    _cost = cost;
    notifyListeners();
  }
  int getCost() => _cost;



  DateTime _costDate = DateTime.now();
  DateTime getCostDate() => _costDate;
  setCostDate(DateTime costDate){
    _evaluated = false;
    _costDate = costDate;
    notifyListeners();
  }


}