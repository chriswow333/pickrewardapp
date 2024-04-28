

import 'package:flutter/material.dart';



class ChannelItemModel {

  final String id;
  final String name;
  final int createDate;
  final int updateDate;
  final List<String> channelLabels;
  final String showLabel;
  final int order;
  final int channelStatus;
  final String imageName;

  ChannelItemModel({
    required this.id, 
    required this.name, 
    required this.createDate, 
    required this.updateDate, 
    required this.channelLabels,
    required this.showLabel,
    required this.order,
    required this.channelStatus,
    required this.imageName,
  });
}


class ShowLabelModel {
  String label;
  String name;
  int order;

  ShowLabelModel({
    required this.label,
    required this.name,
    required this.order,
  });
  
}


class ShowLabelGlobalKeyModel {

  final GlobalKey channelItem;
  final GlobalKey showLabel;
  final String id;
  final int order;
  
  ShowLabelGlobalKeyModel({
    required this.id,
    required this.channelItem,
    required this.showLabel,
    required this.order,
  }); 
}


class ChannelProgressPageModel {
  static int channel = 0;
  static int criteria = 1;
  static int result = 2;
}



class CommonShowLabel {
  static String label = "common";
}