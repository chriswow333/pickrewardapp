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

// @$pb.GrpcServiceName('card.v1.CardV1')
class CardV1Client extends $grpc.Client {
  static final _$getCardsByBankID = $grpc.ClientMethod<$0.CardsByBankIDReq, $0.CardsReply>(
      '/card.v1.CardV1/GetCardsByBankID',
      ($0.CardsByBankIDReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CardsReply.fromBuffer(value));
  static final _$getLatestCards = $grpc.ClientMethod<$0.EmptyReq, $0.CardsReply>(
      '/card.v1.CardV1/GetLatestCards',
      ($0.EmptyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CardsReply.fromBuffer(value));
  static final _$getCardByID = $grpc.ClientMethod<$0.CardIDReq, $0.CardReply>(
      '/card.v1.CardV1/GetCardByID',
      ($0.CardIDReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CardReply.fromBuffer(value));
  static final _$searchCard = $grpc.ClientMethod<$0.SearchCardReq, $0.CardsReply>(
      '/card.v1.CardV1/SearchCard',
      ($0.SearchCardReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CardsReply.fromBuffer(value));

  CardV1Client($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CardsReply> getCardsByBankID($0.CardsByBankIDReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCardsByBankID, request, options: options);
  }

  $grpc.ResponseFuture<$0.CardsReply> getLatestCards($0.EmptyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLatestCards, request, options: options);
  }

  $grpc.ResponseFuture<$0.CardReply> getCardByID($0.CardIDReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCardByID, request, options: options);
  }

  $grpc.ResponseFuture<$0.CardsReply> searchCard($0.SearchCardReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchCard, request, options: options);
  }
}

// @$pb.GrpcServiceName('card.v1.CardV1')
abstract class CardV1ServiceBase extends $grpc.Service {
  $core.String get $name => 'card.v1.CardV1';

  CardV1ServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CardsByBankIDReq, $0.CardsReply>(
        'GetCardsByBankID',
        getCardsByBankID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardsByBankIDReq.fromBuffer(value),
        ($0.CardsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyReq, $0.CardsReply>(
        'GetLatestCards',
        getLatestCards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyReq.fromBuffer(value),
        ($0.CardsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CardIDReq, $0.CardReply>(
        'GetCardByID',
        getCardByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardIDReq.fromBuffer(value),
        ($0.CardReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchCardReq, $0.CardsReply>(
        'SearchCard',
        searchCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchCardReq.fromBuffer(value),
        ($0.CardsReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.CardsReply> getCardsByBankID_Pre($grpc.ServiceCall call, $async.Future<$0.CardsByBankIDReq> request) async {
    return getCardsByBankID(call, await request);
  }

  $async.Future<$0.CardsReply> getLatestCards_Pre($grpc.ServiceCall call, $async.Future<$0.EmptyReq> request) async {
    return getLatestCards(call, await request);
  }

  $async.Future<$0.CardReply> getCardByID_Pre($grpc.ServiceCall call, $async.Future<$0.CardIDReq> request) async {
    return getCardByID(call, await request);
  }

  $async.Future<$0.CardsReply> searchCard_Pre($grpc.ServiceCall call, $async.Future<$0.SearchCardReq> request) async {
    return searchCard(call, await request);
  }

  $async.Future<$0.CardsReply> getCardsByBankID($grpc.ServiceCall call, $0.CardsByBankIDReq request);
  $async.Future<$0.CardsReply> getLatestCards($grpc.ServiceCall call, $0.EmptyReq request);
  $async.Future<$0.CardReply> getCardByID($grpc.ServiceCall call, $0.CardIDReq request);
  $async.Future<$0.CardsReply> searchCard($grpc.ServiceCall call, $0.SearchCardReq request);
}
