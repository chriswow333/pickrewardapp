
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel.dart';
import 'package:pickrewardapp/channel_search/model/channel_label.dart';
import 'package:pickrewardapp/channel_search/model/pay_usage.dart';
import 'package:pickrewardapp/channel_search/model/reward_type.dart';
import 'package:pickrewardapp/channel_search/model/task_label.dart';


class CriteriaViewModel with ChangeNotifier{


/// Channel Progress

/// channel label
  final Map<int, ChannelLabelModel> _channelLabelMap = {};
  set channelLabel(ChannelLabelModel channelLabel) {
    
    if(_channelLabelMap.containsKey(channelLabel.label)) {
      _channelLabelMap.remove(channelLabel.label);
    }else {
      _channelLabelMap[channelLabel.label] = channelLabel;
    }

    notifyListeners();
  }

  List<ChannelLabelModel> get channelLabels => _channelLabelMap.values.toList();

  bool existChannelLabel(int label){
    return _channelLabelMap.containsKey(label);
  }

/// channel 
  final Map<String,ChannelItemModel> _channelMap = {};
  set channel(ChannelItemModel channelItemModel) {

    if(_channelMap.containsKey(channelItemModel.id)){
      _channelMap.remove(channelItemModel.id);
    }else {
      _channelMap[channelItemModel.id] = channelItemModel;
    }
    notifyListeners();
  }

  bool existChannel(String channelID) {
    return _channelMap.containsKey(channelID);
  }

  List<String> getChannelIDs() {
    return _channelMap.keys.toList();
  }

  List<ChannelItemModel> get channelItemModels => _channelMap.values.toList();


/// reset channel progress
  void resetChannelAndChannelLabels(){
    _channelMap.clear();
    _channelLabelMap.clear();
    notifyListeners();
  }



/// cost date
  DateTime _date = DateTime.now();
  set date(DateTime date) {
    _date = date;
    notifyListeners();
  }
  DateTime get date => _date;


/// task label
  final Map<int, TaskLabelModel> _taskLabelMap = {};
  set taskLabel(TaskLabelModel taskLabel) {
    
    if(_taskLabelMap.containsKey(taskLabel.label)) {
      _taskLabelMap.remove(taskLabel.label);
    }else {
      _taskLabelMap[taskLabel.label] = taskLabel;
    }

    notifyListeners();
  }

  bool existTaskLabel(int label) {
    return _taskLabelMap.containsKey(label);
  }

  List<TaskLabelModel> get taskLabels => _taskLabelMap.values.toList();


  RewardType _rewardType = RewardType.cash;
  set rewardType(RewardType rewardType) {
    if(rewardType == _rewardType) {
      return;
    }
    _rewardType = rewardType;

    notifyListeners();
  }
  RewardType get rewardType => _rewardType;


  PayUsageEnum _payUsage = PayUsageEnum.whatever;
  set payUsage(PayUsageEnum payUsage) {
    _payUsage = payUsage;
    notifyListeners();
  }
  PayUsageEnum get payUsage => _payUsage;


  void resetCriteriaPage(){
    _date = DateTime.now();
    _taskLabelMap.clear();
    _payUsage = PayUsageEnum.whatever;
    _rewardType = RewardType.cash;

    notifyListeners();

  }





/// result page

/// cost 
  int _cost = 1000;
  set cost(int cost){
    _cost = cost;
    notifyListeners();
  }
  int get cost => _cost;




  // final Set<String> _payIDs = {};

  // set payID(String payID) {
  //   if(_payIDs.contains(payID)) {
  //     _payIDs.remove(payID); 
  //   }else { 
  //     _payIDs.add(payID);
  //   } 

  //   // if(_sendedFindCard) {
  //   //   _sendedFindCard = false;
  //   // }

  //   notifyListeners();
  // }

  // bool existSelectedPayID(String payID) {
  //   return _payIDs.contains(payID);
  // }
  // List<String> getPayIDs(){
  //   return _payIDs.toList();
  // }



  // int _selectedCost = 1000;

  // set cost(int cost){
  //   if (cost == _selectedCost) return;
  //   _selectedCost = cost;

  //   // if(_sendedFindCard) {
  //   //   _sendedFindCard = false;
  //   // }

  //   notifyListeners();
  // } 
  
  // int get cost => _selectedCost;

  // DateTime _eventDate = DateTime.now();
  // set eventDate(DateTime eventDate) {
  //   _eventDate = eventDate;
    
  //   // if(_sendedFindCard) {
  //   //   _sendedFindCard = false;
  //   // }

  //   notifyListeners();
  // }
  // DateTime get eventDate => _eventDate;
  


}


