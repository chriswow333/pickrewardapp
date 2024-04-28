import 'package:flutter/foundation.dart';
import 'package:pickrewardapp/pages/accounting/database/record.dart';
import 'package:pickrewardapp/pages/accounting/model/user_record.dart';
import 'package:uuid/uuid.dart';

class RecordViewModel with ChangeNotifier {



  UserRecord _record = UserRecord(id: const Uuid().v4(), recordTime:DateTime.now().millisecondsSinceEpoch);

  UserRecord get record => _record;
  toggleChannel(String id, String name) {
    _record.channelID = id;
    _record.channelName = name;
    notifyListeners();
  }
  
  card(String cardID, String cardName){
    _record.cardID = cardID;
    _record.cardName = cardName;
    notifyListeners();
  }

  cardReward(String cardRewardID, String cardRewardName) {
    _record.cardRewardID = cardRewardID;
    _record.cardRewardName = cardRewardName;
  }

  getReturn(getPercentage, getReturn) {
    _record.getPercentage = getPercentage;
    _record.getReturn = getReturn;
  }



  void saveUserRecord(){
    try {
      UserRecordDBHelper.modifiedUserRecord(_record);
    }catch(e) {
      print(e);
    }
  }

  resetUserRecordData(){
    _record = UserRecord(id: const Uuid().v4(), recordTime:DateTime.now().millisecondsSinceEpoch);
  }

  Map<DateTime, List<UserRecord>> userRecordMapper = {};

  Map<DateTime, List<UserRecord>> get userRecords => userRecordMapper;

  Future<Map<DateTime, List<UserRecord>>> fetchUserRecords() async {

    Map<DateTime, List<UserRecord>> data = {};
    
    try { 
        
      List<UserRecord> result =  await UserRecordDBHelper.getUsers();
        print(result);
      for(UserRecord userRecord in result) {
        DateTime recordTime = DateTime.fromMillisecondsSinceEpoch(userRecord.recordTime);
        DateTime keyTime = DateTime(recordTime.year, recordTime.month, recordTime.day);
        if (data.containsKey(keyTime)){
          data[keyTime]!.add(userRecord);
        }else {
          data[keyTime] = [userRecord];
        }
      }


      return data;

    

    }catch(e) {
      print(e);
      return {};
    }
  }


}