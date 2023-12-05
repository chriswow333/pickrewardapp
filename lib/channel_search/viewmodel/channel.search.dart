


import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/channel_search/model/channel.dart';
import 'package:pickrewardapp/shared/config/logger.dart';
import 'package:pickrewardapp/shared/repository/channel/v1/channel.dart';
import 'package:pickrewardapp/shared/repository/channel/v1/proto/generated/channel.pb.dart';

class SearchChannelViewModel with ChangeNotifier {

  SearchChannelViewModel() {
    ChannelService().init();
  }
  

  String _keyword = "";
  bool _searchChannelFlag = false;
  

  void onFocusSearch() {
    _searchChannelFlag = true;
    notifyListeners();
  }

  void cancel(){
    _keyword = "";
    _searchChannelFlag = false;
    notifyListeners();
  }

  void changeKeyword(String keyword){
    if(keyword == _keyword)return;
    _keyword = keyword;
    
     if(keyword.isNotEmpty) {
      _searchChannelFlag = true;
    }else {
      _searchChannelFlag = false;
      _loading = false;
    }
    notifyListeners();
  }
  
  bool _searched = false;
  get searched => _searched;

  searchChannel() {
    if(_keyword.isNotEmpty) {
      _searched = true;
      _fetchSearchChannels();
    }    
  }

  bool _loading = false;
  get loading => _loading;
  setLoading(){
    _loading = true;
    notifyListeners();
  }



  get keyword => _keyword;

  get searchChannelFlag => _searchChannelFlag;

  List<ChannelItemModel> _searchItemModels = [];

  get searchItemModels => _searchItemModels;


  Future<void> _fetchSearchChannels() async {
    try {

      SearchChannelReq searchChannelReq = SearchChannelReq();
      searchChannelReq.keyword = _keyword;

      SearchChannelReply searchChannelReply = await ChannelService().channelClient.searchChannel(searchChannelReq);
      
      List<ChannelItemModel> channelItemModels = [];

      for(SearchChannelReply_SearchChannel searchChannel in searchChannelReply.searchChannels){
      

        for(SearchChannelReply_SearchChannel_Channel c in searchChannel.channels) {
          List<ChannelLabelModel> channelLabelModels = [];
          for(SearchChannelReply_SearchChannel_ChannelLabel label in c.channelLabels) {
            channelLabelModels.add(
              ChannelLabelModel(label: label.label, name: label.name)
            );
          }
          channelItemModels.add(
            ChannelItemModel(
              id: c.id, 
              name: c.name, 
              image: c.image, 
              linkURL: c.linkURL, 
              descriptions: c.descriptions, 
              channelCategoryType: c.channelCategoryType, 
              createDate: c.createDate.toInt(), 
              updateDate: c.updateDate.toInt(), 
              channelLabels: channelLabelModels,
              channelStatus: c.channelStatus,
            )
          );
        }
      }

      _searchItemModels = channelItemModels;
      _loading = false;

      notifyListeners();
    } on GrpcError catch (e) {
      logger.e(e);
    } catch (e) {
      logger.e(e);
    }
  }

}