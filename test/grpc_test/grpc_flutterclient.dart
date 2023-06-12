



import 'package:grpc/grpc.dart';

class GrpcFlutterClient {


  static ClientChannel getClient (){
    return ClientChannel(
      "localhost",
      port:4040,
      options:const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        idleTimeout: Duration(minutes: 1)
      )
    );
  }

}