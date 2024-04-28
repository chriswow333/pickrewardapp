
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel/model/channel.dart';
import 'package:pickrewardapp/channel/model/cost.dart';
import 'package:pickrewardapp/channel/model/payusage.dart';
import 'package:pickrewardapp/channel/model/rewardtype.dart';
import 'package:pickrewardapp/channel/model/tasklabel.dart';


class CriteriaViewModel with ChangeNotifier{

/// Channel Progress

/// channel label
  final Map<String, ShowLabelModel> _channelLabelMap = {};

  set channelLabel(ShowLabelModel channelLabel) {
    if(_channelLabelMap.containsKey(channelLabel.label)) {
      _channelLabelMap.remove(channelLabel.label);
    }else {
      _channelLabelMap[channelLabel.label] = channelLabel;
    }
    notifyListeners();
  }

  List<ShowLabelModel> get channelLabels => _channelLabelMap.values.toList();

  bool existChannelLabel(String label){
    return _channelLabelMap.containsKey(label);
  }

  List<String> getChannelLabelNames(List<String> channelLabels) {
    List<String> channelLabelNames = [];
    for(String channelLabel in channelLabels) {
      if(_channelLabelMap.containsKey(channelLabel)){
        channelLabelNames.add(_channelLabelMap[channelLabel]!.name);
      }
    }
    return channelLabelNames;
  }

/// channel 
  final Map<String,ChannelItemModel> _channelMap = {};
  List<ChannelItemModel> get channelItemModels => _channelMap.values.toList();


  set channel(ChannelItemModel channelItemModel) {
    if(_channelMap.containsKey(channelItemModel.id)){
      _channelMap.remove(channelItemModel.id);
    }else {
      _channelMap[channelItemModel.id] = channelItemModel;
    }
    notifyListeners();
  }

  void removeChannels(List<String> channelIDs) {
    for(String channelID in channelIDs) {
      _channelMap.remove(channelID);
    }
    notifyListeners();
  }

  void removeChannelLabels(List<String> channelLabels) {
    for(final label in channelLabels) {
      _channelLabelMap.remove(label);
    }
    notifyListeners();
  }

  bool existChannel(String channelID) {
    return _channelMap.containsKey(channelID);
  }

  List<String> getChannelIDs() {
    return _channelMap.keys.toList();
  }


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
  final Set<int> _initTaskLabels = {};
  set setInitTaskLabels(TaskLabelModel t) {
    _taskLabelMap[t.label] = t;
    _initTaskLabels.add(t.label);
  }
  bool existInitTaskLabels(int label) {
    return _initTaskLabels.contains(label);
  }
  
  final Map<int, TaskLabelModel> _taskLabelMap = {};
  List<TaskLabelModel> get taskLabels => _taskLabelMap.values.toList();

  set allTaskLabel(List<TaskLabelModel> taskLabel) {
    for(TaskLabelModel t in taskLabel) {
      _taskLabelMap[t.label] = t;
    }
    notifyListeners();
  }

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
  PayUsageEnum get payUsage => _payUsage;


  set payUsage(PayUsageEnum payUsage) {
    _payUsage = payUsage;
    notifyListeners();
  }


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


