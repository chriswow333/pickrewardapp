class CardItemModel {

  final String id;
  final String name;
  final List<String> descriptions;
  final String linkURL;
  final String bankID;
  final String imageName;
  final int order;
  final int cardStatus;
  final int createDate;
  final int updateDate;

  CardItemModel({
    required this.id,
    required this.name,
    required this.descriptions,
    required this.linkURL,
    required this.bankID,
    required this.imageName,
    required this.order,
    required this.cardStatus,
    required this.createDate,
    required this.updateDate,
  });
}
