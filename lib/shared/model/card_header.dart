class CardHeaderItemModel {

  final String id;
  final String name;
  final List<String> descriptions;
  final String image;
  final int updateDate;
  final String lintUrl;
 

  CardHeaderItemModel({
    required this.id,
    required this.name,
    required this.descriptions,
    required this.image,
    required this.updateDate,
    required this.lintUrl,
  });
}