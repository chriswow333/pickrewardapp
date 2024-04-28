
class PayItemModel {
  final String id;
  final String name;
  final int createDate;
  final int updateDate;
  final int order;
  final int payStatus;

  PayItemModel({
    required this.id,
    required this.name, 
    required this.createDate, 
    required this.updateDate, 
    required this.order, 
    required this.payStatus
  });
  
}