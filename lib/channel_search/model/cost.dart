


enum CostStatusEnum implements Comparable<CostStatusEnum> {
  less(status:0, name:"小小刷", value:1000),
  medium(status:1, name:"節制刷", value:5000),
  more(status:2, name:"用力刷", value:10000),
  ;

  const CostStatusEnum({
    required this.status,
    required this.name,
    required this.value,
  });

  final int status;
  final String name;
  final int value;

  @override
  int compareTo(CostStatusEnum other) => status - other.status;

}