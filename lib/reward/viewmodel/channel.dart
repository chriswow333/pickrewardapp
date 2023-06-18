


import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/reward/repository/channel/channel.dart';
import 'package:pickrewardapp/reward/repository/channel/proto/generated/channel.pbgrpc.dart';

class ChannelViewModel with ChangeNotifier {

  ChannelViewModel(){
    ChannelService().init();
  }


  int _channelCategoryType = 0;
  int get channelCategoryType => _channelCategoryType;
  set channelCategoryType(int type) {
    _channelCategoryType = type;
    notifyListeners();
  }



  final List<ChannelCategoryTypeModel> _channelCategoryTypeModels = [];

  get channelCategoryTypeModels => _channelCategoryTypeModels;

  Future<void> fetchChannelCategoryTypeModels() async {
    
    if (_channelCategoryTypeModels.isNotEmpty) return;

    try {

      ChannelCategoryTypeProtoReply channelCategoryTypeProtoReply = await ChannelService().channelClient.getChannelCategoryTypes(EmptyRequest());
  
      List<ChannelCategoryTypeProto> channelCategoryTypeProtos = channelCategoryTypeProtoReply.channelCategoryTypeProto;

      for (ChannelCategoryTypeProto channelCategoryTypeProto in channelCategoryTypeProtos) {

        _channelCategoryTypeModels.add(
          ChannelCategoryTypeModel( 
            id : channelCategoryTypeProto.id,
            name: channelCategoryTypeProto.name,
            order:channelCategoryTypeProto.order
          )
        );
      }
      print(_channelCategoryTypeModels);
    } on GrpcError catch (e) {
      ///handle all grpc errors here
      ///errors such us UNIMPLEMENTED,UNIMPLEMENTED etc...
      print(e);
    } catch (e) {
      ///handle all generic errors here
      print(e);
    }
  
    notifyListeners();
  }



  final Map<int, List<ChannelItemModel>> _channelModels = {};


  List<ChannelItemModel> getChannelsByChannelCategoryType(int channelCategoryType) {
    return _channelModels[channelCategoryType] ?? [];
  }




  Future<void> fetchChannelsByChannelCategoryType(int channelCategoryType) async{ 
    

    if (_channelModels.containsKey(channelCategoryType)) return;


    try {
     final channelCategoryTypeRequest = ChannelCategoryTypeRequest();

      channelCategoryTypeRequest.channelCategoryType = channelCategoryType;
      ChannelProtoReply channelProtoReply  = await ChannelService().channelClient.getChannelsByChannelCategoryType(channelCategoryTypeRequest);


      List<ChannelItemModel> channelItemModels = [];
      for (ChannelProto channelProto in channelProtoReply.channelProto){
        

        List<ChannelLabelModel> channelLabelModels = [];

        for (ChannelLabelProto channelLabelProto in channelProto.channelLabelProtos){
          channelLabelModels.add(
            ChannelLabelModel(
              id:channelLabelProto.id,
              name: channelLabelProto.name,
              order:channelLabelProto.order,
            )
          );
        }

        channelItemModels.add(ChannelItemModel(
          id:channelProto.id,
          name:channelProto.name,
          image:channelProto.image,
          channelCategoryType: channelProto.channelCategoryType,
          channelLabels: channelLabelModels,
        ));
      }
    

      print(channelItemModels);

      _channelModels[channelCategoryType] = channelItemModels;

    } on GrpcError catch (e) {
      ///handle all grpc errors here
      ///errors such us UNIMPLEMENTED,UNIMPLEMENTED etc...
      print(e);
    } catch (e) {
      ///handle all generic errors here
      print(e);
    }
    
    notifyListeners();

  }


}


class ChannelCategoryTypeModel {
  final int id;
  final String name;
  final int order;

  ChannelCategoryTypeModel({
    required this.id, 
    required this.name, 
    required this.order
  });
}

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
    // required this.linkURL, 
    // required this.descriptions, 
    required this.channelCategoryType, 
    // required this.createDate, 
    // required this.updateDate, 
    required this.channelLabels, 
    // required this.channelStatus
  })
    : linkURL = "", descriptions = [], createDate = 0, updateDate = 0, channelStatus = 0;

}

class ChannelLabelModel {
  final int id;
  final String name;
  final int order;

  ChannelLabelModel({
    required this.id, 
    required this.name, 
    required this.order
  });
}