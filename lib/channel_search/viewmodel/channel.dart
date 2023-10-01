import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';


import 'package:pickrewardapp/card/repository/channel/channel.dart';
import 'package:pickrewardapp/card/repository/channel/proto/generated/channel.pbgrpc.dart';

class ChannelViewModel with ChangeNotifier {

  ChannelViewModel(){
    ChannelService().init();
    fetchChannelCategoryTypeModels();
  }

  int _channelCategoryType = -1; // -1 通路總覽
  int get channelCategoryType => _channelCategoryType;

  set channelCategoryType(int type) {
    if (type == _channelCategoryType)return;
    _channelCategoryType = type;
    notifyListeners();
  }

  final List<ChannelCategoryTypeModel> _channelCategoryTypeModels = [];
  get channelCategoryTypeModels => _channelCategoryTypeModels;




  Future<void> fetchChannelCategoryTypeModels() async {

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
      
      notifyListeners();

    } on GrpcError catch (e) {
      ///handle all grpc errors here
      ///errors such us UNIMPLEMENTED,UNIMPLEMENTED etc...
      print(e);
    } catch (e) {
      ///handle all generic errors here
      print(e);
    }
  }


  final Map<int, List<ChannelItemModel>> _channelModels = {};
  final Map<int, bool> _hasMoreChannels = {};
  final Map<int, ChannelGlobalKeyModel> _globalKeys = {
  
  };

  bool hasMoreChannels(int channelCategoryType) {
    return _hasMoreChannels[channelCategoryType] ?? false;
  }


  GlobalKey getChannelCategoryGlobalKeys(int channelCategoryType) {
    if(_globalKeys.containsKey(channelCategoryType)){
      return _globalKeys[channelCategoryType]!.channelCategory;
    }else {
      return GlobalKey();
    }
  }


  List<ChannelGlobalKeyModel> getAllChannelItemGlobalKeyModels() {
    List<ChannelGlobalKeyModel> channelItemKeyModels = [];


    _globalKeys.forEach((key, value) {
      channelItemKeyModels.add(value);
    });
    channelItemKeyModels.sort((a, b)=> a.id.compareTo(b.id));
    return channelItemKeyModels;
  }

  GlobalKey getChannelItemGlobalKeys(int channelCategoryType) {
    if(_globalKeys.containsKey(channelCategoryType)){
      return _globalKeys[channelCategoryType]!.channelItem;
    }else {
      print("not found");
      return GlobalKey();
    }
  }


  Future<void> initChannelModels(int channelCategoryType) async{


    _globalKeys[channelCategoryType] = ChannelGlobalKeyModel(
      id:channelCategoryType,
      channelCategory: GlobalKey(), 
      channelItem: GlobalKey(),
    );

    int offset = 0;
    int limit = 5;
    getChannelsByChannelCategoryTypeApi(channelCategoryType, offset, limit).then((value){
      List<ChannelItemModel> channelItemModels = [];
      
      for (ChannelProto channelProto in value.channelProto){
        
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

      _channelModels[channelCategoryType] = channelItemModels;

      if(channelItemModels.length == limit) {
        _hasMoreChannels[channelCategoryType] = true;
      }else {
        _hasMoreChannels[channelCategoryType] = false;
      }

      notifyListeners();
    }).catchError((error){
      print(error);
    });
  }


  Future<void> addMoreChannelsByChannelCategoryType(int channelCategoryType) async { 

    int length = _channelModels[channelCategoryType]!.length;

    int offset = length;
    int limit = 11;

    getChannelsByChannelCategoryTypeApi(channelCategoryType, offset, limit).then((value){
      List<ChannelItemModel> channelItemModels = [];
      
      for (ChannelProto channelProto in value.channelProto){
        
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
      

      _channelModels[channelCategoryType]!.addAll(channelItemModels);

      if(channelItemModels.length == limit) {
        _hasMoreChannels[channelCategoryType] = true;
      }else {
        _hasMoreChannels[channelCategoryType] = false;
      }

      notifyListeners();
    }).catchError((error){
      print(error);
    });
  }

  List<ChannelItemModel> getChannelsByChannelCategoryType(int channelCategoryType) {
    return _channelModels[channelCategoryType] ?? [];
  }


  Future<ChannelProtoReply> getChannelsByChannelCategoryTypeApi(int channelCategoryType, int offset, int limit) async { 

   try {
      final channelCategoryTypeRequest = ChannelCategoryTypeRequest();
      channelCategoryTypeRequest.channelCategoryType = channelCategoryType;
      channelCategoryTypeRequest.limit = limit;
      channelCategoryTypeRequest.offset = offset;
      return await ChannelService().channelClient.getChannelsByChannelCategoryType(channelCategoryTypeRequest);
    } on GrpcError catch (e) {
      ///handle all grpc errors here
      ///errors such us UNIMPLEMENTED,UNIMPLEMENTED etc...
      print(e);
    } catch (e) {
      ///handle all generic errors here
      print(e);
    }

    return Future.error('error fetch');
    
  }





}


class ChannelGlobalKeyModel {
  final GlobalKey channelItem;
  final GlobalKey channelCategory;
  final int id;
  ChannelGlobalKeyModel({
    required this.id,
    required this.channelItem,
    required this.channelCategory
  }); 
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

