
// import 'generated/helloworld.pbgrpc.dart';

// class GreeterService extends GreeterServiceBase {
//   @override
//   Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
//     return HelloReply()..message = 'Hello, ${request.name}!';
//   }
// }

// Future<void> main(List<String> args) async {
//   final server = Server(
//     [GreeterService()],
//     [],
//     CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
//   );
//   await server.serve(port: 4040);
//   print('Server listening on port ${server.port}...');
// }