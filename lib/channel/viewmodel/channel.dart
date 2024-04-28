import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/channel/model/channel.dart';
import 'package:pickrewardapp/shared/config/logger.dart';


import 'package:pickrewardapp/shared/channel/repo/v1/channel.dart';
import 'package:pickrewardapp/shared/channel/repo/v1/proto/generated/channel.pbgrpc.dart';

class ChannelViewModel with ChangeNotifier {

  ChannelViewModel(){
    ChannelService().init();
    fetchShowLabelModels();
  }


  String _selectedShowLabel = CommonShowLabel.label;
  set selectedShowLabel(label){
    _selectedShowLabel = label;
    notifyListeners();
  }
  String get selectedShowLabel => _selectedShowLabel;

  /// Fetch Show labels
  final List<ShowLabelModel> _showLabelModels = [];
  List<ShowLabelModel> get showLabelModels => _showLabelModels;

  Future<void> fetchShowLabelModels() async {

    try {
    
      ShowLabelsReply showLabelsReply = await ChannelService().channelClient.getShowLabels(EmptyReq());
      if (showLabelsReply.reply.status != 0) {
        logger.e("no reply");
        return;
      }

      List<ShowLabelsReply_ChannelLabel> showLabels = showLabelsReply.channelLabels;
      for(ShowLabelsReply_ChannelLabel c in showLabels) {
       _showLabelModels.add(ShowLabelModel(
          label: c.label,
          name:c.name,
          order: c.order,
        ));
      }

      notifyListeners();
      
    } on GrpcError catch (e) {
      logger.e(e);
    } catch (e) {
      logger.e(e);
    }
  }



  final Map<String, List<ChannelItemModel>> _channelModels = {};
  final Map<String, bool> _hasMoreChannels = {};
  bool hasMoreChannels(String label) {
    return _hasMoreChannels[label] ?? false;
  }


/// Channel Labels Position
  final Map<String, ShowLabelGlobalKeyModel> _globalKeys = {};
  GlobalKey getChannelCategoryGlobalKeys(String label) {
    if(_globalKeys.containsKey(label)){
      return _globalKeys[label]!.showLabel;
    }else {
      return GlobalKey();
    }
  }


  List<ShowLabelGlobalKeyModel> getAllShowLabelGlobalKeyModels() {
    
    List<ShowLabelGlobalKeyModel> showLabelKeyModels = [];

    _globalKeys.forEach((key, value) {
      showLabelKeyModels.add(value);
    });
    showLabelKeyModels.sort((a, b)=> a.order.compareTo(b.order));
    return showLabelKeyModels;
  }

  GlobalKey getShowItemGlobalKeys(String label) {
    if(_globalKeys.containsKey(label)){
      return _globalKeys[label]!.channelItem;
    }else {
      return GlobalKey();
    }
  }


  final  _initOffset = 0;
  final  _limit = 5;

  Future<void> initChannelModels(String label, int order) async {

    if(_globalKeys.containsKey(label))return;
    
    _globalKeys[label] = ShowLabelGlobalKeyModel(
      id:label,
      order:order,
      showLabel: GlobalKey(), 
      channelItem: GlobalKey(),
    );


    _getChannelsByShowLabelApi(label, _initOffset, _limit)
    .then((value){

      if (value.isEmpty) return;

      _channelModels[label] = value;
      if(value.length == _limit) {
        _hasMoreChannels[label] = true;
      }else {
        _hasMoreChannels[label] = false;
      }
      notifyListeners();

    }).catchError((e){
      logger.e(e);
    });
  }



  Future<void> addMoreChannelsByShowLabel(String label) async {

    int length = _channelModels[label]?.length ?? 0;
    int offset = length;

    _getChannelsByShowLabelApi(label, offset, _limit).then((value){

      if(value.isEmpty){
        _hasMoreChannels[label] = false;
        notifyListeners();
        return;
      } 

      _channelModels[label]?.addAll(value);
      notifyListeners();
      
    }).catchError((e){
      logger.e(e);
    });

  }

  List<ChannelItemModel> getChannelsByShowLabel(String showLabel) {
    return _channelModels[showLabel] ?? [];
  }


  Future<List<ChannelItemModel>> _getChannelsByShowLabelApi(String label, int offset, int limit) async {

    return _fetchChannelsByShowLabelApi(label,offset,limit).then((value) {

      List<ChannelItemModel> channelItemModels = [];
      
      for (ChannelsReply_Channel channel in value.channels) {

        channelItemModels.add(
          ChannelItemModel(
            id:channel.id,
            name:channel.name,
            createDate: channel.createDate.toInt(),
            updateDate:channel.updateDate.toInt(),
            channelLabels: channel.channelLabels,
            showLabel: channel.showLabel,
            order:channel.order,
            channelStatus: channel.channelStatus,
            imageName: channel.imageName,
          )
        );
      }

      return channelItemModels;

    }).catchError((e){
      logger.e(e);
    });

  }


  Future<ChannelsReply> _fetchChannelsByShowLabelApi(String label, int offset, int limit) async { 

   try {
      final showLabelReq = ShowLabelReq();
      showLabelReq.label = label;
      showLabelReq.limit = limit;
      showLabelReq.offset = offset;
      return ChannelService().channelClient.getChannelsByShowLabel(showLabelReq);
    } on GrpcError catch (e) {
      logger.e(e);
    } catch (e) {
      logger.e(e);
    }

    return Future.error('error fetch');
  }

}


