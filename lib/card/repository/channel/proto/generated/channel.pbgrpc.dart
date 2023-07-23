//
//  Generated code. Do not modify.
//  source: channel.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;

import 'channel.pb.dart' as $0;

export 'channel.pb.dart';

class ChannelClient extends $grpc.Client {
  static final _$getChannelCategoryTypes = $grpc.ClientMethod<$0.EmptyRequest, $0.ChannelCategoryTypeProtoReply>(
      '/channel.Channel/GetChannelCategoryTypes',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChannelCategoryTypeProtoReply.fromBuffer(value));
  static final _$getChannelsByChannelCategoryType = $grpc.ClientMethod<$0.ChannelCategoryTypeRequest, $0.ChannelProtoReply>(
      '/channel.Channel/GetChannelsByChannelCategoryType',
      ($0.ChannelCategoryTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChannelProtoReply.fromBuffer(value));
  static final _$createChannel = $grpc.ClientMethod<$0.ChannelProto, $0.Reply>(
      '/channel.Channel/CreateChannel',
      ($0.ChannelProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));

  ChannelClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ChannelCategoryTypeProtoReply> getChannelCategoryTypes($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChannelCategoryTypes, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChannelProtoReply> getChannelsByChannelCategoryType($0.ChannelCategoryTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChannelsByChannelCategoryType, request, options: options);
  }

  $grpc.ResponseFuture<$0.Reply> createChannel($0.ChannelProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createChannel, request, options: options);
  }
}

abstract class ChannelServiceBase extends $grpc.Service {
  $core.String get $name => 'channel.Channel';

  ChannelServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.ChannelCategoryTypeProtoReply>(
        'GetChannelCategoryTypes',
        getChannelCategoryTypes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.ChannelCategoryTypeProtoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChannelCategoryTypeRequest, $0.ChannelProtoReply>(
        'GetChannelsByChannelCategoryType',
        getChannelsByChannelCategoryType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChannelCategoryTypeRequest.fromBuffer(value),
        ($0.ChannelProtoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChannelProto, $0.Reply>(
        'CreateChannel',
        createChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChannelProto.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
  }

  $async.Future<$0.ChannelCategoryTypeProtoReply> getChannelCategoryTypes_Pre($grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async {
    return getChannelCategoryTypes(call, await request);
  }

  $async.Future<$0.ChannelProtoReply> getChannelsByChannelCategoryType_Pre($grpc.ServiceCall call, $async.Future<$0.ChannelCategoryTypeRequest> request) async {
    return getChannelsByChannelCategoryType(call, await request);
  }

  $async.Future<$0.Reply> createChannel_Pre($grpc.ServiceCall call, $async.Future<$0.ChannelProto> request) async {
    return createChannel(call, await request);
  }

  $async.Future<$0.ChannelCategoryTypeProtoReply> getChannelCategoryTypes($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.ChannelProtoReply> getChannelsByChannelCategoryType($grpc.ServiceCall call, $0.ChannelCategoryTypeRequest request);
  $async.Future<$0.Reply> createChannel($grpc.ServiceCall call, $0.ChannelProto request);
}
