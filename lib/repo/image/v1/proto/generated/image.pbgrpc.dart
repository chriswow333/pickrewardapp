//
//  Generated code. Do not modify.
//  source: image.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;

import 'image.pb.dart' as $0;

export 'image.pb.dart';

// @$pb.GrpcServiceName('image.v1.ImageV1')
class ImageV1Client extends $grpc.Client {
  static final _$downloadImage = $grpc.ClientMethod<$0.ImageReq, $0.ImageReply>(
      '/image.v1.ImageV1/DownloadImage',
      ($0.ImageReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ImageReply.fromBuffer(value));

  ImageV1Client($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ImageReply> downloadImage($0.ImageReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$downloadImage, request, options: options);
  }
}

// @$pb.GrpcServiceName('image.v1.ImageV1')
abstract class ImageV1ServiceBase extends $grpc.Service {
  $core.String get $name => 'image.v1.ImageV1';

  ImageV1ServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ImageReq, $0.ImageReply>(
        'DownloadImage',
        downloadImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ImageReq.fromBuffer(value),
        ($0.ImageReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.ImageReply> downloadImage_Pre($grpc.ServiceCall call, $async.Future<$0.ImageReq> request) async {
    return downloadImage(call, await request);
  }

  $async.Future<$0.ImageReply> downloadImage($grpc.ServiceCall call, $0.ImageReq request);
}
