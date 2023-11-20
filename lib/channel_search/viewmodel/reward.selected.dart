
import 'package:flutter/material.dart';
import 'package:pickrewardapp/channel_search/model/channel.dart';


class RewardSelectedViewModel with ChangeNotifier{

  bool _sendedFindCard = false;
  set sendedFindCard(bool flag) {
    _sendedFindCard = flag;
    notifyListeners();
  }
  bool get sendedFindCard => _sendedFindCard;

  final Set<int> _labelIDs = {};
  set labelIDs(int labelID) {
      
    if(_labelIDs.contains(labelID)){
      _labelIDs.remove(labelID);
    }else {
      _labelIDs.add(labelID);
    }

    if(_sendedFindCard) {
      _sendedFindCard = false;
    }

    notifyListeners();
  }

  bool existSelectedLabelID(int labelID) {
    return _labelIDs.contains(labelID);
  }

  List<int> getAllLabelIDs(){
    return _labelIDs.toList();
  }


  final Map<String,ChannelItemModel> _channelItemModels = {};
  set channelID(ChannelItemModel channelItemModel) {

    if(_channelItemModels.containsKey(channelItemModel.id)){
      _channelItemModels.remove(channelItemModel.id);
    }else {
      _channelItemModels[channelItemModel.id] = channelItemModel;
    }

    if(_sendedFindCard) {
      _sendedFindCard = false;
    }
    notifyListeners();
  }

  bool existSelectedChannelID(String channelID) {
    return _channelItemModels.containsKey(channelID);
  }

  List<String> getChannelIDs(){
    return _channelItemModels.keys.toList();
  }

  List get channelItemModels => _channelItemModels.values.toList();


  resetChannelAndLabels(){
    _labelIDs.clear();
    _channelItemModels.clear();

    notifyListeners();
  }

  final Set<String> _payIDs = {};

  set payID(String payID) {
    if(_payIDs.contains(payID)) {
      _payIDs.remove(payID); 
    }else { 
      _payIDs.add(payID);
    } 

    if(_sendedFindCard) {
      _sendedFindCard = false;
    }

    notifyListeners();
  }

  bool existSelectedPayID(String payID) {
    return _payIDs.contains(payID);
  }
  List<String> getPayIDs(){
    return _payIDs.toList();
  }



  int _selectedCost = 1000;

  set cost(int cost){
    if (cost == _selectedCost) return;
    _selectedCost = cost;

    if(_sendedFindCard) {
      _sendedFindCard = false;
    }

    notifyListeners();
  } 
  
  int get cost => _selectedCost;

  DateTime _eventDate = DateTime.now();
  set eventDate(DateTime eventDate) {
    _eventDate = eventDate;
    
    if(_sendedFindCard) {
      _sendedFindCard = false;
    }

    notifyListeners();
  }
  DateTime get eventDate => _eventDate;
  

  int _selectedRewardType = 0;

  set rewardType(int rewardType) {
    if(rewardType == _selectedRewardType) {
      return;
    }

    _selectedRewardType = rewardType;

    if(_sendedFindCard) {
      _sendedFindCard = false;
    }

    notifyListeners();
  }

  int get rewardType => _selectedRewardType;

}


