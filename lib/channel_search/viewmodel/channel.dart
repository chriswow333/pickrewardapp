import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/channel_search/model/channel.dart';
import 'package:pickrewardapp/channel_search/model/channel_category.dart';
import 'package:pickrewardapp/channel_search/model/channel_global_key.dart';
import 'package:pickrewardapp/shared/config/logger.dart';


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
      logger.e(e);
    } catch (e) {
      ///handle all generic errors here
      logger.e(e);
    }
  }




  final Map<int, List<ChannelItemModel>> _channelModels = {};
  final Map<int, bool> _hasMoreChannels = {};
  final Map<int, ChannelGlobalKeyModel> _globalKeys = {};

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

    if(_globalKeys.containsKey(channelCategoryType))return;
    
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

    }).catchError((e){
      logger.e(e);
    });
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
      
    }).catchError((e){
      logger.e(e);
    });

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

    }).catchError((e){
      logger.e(e);
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
      logger.e(e);
    } catch (e) {
      ///handle all generic errors here
      logger.e(e);
    }

    return Future.error('error fetch');
    
  }





}


