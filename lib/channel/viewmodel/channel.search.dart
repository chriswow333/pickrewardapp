


import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/channel/model/channel.dart';
import 'package:pickrewardapp/shared/channel/repo/v1/channel.dart';
import 'package:pickrewardapp/shared/channel/repo/v1/proto/generated/channel.pb.dart';
import 'package:pickrewardapp/shared/config/logger.dart';

class SearchChannelViewModel with ChangeNotifier {

  SearchChannelViewModel() {
    ChannelService().init();
  }
  
  String _keyword = "";
  String get keyword => _keyword;

  bool _searchChannelFlag = false;
  bool get searchChannelFlag => _searchChannelFlag;

  final List<String> _searchKeywordHistory = [];
  List<String> get searchKeywordHistory  => _searchKeywordHistory;


  final List<ChannelItemModel> _searchItemModels = [];
  List<ChannelItemModel> get searchItemModels => _searchItemModels;


  bool _resultEmpty = false; 
  bool get resultEmpty => _resultEmpty;
  

  void onFocusSearch() {
    _searchChannelFlag = true;
    notifyListeners();
  }


  void cancel() {
    _keyword = "";
    _searchChannelFlag = false;
    _searchItemModels.clear();
    notifyListeners();
  }

  void changeKeyword(String keyword) {
    
    _resultEmpty = false;

    if(keyword == _keyword)return;

    _keyword = keyword;

    if(keyword.isNotEmpty) {
      _searchChannelFlag = true;
    }else {
      _searchItemModels.clear();
    }

    notifyListeners();
  }

  
  bool _searched = false;
  get searched => _searched;

  bool _loading = false;
  get loading => _loading;

  searchChannel() {

    if(_keyword.isNotEmpty) {

      _loading = true;
      _searched = true;

      _fetchSearchChannels();
      _searchKeywordHistory.insert(0, _keyword);
      
      if(_searchKeywordHistory.length == 10) {
        _searchKeywordHistory.removeLast();
      }
    }

  }


  searchChannelFromHistory(String historyKeyword) {
    _loading = true;
    _keyword = historyKeyword;
    _fetchSearchChannels();
    notifyListeners();
  }


  Future<void> _fetchSearchChannels() async {

    try {
      
      SearchChannelReq searchChannelReq = SearchChannelReq();
      searchChannelReq.keyword = _keyword;

      SearchChannelsReply searchChannelReply = await ChannelService().channelClient.searchChannel(searchChannelReq);

      if(searchChannelReply.reply.status != 0) {
        logger.e("fetched error");
        return;
      }

      List<ChannelItemModel> channelItemModels = [];
      for(SearchChannelsReply_Channel channel in searchChannelReply.channels){
        channelItemModels.add(ChannelItemModel(
          id:channel.id,
          name:channel.name,
          createDate: channel.createDate.toInt(),
          updateDate: channel.updateDate.toInt(),
          channelLabels: channel.channelLabels,
          channelStatus: channel.channelStatus,
          order:channel.order,
          showLabel: channel.showLabel,
          imageName: channel.imageName,
        ));

      }

      _searchItemModels.clear();
      _searchItemModels.addAll(channelItemModels);

      _loading = false;
      _resultEmpty = channelItemModels.isEmpty;

      notifyListeners();
      
    } on GrpcError catch (e) {
      logger.e(e);
    } catch (e) {
      logger.e(e);
    }
  }

}