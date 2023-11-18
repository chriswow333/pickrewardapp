

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/shared/repository/channel/v1/proto/generated/channel.pbgrpc.dart';

class ChannelService {
  
///here enter your host without the http part (e.g enter google.com now http://google.com)
  // String baseUrl = "tsincoco.com"; // "localhost"; //"192.168.20.112";

  ChannelService._internal();
  
  static final ChannelService _instance = ChannelService._internal();

  factory ChannelService() => _instance;

  ///static HelloService instance that we will call when we want to make requests
  static ChannelService get instance => _instance;
   ///HelloClient is the  class that was generated for us when we ran the generation command
  ///We will pass a channel to it to intialize it
  late ChannelV1Client _channelClient;

  ///this will be used to create a channel once we create this class.
  ///Call HelloService().init() before making any call.
  Future<void> init() async {
    _createChannel();
  }

  ///provide public access to the HelloClient instance
  ChannelV1Client get channelClient {
    return _channelClient;
  }

  ///here we create a channel and use it to initialize the HelloClientthat was generated
  ///
  _createChannel() {

    String useTls = dotenv.env['USE_TLS'] ?? "false";
    late bool useTlsBool;
    if (useTls == "true") {
      useTlsBool = true;
    }
    else {
      useTlsBool = false;
    }

    String baseUrl = dotenv.env['BASE_URL'] ?? "localhost";
    String port = dotenv.env['BASE_PORT'] ?? "50055";
    int portInt = int.parse(port);  
    late final channel;
    if (useTlsBool) {
      channel = ClientChannel(
        baseUrl,
        port: portInt,
        ///use credentials: ChannelCredentials.insecure() if you want to connect without Tls
        //options: const ChannelOptions(credentials: ChannelCredentials.insecure()),

        ///use this if you are connecting with Tls
        // options: const ChannelOptions(),
        options: ChannelOptions(
          // credentials: const ChannelCredentials.insecure(),
          credentials: ChannelCredentials.secure(
            // certificates: Uint8List.fromList(await File('./Users/chrisyu/data/creditcard/app/pickrewardapp/lib/shared/repository/channel/fullchain.pem').readAsBytes()),
            onBadCertificate:(certificate, str ) {
              return true;
            }
          ),
          codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
        ),
      );
    
    }else {
      channel = ClientChannel(
        baseUrl,
        port: portInt,
        ///use credentials: ChannelCredentials.insecure() if you want to connect without Tls
        //options: const ChannelOptions(credentials: ChannelCredentials.insecure()),

        ///use this if you are connecting with Tls
        // options: const ChannelOptions(),
        options: ChannelOptions(
          credentials: const ChannelCredentials.insecure(),
          codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
        ),
      );
    }
    
    _channelClient = ChannelV1Client(channel);
  }

}
