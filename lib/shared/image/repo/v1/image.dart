


import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc.dart';
import 'package:pickrewardapp/shared/image/repo/v1/proto/generated/image.pbgrpc.dart';




class ImageService {

  ImageService._internal();
  
  static final ImageService _instance = ImageService._internal();

  factory ImageService() => _instance;

  static ImageService get instance => _instance;

  late ImageV1Client _imageClient;

    Future<void> init() async {
    _createChannel();
  }


    ImageV1Client get imageClient {
    return _imageClient;
  }


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
    _imageClient = ImageV1Client(channel);
  }

}
