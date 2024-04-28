//
//  Generated code. Do not modify.
//  source: cardreward.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;

import 'cardreward.pb.dart' as $0;

export 'cardreward.pb.dart';

// @$pb.GrpcServiceName('card.reward.v1.CardRewardV1')
class CardRewardV1Client extends $grpc.Client {
  static final _$getCardRewardsByCardID = $grpc.ClientMethod<$0.CardRewardIDReq, $0.CardRewardsReply>(
      '/card.reward.v1.CardRewardV1/GetCardRewardsByCardID',
      ($0.CardRewardIDReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CardRewardsReply.fromBuffer(value));

  CardRewardV1Client($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CardRewardsReply> getCardRewardsByCardID($0.CardRewardIDReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCardRewardsByCardID, request, options: options);
  }
}

// @$pb.GrpcServiceName('card.reward.v1.CardRewardV1')
abstract class CardRewardV1ServiceBase extends $grpc.Service {
  $core.String get $name => 'card.reward.v1.CardRewardV1';

  CardRewardV1ServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CardRewardIDReq, $0.CardRewardsReply>(
        'GetCardRewardsByCardID',
        getCardRewardsByCardID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardRewardIDReq.fromBuffer(value),
        ($0.CardRewardsReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.CardRewardsReply> getCardRewardsByCardID_Pre($grpc.ServiceCall call, $async.Future<$0.CardRewardIDReq> request) async {
    return getCardRewardsByCardID(call, await request);
  }

  $async.Future<$0.CardRewardsReply> getCardRewardsByCardID($grpc.ServiceCall call, $0.CardRewardIDReq request);
}
