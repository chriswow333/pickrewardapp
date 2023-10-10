import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';


import 'package:pickrewardapp/shared/repository/channel/channel.dart';
import 'package:pickrewardapp/shared/repository/channel/proto/generated/channel.pbgrpc.dart';

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

      ChannelCategoryTypeReply channelCategoryTypeReply = await ChannelService().channelClient.getChannelCategoryTypes(EmptyReq());
  
      List<ChannelCategoryTypeReply_ChannelCategoryType> channelCategoryTypes = channelCategoryTypeReply.channelCategoryTypes;

      for (ChannelCategoryTypeReply_ChannelCategoryType channelCategoryType in channelCategoryTypes) {

        _channelCategoryTypeModels.add(
          ChannelCategoryTypeModel( 
            categoryType : channelCategoryType.categoryType,
            name: channelCategoryType.name,
            order:channelCategoryType.order
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
      return GlobalKey();
    }
  }


  static int initOffset = 0;
  static int initLimit = 4;

  Future<void> initChannelModels(int channelCategoryType) async{


    _globalKeys[channelCategoryType] = ChannelGlobalKeyModel(
      id:channelCategoryType,
      channelCategory: GlobalKey(), 
      channelItem: GlobalKey(),
    );


    _getChannelsByChannelCategoryTypeApi(channelCategoryType, initOffset, initLimit).then((value){
      if (value.isEmpty) return;

      _channelModels[channelCategoryType] = value;
      if(value.length == initLimit) {
        _hasMoreChannels[channelCategoryType] = true;
      }else {
        _hasMoreChannels[channelCategoryType] = false;
      }
      notifyListeners();

    }).catchError((error){
      print(error);
    });

      // for (ChannelReply_Channel channel in value.channels){
      //   channelItemModels.add(ChannelItemModel(
      //     id:channel.id,
      //     name:channel.name,
      //     image:channel.image,
      //     linkURL: channel.linkURL,
      //     descriptions: channel.descriptions,
      //     channelCategoryType: channel.channelCategoryType,
      //     createDate: channel.createDate as int,
      //     updateDate:channel.updateDate as int,
      //     labels:channel.labels,
      //     channelStatus: channel.channelStatus,
      //   ));
      // }

      // _channelModels[channelCategoryType] = channelItemModels;

      // if(channelItemModels.length == initLimit) {
      //   _hasMoreChannels[channelCategoryType] = true;
      // }else {
      //   _hasMoreChannels[channelCategoryType] = false;
      // }
      // notifyListeners();
    // }).catchError((error){
    //   print(error);
    // });
  }


  static int eachLimit = 4;

  Future<void> addMoreChannelsByChannelCategoryType(int channelCategoryType) async { 

    int length = _channelModels[channelCategoryType]!.length;
    int offset = length;

    _getChannelsByChannelCategoryTypeApi(channelCategoryType, offset, eachLimit).then((value){

      if(value.isEmpty){
        _hasMoreChannels[channelCategoryType] = false;
        notifyListeners();
        return;
      } 

      _channelModels[channelCategoryType]!.addAll(value);
      notifyListeners();
      
    }).catchError((error){
      print(error);
    });





    // _getChannelsByChannelCategoryTypeApi(channelCategoryType, offset, eachLimit).then((value){
    //   List<ChannelItemModel> channelItemModels = [];
      
    //   for (ChannelProto channelProto in value.channelProto){
        
    //     List<ChannelLabelModel> channelLabelModels = [];
    //     for (ChannelLabelProto channelLabelProto in channelProto.channelLabelProtos){
    //       channelLabelModels.add(
    //         ChannelLabelModel(
    //           id:channelLabelProto.id,
    //           name: channelLabelProto.name,
    //           order:channelLabelProto.order,
    //         ) 
    //       );
    //     }

    //     channelItemModels.add(ChannelItemModel(
    //       id:channelProto.id,
    //       name:channelProto.name,
    //       image:channelProto.image,
    //       channelCategoryType: channelProto.channelCategoryType,
    //       channelLabels: channelLabelModels,
    //     ));
    //   }
      

    //   _channelModels[channelCategoryType]!.addAll(channelItemModels);

    //   if(channelItemModels.length == limit) {
    //     _hasMoreChannels[channelCategoryType] = true;
    //   }else {
    //     _hasMoreChannels[channelCategoryType] = false;
    //   }
    //   notifyListeners();
    // }).catchError((error){
    //   print(error);
    // });
  }

  List<ChannelItemModel> getChannelsByChannelCategoryType(int channelCategoryType) {
    return _channelModels[channelCategoryType] ?? [];
  }

  Future<List<ChannelItemModel>> _getChannelsByChannelCategoryTypeApi(int categoryType, int offset, int limit) async {

    return _fetchChannelsByChannelCategoryTypeApi(categoryType,offset,limit).then((value){

      List<ChannelItemModel> channelItemModels = [];
      
      for (ChannelReply_Channel channel in value.channels){

        channelItemModels.add(ChannelItemModel(
          id:channel.id,
          name:channel.name,
          image:channel.image,
          linkURL: channel.linkURL,
          descriptions: channel.descriptions,
          channelCategoryType: channel.channelCategoryType,
          createDate: channel.createDate.toInt(),
          updateDate:channel.updateDate.toInt(),
          labels:channel.labels,
          channelStatus: channel.channelStatus,
        ));
      }

      return channelItemModels;

    }).catchError((error){
      print(error);
    });

  }



  Future<ChannelReply> _fetchChannelsByChannelCategoryTypeApi(int categoryType, int offset, int limit) async { 

   try {
      final channelCategoryTypeRequest = ChannelCategoryTypeReq();
      channelCategoryTypeRequest.categoryType = categoryType;
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
  final int categoryType;
  final String name;
  final int order;

  ChannelCategoryTypeModel({
    required this.categoryType, 
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

// class ChannelLabelModel {
//   final int id;
//   final String name;
//   final int order;

//   ChannelLabelModel({
//     required this.id, 
//     required this.name, 
//     required this.order
//   });
// }

