


import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:pickrewardapp/card/repository/pay/proto/generated/pay.pbgrpc.dart';

class PayService {


///here enter your host without the http part (e.g enter google.com now http://google.com)
  String baseUrl = "localhost"; //"192.168.20.112";

  PayService._internal();
  
  static final PayService _instance = PayService._internal();

  factory PayService() => _instance;

  ///static HelloService instance that we will call when we want to make requests
  static PayService get instance => _instance;
   ///HelloClient is the  class that was generated for us when we ran the generation command
  ///We will pass a channel to it to intialize it
  late PayClient _payClient;

  ///this will be used to create a channel once we create this class.
  ///Call HelloService().init() before making any call.
  Future<void> init() async {
    _createChannel();
  }

  ///provide public access to the HelloClient instance
  PayClient get payClient {
    return _payClient;
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
    
    _payClient = PayClient(channel);

  }

}