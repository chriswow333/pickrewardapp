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

// @$pb.GrpcServiceName('pay.v1.PayV1')
class PayV1Client extends $grpc.Client {
  static final _$getPayByID = $grpc.ClientMethod<$0.PayIDReq, $0.PayReply>(
      '/pay.v1.PayV1/GetPayByID',
      ($0.PayIDReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PayReply.fromBuffer(value));
  static final _$getAllPays = $grpc.ClientMethod<$0.EmptyReq, $0.PaysReply>(
      '/pay.v1.PayV1/GetAllPays',
      ($0.EmptyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PaysReply.fromBuffer(value));

  PayV1Client($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.PayReply> getPayByID($0.PayIDReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPayByID, request, options: options);
  }

  $grpc.ResponseFuture<$0.PaysReply> getAllPays($0.EmptyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllPays, request, options: options);
  }
}

// @$pb.GrpcServiceName('pay.v1.PayV1')
abstract class PayV1ServiceBase extends $grpc.Service {
  $core.String get $name => 'pay.v1.PayV1';

  PayV1ServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PayIDReq, $0.PayReply>(
        'GetPayByID',
        getPayByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PayIDReq.fromBuffer(value),
        ($0.PayReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyReq, $0.PaysReply>(
        'GetAllPays',
        getAllPays_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyReq.fromBuffer(value),
        ($0.PaysReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.PayReply> getPayByID_Pre($grpc.ServiceCall call, $async.Future<$0.PayIDReq> request) async {
    return getPayByID(call, await request);
  }

  $async.Future<$0.PaysReply> getAllPays_Pre($grpc.ServiceCall call, $async.Future<$0.EmptyReq> request) async {
    return getAllPays(call, await request);
  }

  $async.Future<$0.PayReply> getPayByID($grpc.ServiceCall call, $0.PayIDReq request);
  $async.Future<$0.PaysReply> getAllPays($grpc.ServiceCall call, $0.EmptyReq request);
}
