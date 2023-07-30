

import 'package:grpc/grpc.dart';

import 'package:pickrewardapp/cardreward/repository/cardreward/proto/generated/card.pbgrpc.dart';



class CardRewardService {

  String baseUrl = "192.168.20.112";
  CardRewardService._internal();


  static final CardRewardService _instance = CardRewardService._internal();

  factory CardRewardService() => _instance;

  ///static HelloService instance that we will call when we want to make requests
  static CardRewardService get instance => _instance;
   ///HelloClient is the  class that was generated for us when we ran the generation command
  ///We will pass a channel to it to intialize it
  late CardClient _cardClient;

  ///this will be used to create a channel once we create this class.
  ///Call HelloService().init() before making any call.
  Future<void> init() async {
    _createChannel();
  }

  ///provide public access to the HelloClient instance
  CardClient get cardClient {
    return _cardClient;
  }

  ///here we create a channel and use it to initialize the HelloClientthat was generated
  ///
  _createChannel() {
    final channel = ClientChannel(
      baseUrl,

      ///port: 9043,
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
    _cardClient = CardClient(channel);

  }


}