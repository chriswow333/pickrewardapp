//
//  Generated code. Do not modify.
//  source: evaluation.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;

import 'evaluation.pb.dart' as $0;

export 'evaluation.pb.dart';

// @$pb.GrpcServiceName('evaluation.Evaluation')
class EvaluationClient extends $grpc.Client {
  static final _$evaluateRespByOwnerID = $grpc.ClientMethod<$0.EventReq, $0.EvaluationEventResultRespReply>(
      '/evaluation.Evaluation/EvaluateRespByOwnerID',
      ($0.EventReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EvaluationEventResultRespReply.fromBuffer(value));
  static final _$getEvaluationRespByOwnerID = $grpc.ClientMethod<$0.OwnerIDReq, $0.EvaluationRespReply>(
      '/evaluation.Evaluation/GetEvaluationRespByOwnerID',
      ($0.OwnerIDReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EvaluationRespReply.fromBuffer(value));

  EvaluationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.EvaluationEventResultRespReply> evaluateRespByOwnerID($0.EventReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$evaluateRespByOwnerID, request, options: options);
  }

  $grpc.ResponseFuture<$0.EvaluationRespReply> getEvaluationRespByOwnerID($0.OwnerIDReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEvaluationRespByOwnerID, request, options: options);
  }
}

// @$pb.GrpcServiceName('evaluation.Evaluation')
abstract class EvaluationServiceBase extends $grpc.Service {
  $core.String get $name => 'evaluation.Evaluation';

  EvaluationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EventReq, $0.EvaluationEventResultRespReply>(
        'EvaluateRespByOwnerID',
        evaluateRespByOwnerID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EventReq.fromBuffer(value),
        ($0.EvaluationEventResultRespReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OwnerIDReq, $0.EvaluationRespReply>(
        'GetEvaluationRespByOwnerID',
        getEvaluationRespByOwnerID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OwnerIDReq.fromBuffer(value),
        ($0.EvaluationRespReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.EvaluationEventResultRespReply> evaluateRespByOwnerID_Pre($grpc.ServiceCall call, $async.Future<$0.EventReq> request) async {
    return evaluateRespByOwnerID(call, await request);
  }

  $async.Future<$0.EvaluationRespReply> getEvaluationRespByOwnerID_Pre($grpc.ServiceCall call, $async.Future<$0.OwnerIDReq> request) async {
    return getEvaluationRespByOwnerID(call, await request);
  }

  $async.Future<$0.EvaluationEventResultRespReply> evaluateRespByOwnerID($grpc.ServiceCall call, $0.EventReq request);
  $async.Future<$0.EvaluationRespReply> getEvaluationRespByOwnerID($grpc.ServiceCall call, $0.OwnerIDReq request);
}
