// Copyright (c) 2018, the gRPC project authors. Please see the AUTHORS file
// for details. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Dart implementation of the gRPC helloworld.Greeter client.
import 'package:grpc/grpc.dart';

import 'generated/channel.pbgrpc.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'tsincoco.com',
    port: 443,
    options: ChannelOptions(
    credentials: ChannelCredentials.secure(
        // certificates: Uint8List.fromList(await File('./Users/chrisyu/data/creditcard/app/pickrewardapp/lib/shared/repository/channel/fullchain.pem').readAsBytes()),
        onBadCertificate:(certificate, str ) {
          return true;
        }
      ),
      codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );

  final stub = ChannelClient(channel);

  final name = args.isNotEmpty ? args[0] : 'world';

  try {
    final response = await stub.getChannelCategoryTypes(EmptyReq());
      // options: CallOptions(compression: const GzipCodec()),
    
    print('Greeter client received: ${response}');
  } catch (e) {
    print('Caught error: $e');
  }
  // await channel.shutdown();
}