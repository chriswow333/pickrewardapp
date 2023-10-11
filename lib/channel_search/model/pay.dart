
class PayItemModel {
  final String id;
  final String name;
  final String image;
  final String linkURL;
  final List<String> descriptions;
  final int createDate;
  final int updateDate;
  final int order;
  final int payStatus;

  PayItemModel({
    required this.id,
    required this.name, 
    required this.image, 
    required this.linkURL,
    required this.descriptions,
    required this.createDate, 
    required this.updateDate, 
    required this.order, 
    required this.payStatus
});


  
}