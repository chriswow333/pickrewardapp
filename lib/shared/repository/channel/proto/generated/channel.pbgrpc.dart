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

// @$pb.GrpcServiceName('channel.Channel')
class ChannelClient extends $grpc.Client {
  static final _$getChannelCategoryTypes = $grpc.ClientMethod<$0.EmptyReq, $0.ChannelCategoryTypeReply>(
      '/channel.Channel/GetChannelCategoryTypes',
      ($0.EmptyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChannelCategoryTypeReply.fromBuffer(value));
  static final _$getChannelsByChannelCategoryType = $grpc.ClientMethod<$0.ChannelCategoryTypeReq, $0.ChannelReply>(
      '/channel.Channel/GetChannelsByChannelCategoryType',
      ($0.ChannelCategoryTypeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChannelReply.fromBuffer(value));

  ChannelClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ChannelCategoryTypeReply> getChannelCategoryTypes($0.EmptyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChannelCategoryTypes, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChannelReply> getChannelsByChannelCategoryType($0.ChannelCategoryTypeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChannelsByChannelCategoryType, request, options: options);
  }
}

// @$pb.GrpcServiceName('channel.Channel')
abstract class ChannelServiceBase extends $grpc.Service {
  $core.String get $name => 'channel.Channel';

  ChannelServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyReq, $0.ChannelCategoryTypeReply>(
        'GetChannelCategoryTypes',
        getChannelCategoryTypes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyReq.fromBuffer(value),
        ($0.ChannelCategoryTypeReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChannelCategoryTypeReq, $0.ChannelReply>(
        'GetChannelsByChannelCategoryType',
        getChannelsByChannelCategoryType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChannelCategoryTypeReq.fromBuffer(value),
        ($0.ChannelReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.ChannelCategoryTypeReply> getChannelCategoryTypes_Pre($grpc.ServiceCall call, $async.Future<$0.EmptyReq> request) async {
    return getChannelCategoryTypes(call, await request);
  }

  $async.Future<$0.ChannelReply> getChannelsByChannelCategoryType_Pre($grpc.ServiceCall call, $async.Future<$0.ChannelCategoryTypeReq> request) async {
    return getChannelsByChannelCategoryType(call, await request);
  }

  $async.Future<$0.ChannelCategoryTypeReply> getChannelCategoryTypes($grpc.ServiceCall call, $0.EmptyReq request);
  $async.Future<$0.ChannelReply> getChannelsByChannelCategoryType($grpc.ServiceCall call, $0.ChannelCategoryTypeReq request);
}
