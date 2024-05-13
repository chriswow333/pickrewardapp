class CardHeaderItemModel {

  final String id;
  final String name;
  final String bankName;
  final String imageName;
  final List<String> descriptions;
  final int createDate;
  final int updateDate;
  final String linkUrl;
 

  CardHeaderItemModel({
    required this.id,
    required this.name,
    required this.bankName,
    required this.imageName,
    required this.descriptions,
    required this.createDate,
    required this.updateDate,
    required this.linkUrl,
  });
}