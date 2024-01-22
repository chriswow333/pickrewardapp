


import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pickrewardapp/accounting/model/user_record.dart';

class RecordViewModel with ChangeNotifier {

  final String hiveKey = "pickrewardapp";
  final String userRecordsKey = "userRecords";

  String channelName = "";
  String channelID = "";
  DateTime recordTime = DateTime.now();
  int cost = 0;
  String cardName = "";
  String cardID = "";
  String cardRewardID = "";
  String cardRewardName = "";
  double getPercentage = 0.0;
  double getReturn = 0;
  String memo = "";
  

  Map<DateTime, List<UserRecord>> getUserRecords() {

    var box = Hive.box(hiveKey);
    
    try {

        Map<DateTime, List<UserRecord>> userRecordMapper = {};
        final userRecords = box.get(userRecordsKey);
        print(userRecords);
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

    var box = Hive.box(hiveKey);
    
    try {
      List<UserRecord>? userRecords = box.get(userRecordsKey);
      print(userRecords);
      userRecords ??= [];
      userRecords.add(userRecord);
      box.put(userRecordsKey, userRecords);
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
    cardName = "";
    cardID = "";
    cardRewardID = "";
    cardRewardName = "";
    getPercentage = 0.0;
    getReturn = 0;
    memo = "";
  }



}