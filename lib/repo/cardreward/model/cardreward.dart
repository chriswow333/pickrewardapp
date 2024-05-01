


enum CardRewardTypeEnum implements Comparable<CardRewardTypeEnum> {

  activity(cardRewardType:0),
  evaluation(cardRewardType:1)
  ;

  const CardRewardTypeEnum({
    required this.cardRewardType,   
  });

  final int cardRewardType;
  
  @override
  int compareTo(CardRewardTypeEnum other) => cardRewardType - other.cardRewardType;
}


class CardRewardModel {

  final String id;
  final String cardID;
  final String name;
  final List<DescriptionModel> descriptions;
  final DateTime startDate;
  final DateTime endDate;
  final int cardRewardType;
  final FeedbackType feedbackType;
  final List<TaskLabelModel> taskLabels;
  final int order;
  final int cardRewardStatus;
  final DateTime createDate;
  final DateTime updateDate;



  CardRewardModel({
    required this.id,
    required this.cardID,
    required this.name,
    required this.descriptions,
    required this.startDate,
    required this.endDate,
    required this.cardRewardType,
    required this.feedbackType,
    required this.taskLabels,
    required this.order,
    required this.cardRewardStatus,
    required this.createDate,
    required this.updateDate,
  });

}


class TaskLabelModel{
  final String label;
  final String name;
  final int order;
  final int show;

  TaskLabelModel({
    required this.label,
    required this.name,
    required this.order,
    required this.show,
  });

} 

class FeedbackType {
  final String id;
  final String name;
  final int feedbackType;
  final DateTime createDate;
  final DateTime updateDate;

  FeedbackType({
    required this.id, 
    required this.name, 
    required this.feedbackType, 
    required this.createDate, 
    required this.updateDate
  });

  
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