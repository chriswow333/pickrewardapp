
enum PayUsageEnum implements Comparable<PayUsageEnum> {
  whatever(status:0, name:"都可以"),
  use(status:1, name:"要使用"),
  no(status:2, name:"不使用"),
  ;

  const PayUsageEnum({
    required this.status,
    required this.name,
  });

  final int status;
  final String name;

  @override
  int compareTo(PayUsageEnum other) => status - other.status;

}