// ignore_for_file: public_member_api_docs, sort_constructors_first
class ChannelItemModel {

  final String id;
  final String name;
  final String image;
  final String linkURL;
  final List<String> descriptions;
  final int channelCategoryType;
  final int createDate;
  final int updateDate;
  final List<ChannelLabelModel> channelLabels;
  final int channelStatus;

  ChannelItemModel({
    required this.id, 
    required this.name, 
    required this.image, 
    required this.linkURL, 
    required this.descriptions, 
    required this.channelCategoryType, 
    required this.createDate, 
    required this.updateDate, 
    required this.channelLabels, 
    required this.channelStatus
  });



}


class ChannelLabelModel {
  int label;
  String name;
  int? show;
  
  ChannelLabelModel({
    required this.label,
    required this.name,
  });
  
}
