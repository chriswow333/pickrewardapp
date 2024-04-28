

import 'package:flutter/material.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:pickrewardapp/shared/config/logger.dart';
import 'package:pickrewardapp/shared/channel/repo/v1/channel.dart';
import 'package:pickrewardapp/shared/channel/repo/v1/proto/generated/channel.pbgrpc.dart';

class EventResultChannelViewModel with ChangeNotifier {
  EventResultChannelViewModel(){
    ChannelService().init();
  }


  List<ChannelsReply_Channel> _channels = [];

  List<ChannelsReply_Channel> get channels => _channels;

  Future<List<ChannelsReply_Channel>?> fetchChannelModels(List<String> channelIDs) async {
    
    ChannelIDsReq channelIDsReq = ChannelIDsReq();
    
    channelIDsReq.channelIDs.addAll(channelIDs);

    return Future(() async {
      try { 
        ChannelsReply channelReply = await ChannelService().channelClient.getsByChannelIDs(channelIDsReq);
        _channels = channelReply.channels;
        // notifyListeners();
        return channelReply.channels;
      } on GrpcError catch (e) {
        logger.e(e);
      } catch (e) {
        logger.e(e);
      }
      return null;
    });
  }
  

}