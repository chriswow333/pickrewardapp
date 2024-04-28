
class UserRecord  {
  
  String id;

  int recordTime;
  int? cost; 

  String? selfFillChannel;

  String? channelName;
  String? channelID; 
  
  String? cardID;
  String? cardName;
  String? cardRewardID;
  String? cardRewardName;

  double? getPercentage;
  double? getReturn;

  String? memo;

  UserRecord({required this.id, required this.recordTime});
  
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'record_time': recordTime,
      'cost':cost,
      'self_fill_channel':selfFillChannel,
      'channel_id': channelID,
      'channel_name': channelName,
      'card_id':cardID,
      'card_name':cardName,
      'card_reward_id':cardRewardID,
      'card_reward_name':cardRewardName,
      'get_percentage':getPercentage,
      'get_return':getReturn,
      'memo':memo,
    };
  }
}

