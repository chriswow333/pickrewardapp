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
  static final _$getAllPays = $grpc.ClientMethod<$0.EmptyRequest, $0.PayProtoReply>(
      '/pay.Pay/GetAllPays',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PayProtoReply.fromBuffer(value));
  static final _$createPay = $grpc.ClientMethod<$0.PayProto, $0.Reply>(
      '/pay.Pay/CreatePay',
      ($0.PayProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));

  PayClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.PayProtoReply> getAllPays($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllPays, request, options: options);
  }

  $grpc.ResponseFuture<$0.Reply> createPay($0.PayProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPay, request, options: options);
  }
}

// @$pb.GrpcServiceName('pay.Pay')
abstract class PayServiceBase extends $grpc.Service {
  $core.String get $name => 'pay.Pay';

  PayServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.PayProtoReply>(
        'GetAllPays',
        getAllPays_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.PayProtoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PayProto, $0.Reply>(
        'CreatePay',
        createPay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PayProto.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
  }

  $async.Future<$0.PayProtoReply> getAllPays_Pre($grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async {
    return getAllPays(call, await request);
  }

  $async.Future<$0.Reply> createPay_Pre($grpc.ServiceCall call, $async.Future<$0.PayProto> request) async {
    return createPay(call, await request);
  }

  $async.Future<$0.PayProtoReply> getAllPays($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.Reply> createPay($grpc.ServiceCall call, $0.PayProto request);
}
