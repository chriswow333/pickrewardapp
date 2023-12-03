
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel.dart';
import 'package:pickrewardapp/channel_search/model/channel_label.dart';
import 'package:pickrewardapp/channel_search/model/cost.dart';
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

  List<String> getChannelLabelNames(List<int> channelLabels) {
    List<String> channelLabelNames = [];
    for(int channelLabel in channelLabels) {
      if(_channelLabelMap.containsKey(channelLabel)){
        channelLabelNames.add(_channelLabelMap[channelLabel]!.name);
      }
    }    
    return channelLabelNames;
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

  List<String> getChannelNames(List<String> channelIDs) {

    List<String> channelNames = [];
    for(String channelID in channelIDs) {
      if(_channelMap.containsKey(channelID)){
        channelNames.add(_channelMap[channelID]!.name);
      }
    }    

    return channelNames;
  }

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

  List<String> getTaskLabelsName(List<String> labels) {
    List<String> labelNames = [];
    for(String label in labels) {
       int? labelInt = int.tryParse(label);
       if(labelInt != null && _taskLabelMap.containsKey(labelInt)) {
        labelNames.add(_taskLabelMap[labelInt]!.name);
       }
    }
    return labelNames;
  }

/// reward type

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
  CostStatusEnum _cost = CostStatusEnum.less;
  set cost(CostStatusEnum cost){
    _cost = cost;
    notifyListeners();
  }

  CostStatusEnum get cost => _cost;

}


