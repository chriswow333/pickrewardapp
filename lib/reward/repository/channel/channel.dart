

import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/reward/repository/channel/proto/generated/channel.pbgrpc.dart';

class ChannelService {
  
///here enter your host without the http part (e.g enter google.com now http://google.com)
  String baseUrl = "192.168.20.112";

  ChannelService._internal();
  
  static final ChannelService _instance = ChannelService._internal();

  factory ChannelService() => _instance;

  ///static HelloService instance that we will call when we want to make requests
  static ChannelService get instance => _instance;
   ///HelloClient is the  class that was generated for us when we ran the generation command
  ///We will pass a channel to it to intialize it
  late ChannelClient _channelClient;

  ///this will be used to create a channel once we create this class.
  ///Call HelloService().init() before making any call.
  Future<void> init() async {
    _createChannel();
  }

  ///provide public access to the HelloClient instance
  ChannelClient get channelClient {
    return _channelClient;
  }

  ///here we create a channel and use it to initialize the HelloClientthat was generated
  ///
  _createChannel() {
    final channel = ClientChannel(
      baseUrl,

      port: 50055,

      ///use credentials: ChannelCredentials.insecure() if you want to connect without Tls
      //options: const ChannelOptions(credentials: ChannelCredentials.insecure()),

      ///use this if you are connecting with Tls
      // options: const ChannelOptions(),
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    _channelClient = ChannelClient(channel);

  }


}