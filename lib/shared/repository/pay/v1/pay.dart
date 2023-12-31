


import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/shared/repository/pay/v1/proto/generated/pay.pbgrpc.dart';

class PayService {


///here enter your host without the http part (e.g enter google.com now http://google.com)
  // String baseUrl = "tsincoco.com"; // "localhost"; //"192.168.20.112";

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
    late final ClientChannel channel;

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
    _payClient = PayClient(channel);
  }

}