//
//  Generated code. Do not modify.
//  source: bank.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;

import 'bank.pb.dart' as $0;

export 'bank.pb.dart';

// @$pb.GrpcServiceName('bank.v1.BankV1')
class BankV1Client extends $grpc.Client {
  static final _$getAllBanks = $grpc.ClientMethod<$0.AllBanksReq, $0.BanksReply>(
      '/bank.v1.BankV1/GetAllBanks',
      ($0.AllBanksReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BanksReply.fromBuffer(value));

  BankV1Client($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.BanksReply> getAllBanks($0.AllBanksReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllBanks, request, options: options);
  }
}

// @$pb.GrpcServiceName('bank.v1.BankV1')
abstract class BankV1ServiceBase extends $grpc.Service {
  $core.String get $name => 'bank.v1.BankV1';

  BankV1ServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AllBanksReq, $0.BanksReply>(
        'GetAllBanks',
        getAllBanks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AllBanksReq.fromBuffer(value),
        ($0.BanksReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.BanksReply> getAllBanks_Pre($grpc.ServiceCall call, $async.Future<$0.AllBanksReq> request) async {
    return getAllBanks(call, await request);
  }

  $async.Future<$0.BanksReply> getAllBanks($grpc.ServiceCall call, $0.AllBanksReq request);
}
