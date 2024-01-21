class CardHeaderItemModel {

  final String id;
  final String name;
  final String bankName;
  final List<String> descriptions;
  final String image;
  final int updateDate;
  final String linkUrl;
 

  CardHeaderItemModel({
    required this.id,
    required this.name,
    required this.bankName,
    required this.descriptions,
    required this.image,
    required this.updateDate,
    required this.linkUrl,
  });
}