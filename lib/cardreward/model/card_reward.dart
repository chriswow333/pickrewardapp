class CardRewardModel {

  final String id;
  final String cardID;
  final String name;
  final List<DescriptionModel> descriptions;
  final DateTime createDate;
  final DateTime updateDate;

  final DateTime startDate;
  final DateTime endDate;
  final int cardRewardType;
  final RewardModel reward;
  final int order;
  final List<TaskModel> tasks;


  CardRewardModel({
    required this.id,
    required this.cardID,
    required this.name,
    required this.descriptions,
    required this.createDate,
    required this.updateDate,
    required this.startDate,
    required this.endDate,
    required this.cardRewardType,
    required this.reward,
    required this.order,
    required this.tasks,
  });

}


class TaskModel{
  final String name;
  final String shortName;
  final int order;
  final List<DescriptionModel> descriptions;


  TaskModel({
    required this.name,
    required this.shortName,
    required this.order,
    required this.descriptions,
  });

}

class RewardModel {
  final String id;
  final String name;
  final int rewardType;
  final int createDate;
  final int updateDate;
  RewardModel({required this.id, required this.rewardType, required this.name, required this.createDate, required this.updateDate});
}

class DescriptionModel {
  
  final String name;
  final int order;
  final List<String> desc;

  DescriptionModel({
    required this.name,
    required this.order,
    required this.desc,
  });
}