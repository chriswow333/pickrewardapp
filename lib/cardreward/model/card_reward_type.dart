

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
