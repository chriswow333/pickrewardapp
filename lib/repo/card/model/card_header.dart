class CardHeaderItemModel {

  final String id;
  final String name;
  final String bankName;
  final List<String> descriptions;
  final int createDate;
  final int updateDate;
  final String linkUrl;
 

  CardHeaderItemModel({
    required this.id,
    required this.name,
    required this.bankName,
    required this.descriptions,
    required this.createDate,
    required this.updateDate,
    required this.linkUrl,
  });
}