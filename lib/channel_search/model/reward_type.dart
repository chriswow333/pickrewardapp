



enum RewardType implements Comparable<RewardType> {
  cash(type:0, name:"現金回饋"),
  point(type:1, name:"點數回饋"),
  ;

  const RewardType({
    required this.type,
    required this.name,
  });

  final int type;
  final String name;

  @override
  int compareTo(RewardType other) => type - other.type;

}