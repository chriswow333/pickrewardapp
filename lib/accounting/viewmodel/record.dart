


import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pickrewardapp/accounting/model/user_record.dart';
import 'package:pickrewardapp/shared/config/pickreward_hivebox.dart';

class RecordViewModel with ChangeNotifier {


  RecordViewModel.forChannel(RecordViewModel recordViewModel){
    this.channelID =  recordViewModel.channelID;
    this.channelName = recordViewModel.channelName;
  }

  RecordViewModel(){}

  String channelName = "";
  String channelID = "";
  DateTime recordTime = DateTime.now();
  int cost = 0;

  toggleChannel(String id, String name) {
    channelID = id;
    channelName = name;
    notifyListeners();
  }
  
  String _cardName = "";
  set cardName (String cardName){
    _cardName = cardName;
    notifyListeners();
  }

  String get cardName => _cardName;
  
  String _cardID = "";
  set cardID(String cardID) {
    _cardID = cardID;
    notifyListeners();
  }
  String get cardID => _cardID;


  String cardRewardID = "";
  String cardRewardName = "";
  double getPercentage = 0.0;
  double getReturn = 0;
  String memo = "";


  Map<DateTime, List<UserRecord>> getUserRecords() {

    var box = Hive.box(PickRewardHiveBox.hiveKey);
    
    try {

        Map<DateTime, List<UserRecord>> userRecordMapper = {};
        final userRecords = box.get(PickRewardHiveBox.userRecordKey);
        if (userRecords == null) {
          return {};
        }
 
        for(UserRecord userRecord in userRecords) {
          DateTime recordTime = userRecord.recordTime??DateTime.now();
          DateTime keyTime = DateTime(recordTime.year, recordTime.month, recordTime.day);
          
          if (userRecordMapper.containsKey(keyTime)){
            userRecordMapper[keyTime]!.add(userRecord);
          }else {
            userRecordMapper[keyTime] = [userRecord];
          }
        }
        return userRecordMapper;

    }catch(e) {
      print(e);
    }finally{
      // box.close();
    }
    return {};
  }


  void setUserRecord() {

    UserRecord userRecord = UserRecord();
    userRecord.channelID = channelID;
    userRecord.channelName = channelName;
    userRecord.recordTime = recordTime;
    userRecord.cost = cost;
    userRecord.cardName = cardName;
    userRecord.cardID = cardID;
    userRecord.cardRewardID = cardRewardID;
    userRecord.cardRewardName = cardRewardName;
    userRecord.getPercentage = getPercentage; 
    userRecord.getReturn = getReturn;
    userRecord.memo = memo;

    var box = Hive.box(PickRewardHiveBox.hiveKey);
     
    try {
      List<dynamic>? userRecords = (box.get(PickRewardHiveBox.userRecordKey)) as List;
      print(userRecords);
      userRecords.add(userRecord);
      box.put(PickRewardHiveBox.userRecordKey, userRecords);
    }catch(e) {
      print(e);
    }finally {
      // box.close();
    } 
  }

  clearUserRecordData(){
    channelName = "";
    channelID = "";
    recordTime = DateTime.now();
    cost = 0;
    _cardName = "";
    _cardID = "";
    cardRewardID = "";
    cardRewardName = "";
    getPercentage = 0.0;
    getReturn = 0;
    memo = "";
  }

}