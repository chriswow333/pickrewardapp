


import 'package:hive/hive.dart';

part 'user_record.g.dart';

@HiveType(typeId: 0)
class UserRecord extends HiveObject {
  
  @HiveField(0)
  String? channelName;
  
  @HiveField(1)
  String? channelID;

  @HiveField(2)
  String? selfFillChannel;

  @HiveField(3)
  DateTime? recordTime;
  
  @HiveField(4)
  int? cost;
  
  @HiveField(5)
  String? cardName;
  
  @HiveField(6)
  String? cardID;
  
  @HiveField(7)
  String? cardRewardID;
  
  @HiveField(8)
  String? cardRewardName;
  
  @HiveField(9) 
  double? getPercentage;
  
  @HiveField(10)
  double? getReturn;

  @HiveField(11)
  String? memo;

}

