
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

  List<String> getChannelIDs(){
    return _channelIDs.toList();
  }

  final Set<String> _payIDs = {};

  set payID(String payID) {
    if(_payIDs.contains(payID)) {
      _payIDs.remove(payID); 
    }else { 
      _payIDs.add(payID);
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
    notifyListeners();
  } 
  
  int get cost => _selectedCost;

  DateTime _eventDate = DateTime.now();
  set eventDate(DateTime eventDate) {
    _eventDate = eventDate;
    notifyListeners();
  }
  DateTime get eventDate => _eventDate;
  

  int _selectedRewardType = 0;

  set rewardType(int rewardType) {
    if(rewardType == _selectedRewardType) {
      return;
    }
    _selectedRewardType = rewardType;
    notifyListeners();
  }

  int get rewardType => _selectedRewardType;

}


