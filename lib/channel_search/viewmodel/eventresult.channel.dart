

import 'package:flutter/material.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:pickrewardapp/shared/config/logger.dart';
import 'package:pickrewardapp/shared/channel/repo/v1/channel.dart';
import 'package:pickrewardapp/shared/channel/repo/v1/proto/generated/channel.pbgrpc.dart';

class EventResultChannelViewModel with ChangeNotifier {
  EventResultChannelViewModel(){
    ChannelService().init();
  }


  List<ChannelReply_Channel> _channels = [];

  List<ChannelReply_Channel> get channels => _channels;

  Future<List<ChannelReply_Channel>?> fetchChannelModels(List<String> channelIDs) async {

    ChannelIDsReq channelIDsReq = ChannelIDsReq();
    channelIDsReq.channelIDs.addAll(channelIDs);

    return Future(() async {
      try { 
        ChannelReply channelReply = await ChannelService().channelClient.getChannels(channelIDsReq);
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