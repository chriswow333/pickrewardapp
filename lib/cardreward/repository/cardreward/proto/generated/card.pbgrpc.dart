//
//  Generated code. Do not modify.
//  source: card.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;

import 'card.pb.dart' as $0;

export 'card.pb.dart';

// @$pb.GrpcServiceName('card.Card')
class CardClient extends $grpc.Client {
  static final _$createBank = $grpc.ClientMethod<$0.BankProto, $0.Reply>(
      '/card.Card/CreateBank',
      ($0.BankProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));
  static final _$createCard = $grpc.ClientMethod<$0.CardProto, $0.Reply>(
      '/card.Card/CreateCard',
      ($0.CardProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));
  static final _$getAllBanks = $grpc.ClientMethod<$0.EmptyRequest, $0.BanksProtoReply>(
      '/card.Card/GetAllBanks',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BanksProtoReply.fromBuffer(value));
  static final _$getCardsByBankID = $grpc.ClientMethod<$0.BankIDProto, $0.CardsProtoReply>(
      '/card.Card/GetCardsByBankID',
      ($0.BankIDProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CardsProtoReply.fromBuffer(value));
  static final _$modifiedCardReward = $grpc.ClientMethod<$0.CardRewardProto, $0.Reply>(
      '/card.Card/ModifiedCardReward',
      ($0.CardRewardProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));
  static final _$getCardRewardsByCardID = $grpc.ClientMethod<$0.CardIDProto, $0.CardRewardsReply>(
      '/card.Card/GetCardRewardsByCardID',
      ($0.CardIDProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CardRewardsReply.fromBuffer(value));
  static final _$evaluateCards = $grpc.ClientMethod<$0.CardEventProto, $0.EvaluateCardRewardsProtoReply>(
      '/card.Card/EvaluateCards',
      ($0.CardEventProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EvaluateCardRewardsProtoReply.fromBuffer(value));

  CardClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Reply> createBank($0.BankProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBank, request, options: options);
  }

  $grpc.ResponseFuture<$0.Reply> createCard($0.CardProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.BanksProtoReply> getAllBanks($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllBanks, request, options: options);
  }

  $grpc.ResponseFuture<$0.CardsProtoReply> getCardsByBankID($0.BankIDProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCardsByBankID, request, options: options);
  }

  $grpc.ResponseFuture<$0.Reply> modifiedCardReward($0.CardRewardProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modifiedCardReward, request, options: options);
  }

  $grpc.ResponseFuture<$0.CardRewardsReply> getCardRewardsByCardID($0.CardIDProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCardRewardsByCardID, request, options: options);
  }

  $grpc.ResponseFuture<$0.EvaluateCardRewardsProtoReply> evaluateCards($0.CardEventProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$evaluateCards, request, options: options);
  }
}

// @$pb.GrpcServiceName('card.Card')
abstract class CardServiceBase extends $grpc.Service {
  $core.String get $name => 'card.Card';

  CardServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.BankProto, $0.Reply>(
        'CreateBank',
        createBank_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BankProto.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CardProto, $0.Reply>(
        'CreateCard',
        createCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardProto.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.BanksProtoReply>(
        'GetAllBanks',
        getAllBanks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.BanksProtoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BankIDProto, $0.CardsProtoReply>(
        'GetCardsByBankID',
        getCardsByBankID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BankIDProto.fromBuffer(value),
        ($0.CardsProtoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CardRewardProto, $0.Reply>(
        'ModifiedCardReward',
        modifiedCardReward_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardRewardProto.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CardIDProto, $0.CardRewardsReply>(
        'GetCardRewardsByCardID',
        getCardRewardsByCardID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardIDProto.fromBuffer(value),
        ($0.CardRewardsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CardEventProto, $0.EvaluateCardRewardsProtoReply>(
        'EvaluateCards',
        evaluateCards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardEventProto.fromBuffer(value),
        ($0.EvaluateCardRewardsProtoReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.Reply> createBank_Pre($grpc.ServiceCall call, $async.Future<$0.BankProto> request) async {
    return createBank(call, await request);
  }

  $async.Future<$0.Reply> createCard_Pre($grpc.ServiceCall call, $async.Future<$0.CardProto> request) async {
    return createCard(call, await request);
  }

  $async.Future<$0.BanksProtoReply> getAllBanks_Pre($grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async {
    return getAllBanks(call, await request);
  }

  $async.Future<$0.CardsProtoReply> getCardsByBankID_Pre($grpc.ServiceCall call, $async.Future<$0.BankIDProto> request) async {
    return getCardsByBankID(call, await request);
  }

  $async.Future<$0.Reply> modifiedCardReward_Pre($grpc.ServiceCall call, $async.Future<$0.CardRewardProto> request) async {
    return modifiedCardReward(call, await request);
  }

  $async.Future<$0.CardRewardsReply> getCardRewardsByCardID_Pre($grpc.ServiceCall call, $async.Future<$0.CardIDProto> request) async {
    return getCardRewardsByCardID(call, await request);
  }

  $async.Future<$0.EvaluateCardRewardsProtoReply> evaluateCards_Pre($grpc.ServiceCall call, $async.Future<$0.CardEventProto> request) async {
    return evaluateCards(call, await request);
  }

  $async.Future<$0.Reply> createBank($grpc.ServiceCall call, $0.BankProto request);
  $async.Future<$0.Reply> createCard($grpc.ServiceCall call, $0.CardProto request);
  $async.Future<$0.BanksProtoReply> getAllBanks($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.CardsProtoReply> getCardsByBankID($grpc.ServiceCall call, $0.BankIDProto request);
  $async.Future<$0.Reply> modifiedCardReward($grpc.ServiceCall call, $0.CardRewardProto request);
  $async.Future<$0.CardRewardsReply> getCardRewardsByCardID($grpc.ServiceCall call, $0.CardIDProto request);
  $async.Future<$0.EvaluateCardRewardsProtoReply> evaluateCards($grpc.ServiceCall call, $0.CardEventProto request);
}
