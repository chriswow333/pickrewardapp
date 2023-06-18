



import 'package:flutter/material.dart';

class RewardSelectedViewModel with ChangeNotifier{

  RewardSelectedViewModel._internal();

  static final RewardSelectedViewModel _instance = RewardSelectedViewModel._internal();
  
  factory RewardSelectedViewModel() => _instance;

  final Set<String> _channelIDs = {};
  set channelID(String channelID) {

    if(_channelIDs.contains(channelID)){
      _channelIDs.remove(channelID);
    }else {
      _channelIDs.add(channelID);
    }
  }

  bool existSelectedChannelID(String channelID) {
    return _channelIDs.contains(channelID);
  }

  final Set<String> _payIDs = {};
  set payID(String payID) {
    if(_payIDs.contains(payID)) {
      _payIDs.remove(payID); 
    }else { 
      _payIDs.add(payID);
    } 

    // notifyListeners();
  }

  bool existSelectedPayID(String payID) {
    return _payIDs.contains(payID);
  }

  int _selectedCost = 1000;

  set cost(int cost){
    if (cost == _selectedCost) return;
    _selectedCost = cost;
    notifyListeners();
  } 
  
  int get cost => _selectedCost;

  
  




  int _rewardType = 0;
  set rewardType(int rewardType) {
    _rewardType = rewardType;
    notifyListeners();
  }
  
  int get rewardType => _rewardType;


  int _eventDate = DateTime.now().millisecondsSinceEpoch;
  set eventDate(int eventDate) {
    _eventDate = eventDate;
    notifyListeners();
  }
  int get eventDate => _eventDate;
  
}


