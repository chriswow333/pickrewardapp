
import 'package:flutter/material.dart';


enum RewardTypeEnum { 
  CASH,
  POINT;

}



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


  RewardTypeEnum _rewardType = RewardTypeEnum.CASH;

  set rewardType(RewardTypeEnum rewardType) {
    _rewardType = rewardType;
    notifyListeners();
  }
  
  bool isSelectedRewardType(RewardTypeEnum rewardType){
    return _rewardType == rewardType;
  }

  RewardTypeEnum get rewardType => _rewardType;




  DateTime _eventDate = DateTime.now();
  set eventDate(DateTime eventDate) {
    _eventDate = eventDate;
    notifyListeners();
  }
  DateTime get eventDate => _eventDate;
  


  // RewardWayEnum _rewardWay = RewardWayEnum.CASH;
  // set rewardWay(RewardWayEnum rewardWay) {
  //   _rewardWay = rewardWay;
  //   notifyListeners();
  // }

  // RewardWayEnum get rewardWay => _rewardWay;

}


