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
  static final _$getAllBanks = $grpc.ClientMethod<$0.AllBanksReq, $0.BanksReply>(
      '/card.Card/GetAllBanks',
      ($0.AllBanksReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BanksReply.fromBuffer(value));
  static final _$getLatestCards = $grpc.ClientMethod<$0.EmptyReq, $0.CardsReply>(
      '/card.Card/GetLatestCards',
      ($0.EmptyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CardsReply.fromBuffer(value));
  static final _$getCardsByBankID = $grpc.ClientMethod<$0.CardsByBankIDReq, $0.CardsReply>(
      '/card.Card/GetCardsByBankID',
      ($0.CardsByBankIDReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CardsReply.fromBuffer(value));
  static final _$getCardRewardsByCardID = $grpc.ClientMethod<$0.CardRewardsByCardIDReq, $0.CardRewardsReply>(
      '/card.Card/GetCardRewardsByCardID',
      ($0.CardRewardsByCardIDReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CardRewardsReply.fromBuffer(value));
  static final _$evaluateCards = $grpc.ClientMethod<$0.CardEventReq, $0.EvaluateCardRewardsReply>(
      '/card.Card/EvaluateCards',
      ($0.CardEventReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EvaluateCardRewardsReply.fromBuffer(value));
  static final _$searchCard = $grpc.ClientMethod<$0.SearchCardReq, $0.SearchCardReply>(
      '/card.Card/SearchCard',
      ($0.SearchCardReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SearchCardReply.fromBuffer(value));

  CardClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.BanksReply> getAllBanks($0.AllBanksReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllBanks, request, options: options);
  }

  $grpc.ResponseFuture<$0.CardsReply> getLatestCards($0.EmptyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLatestCards, request, options: options);
  }

  $grpc.ResponseFuture<$0.CardsReply> getCardsByBankID($0.CardsByBankIDReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCardsByBankID, request, options: options);
  }

  $grpc.ResponseFuture<$0.CardRewardsReply> getCardRewardsByCardID($0.CardRewardsByCardIDReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCardRewardsByCardID, request, options: options);
  }

  $grpc.ResponseFuture<$0.EvaluateCardRewardsReply> evaluateCards($0.CardEventReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$evaluateCards, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchCardReply> searchCard($0.SearchCardReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchCard, request, options: options);
  }
}

// @$pb.GrpcServiceName('card.Card')
abstract class CardServiceBase extends $grpc.Service {
  $core.String get $name => 'card.Card';

  CardServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AllBanksReq, $0.BanksReply>(
        'GetAllBanks',
        getAllBanks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AllBanksReq.fromBuffer(value),
        ($0.BanksReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyReq, $0.CardsReply>(
        'GetLatestCards',
        getLatestCards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyReq.fromBuffer(value),
        ($0.CardsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CardsByBankIDReq, $0.CardsReply>(
        'GetCardsByBankID',
        getCardsByBankID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardsByBankIDReq.fromBuffer(value),
        ($0.CardsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CardRewardsByCardIDReq, $0.CardRewardsReply>(
        'GetCardRewardsByCardID',
        getCardRewardsByCardID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardRewardsByCardIDReq.fromBuffer(value),
        ($0.CardRewardsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CardEventReq, $0.EvaluateCardRewardsReply>(
        'EvaluateCards',
        evaluateCards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardEventReq.fromBuffer(value),
        ($0.EvaluateCardRewardsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchCardReq, $0.SearchCardReply>(
        'SearchCard',
        searchCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchCardReq.fromBuffer(value),
        ($0.SearchCardReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.BanksReply> getAllBanks_Pre($grpc.ServiceCall call, $async.Future<$0.AllBanksReq> request) async {
    return getAllBanks(call, await request);
  }

  $async.Future<$0.CardsReply> getLatestCards_Pre($grpc.ServiceCall call, $async.Future<$0.EmptyReq> request) async {
    return getLatestCards(call, await request);
  }

  $async.Future<$0.CardsReply> getCardsByBankID_Pre($grpc.ServiceCall call, $async.Future<$0.CardsByBankIDReq> request) async {
    return getCardsByBankID(call, await request);
  }

  $async.Future<$0.CardRewardsReply> getCardRewardsByCardID_Pre($grpc.ServiceCall call, $async.Future<$0.CardRewardsByCardIDReq> request) async {
    return getCardRewardsByCardID(call, await request);
  }

  $async.Future<$0.EvaluateCardRewardsReply> evaluateCards_Pre($grpc.ServiceCall call, $async.Future<$0.CardEventReq> request) async {
    return evaluateCards(call, await request);
  }

  $async.Future<$0.SearchCardReply> searchCard_Pre($grpc.ServiceCall call, $async.Future<$0.SearchCardReq> request) async {
    return searchCard(call, await request);
  }

  $async.Future<$0.BanksReply> getAllBanks($grpc.ServiceCall call, $0.AllBanksReq request);
  $async.Future<$0.CardsReply> getLatestCards($grpc.ServiceCall call, $0.EmptyReq request);
  $async.Future<$0.CardsReply> getCardsByBankID($grpc.ServiceCall call, $0.CardsByBankIDReq request);
  $async.Future<$0.CardRewardsReply> getCardRewardsByCardID($grpc.ServiceCall call, $0.CardRewardsByCardIDReq request);
  $async.Future<$0.EvaluateCardRewardsReply> evaluateCards($grpc.ServiceCall call, $0.CardEventReq request);
  $async.Future<$0.SearchCardReply> searchCard($grpc.ServiceCall call, $0.SearchCardReq request);
}
