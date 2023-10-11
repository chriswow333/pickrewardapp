class ChannelItemModel {

  final String id;
  final String name;
  final String image;
  final String linkURL;
  final List<String> descriptions;
  final int channelCategoryType;
  final int createDate;
  final int updateDate;
  final List<int> labels;
  // final List<ChannelLabelModel> channelLabels;
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
    required this.labels, 
    required this.channelStatus
  });

}