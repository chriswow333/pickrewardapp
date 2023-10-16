

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc.dart';

import 'package:pickrewardapp/shared/repository/card/proto/generated/card.pbgrpc.dart';

class CardService {
///here enter your host without the http part (e.g enter google.com now http://google.com)
  // String baseUrl = "tsincoco.com"; // "localhost"; //"192.168.20.112";

  CardService._internal();
  
  static final CardService _instance = CardService._internal();

  factory CardService() => _instance;

  ///static HelloService instance that we will call when we want to make requests
  static CardService get instance => _instance;
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

    String baseUrl = dotenv.env['BASE_URL'] ?? "localhost";
    String port = dotenv.env['BASE_PORT'] ?? "50051";
    int portInt = int.parse(port);

    final channel = ClientChannel(
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
    _cardClient = CardClient(channel);

  }
}