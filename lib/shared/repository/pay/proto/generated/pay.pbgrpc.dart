//
//  Generated code. Do not modify.
//  source: pay.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;

import 'pay.pb.dart' as $0;

export 'pay.pb.dart';

// @$pb.GrpcServiceName('pay.Pay')
class PayClient extends $grpc.Client {
  static final _$getAllPays = $grpc.ClientMethod<$0.AllPaysReq, $0.PaysReply>(
      '/pay.Pay/GetAllPays',
      ($0.AllPaysReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PaysReply.fromBuffer(value));

  PayClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.PaysReply> getAllPays($0.AllPaysReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllPays, request, options: options);
  }
}

// @$pb.GrpcServiceName('pay.Pay')
abstract class PayServiceBase extends $grpc.Service {
  $core.String get $name => 'pay.Pay';

  PayServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AllPaysReq, $0.PaysReply>(
        'GetAllPays',
        getAllPays_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AllPaysReq.fromBuffer(value),
        ($0.PaysReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.PaysReply> getAllPays_Pre($grpc.ServiceCall call, $async.Future<$0.AllPaysReq> request) async {
    return getAllPays(call, await request);
  }

  $async.Future<$0.PaysReply> getAllPays($grpc.ServiceCall call, $0.AllPaysReq request);
}
