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

// @$pb.GrpcServiceName('channel.v1.ChannelV1')
class ChannelV1Client extends $grpc.Client {
  static final _$getShowLabels = $grpc.ClientMethod<$0.EmptyReq, $0.ShowLabelsReply>(
      '/channel.v1.ChannelV1/GetShowLabels',
      ($0.EmptyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ShowLabelsReply.fromBuffer(value));
  static final _$getChannelsByShowLabel = $grpc.ClientMethod<$0.ShowLabelReq, $0.ChannelsReply>(
      '/channel.v1.ChannelV1/GetChannelsByShowLabel',
      ($0.ShowLabelReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChannelsReply.fromBuffer(value));
  static final _$getsByChannelIDs = $grpc.ClientMethod<$0.ChannelIDsReq, $0.ChannelsReply>(
      '/channel.v1.ChannelV1/GetsByChannelIDs',
      ($0.ChannelIDsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChannelsReply.fromBuffer(value));
  static final _$searchChannel = $grpc.ClientMethod<$0.SearchChannelReq, $0.SearchChannelsReply>(
      '/channel.v1.ChannelV1/SearchChannel',
      ($0.SearchChannelReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SearchChannelsReply.fromBuffer(value));

  ChannelV1Client($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ShowLabelsReply> getShowLabels($0.EmptyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getShowLabels, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChannelsReply> getChannelsByShowLabel($0.ShowLabelReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChannelsByShowLabel, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChannelsReply> getsByChannelIDs($0.ChannelIDsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getsByChannelIDs, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchChannelsReply> searchChannel($0.SearchChannelReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchChannel, request, options: options);
  }
}

// @$pb.GrpcServiceName('channel.v1.ChannelV1')
abstract class ChannelV1ServiceBase extends $grpc.Service {
  $core.String get $name => 'channel.v1.ChannelV1';

  ChannelV1ServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyReq, $0.ShowLabelsReply>(
        'GetShowLabels',
        getShowLabels_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyReq.fromBuffer(value),
        ($0.ShowLabelsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ShowLabelReq, $0.ChannelsReply>(
        'GetChannelsByShowLabel',
        getChannelsByShowLabel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ShowLabelReq.fromBuffer(value),
        ($0.ChannelsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChannelIDsReq, $0.ChannelsReply>(
        'GetsByChannelIDs',
        getsByChannelIDs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChannelIDsReq.fromBuffer(value),
        ($0.ChannelsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchChannelReq, $0.SearchChannelsReply>(
        'SearchChannel',
        searchChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchChannelReq.fromBuffer(value),
        ($0.SearchChannelsReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.ShowLabelsReply> getShowLabels_Pre($grpc.ServiceCall call, $async.Future<$0.EmptyReq> request) async {
    return getShowLabels(call, await request);
  }

  $async.Future<$0.ChannelsReply> getChannelsByShowLabel_Pre($grpc.ServiceCall call, $async.Future<$0.ShowLabelReq> request) async {
    return getChannelsByShowLabel(call, await request);
  }

  $async.Future<$0.ChannelsReply> getsByChannelIDs_Pre($grpc.ServiceCall call, $async.Future<$0.ChannelIDsReq> request) async {
    return getsByChannelIDs(call, await request);
  }

  $async.Future<$0.SearchChannelsReply> searchChannel_Pre($grpc.ServiceCall call, $async.Future<$0.SearchChannelReq> request) async {
    return searchChannel(call, await request);
  }

  $async.Future<$0.ShowLabelsReply> getShowLabels($grpc.ServiceCall call, $0.EmptyReq request);
  $async.Future<$0.ChannelsReply> getChannelsByShowLabel($grpc.ServiceCall call, $0.ShowLabelReq request);
  $async.Future<$0.ChannelsReply> getsByChannelIDs($grpc.ServiceCall call, $0.ChannelIDsReq request);
  $async.Future<$0.SearchChannelsReply> searchChannel($grpc.ServiceCall call, $0.SearchChannelReq request);
}
