class CardItemModel {

  final String id;
  final String name;
  final List<String> descriptions;
  final String image;
  int createDate;
  int updateDate;
  String linkURL;
  String bankID;
  int order;
  int cardStatus;

  CardItemModel({
    required this.id,
    required this.name,
    required this.descriptions,
    required this.image,
    required this.createDate,
    required this.updateDate,
    required this.linkURL,
    required this.bankID,
    required this.order,
    required this.cardStatus,
  });
}
