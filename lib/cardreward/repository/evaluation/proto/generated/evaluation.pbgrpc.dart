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
  static final _$modifiedEvaluation = $grpc.ClientMethod<$0.EvaluationProto, $0.Reply>(
      '/evaluation.Evaluation/ModifiedEvaluation',
      ($0.EvaluationProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));
  static final _$getAllEvaluations = $grpc.ClientMethod<$0.EmptyRequest, $0.EvaluationsReply>(
      '/evaluation.Evaluation/GetAllEvaluations',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EvaluationsReply.fromBuffer(value));
  static final _$getEvaluationByID = $grpc.ClientMethod<$0.EvaluationIDProto, $0.EvaluationReply>(
      '/evaluation.Evaluation/GetEvaluationByID',
      ($0.EvaluationIDProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EvaluationReply.fromBuffer(value));
  static final _$getEvaluationRespByOwnerID = $grpc.ClientMethod<$0.EvaluationIDProto, $0.EvaluationRespReply>(
      '/evaluation.Evaluation/GetEvaluationRespByOwnerID',
      ($0.EvaluationIDProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EvaluationRespReply.fromBuffer(value));

  EvaluationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Reply> modifiedEvaluation($0.EvaluationProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modifiedEvaluation, request, options: options);
  }

  $grpc.ResponseFuture<$0.EvaluationsReply> getAllEvaluations($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllEvaluations, request, options: options);
  }

  $grpc.ResponseFuture<$0.EvaluationReply> getEvaluationByID($0.EvaluationIDProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEvaluationByID, request, options: options);
  }

  $grpc.ResponseFuture<$0.EvaluationRespReply> getEvaluationRespByOwnerID($0.EvaluationIDProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEvaluationRespByOwnerID, request, options: options);
  }
}

// @$pb.GrpcServiceName('evaluation.Evaluation')
abstract class EvaluationServiceBase extends $grpc.Service {
  $core.String get $name => 'evaluation.Evaluation';

  EvaluationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EvaluationProto, $0.Reply>(
        'ModifiedEvaluation',
        modifiedEvaluation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EvaluationProto.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.EvaluationsReply>(
        'GetAllEvaluations',
        getAllEvaluations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.EvaluationsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EvaluationIDProto, $0.EvaluationReply>(
        'GetEvaluationByID',
        getEvaluationByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EvaluationIDProto.fromBuffer(value),
        ($0.EvaluationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EvaluationIDProto, $0.EvaluationRespReply>(
        'GetEvaluationRespByOwnerID',
        getEvaluationRespByOwnerID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EvaluationIDProto.fromBuffer(value),
        ($0.EvaluationRespReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.Reply> modifiedEvaluation_Pre($grpc.ServiceCall call, $async.Future<$0.EvaluationProto> request) async {
    return modifiedEvaluation(call, await request);
  }

  $async.Future<$0.EvaluationsReply> getAllEvaluations_Pre($grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async {
    return getAllEvaluations(call, await request);
  }

  $async.Future<$0.EvaluationReply> getEvaluationByID_Pre($grpc.ServiceCall call, $async.Future<$0.EvaluationIDProto> request) async {
    return getEvaluationByID(call, await request);
  }

  $async.Future<$0.EvaluationRespReply> getEvaluationRespByOwnerID_Pre($grpc.ServiceCall call, $async.Future<$0.EvaluationIDProto> request) async {
    return getEvaluationRespByOwnerID(call, await request);
  }

  $async.Future<$0.Reply> modifiedEvaluation($grpc.ServiceCall call, $0.EvaluationProto request);
  $async.Future<$0.EvaluationsReply> getAllEvaluations($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.EvaluationReply> getEvaluationByID($grpc.ServiceCall call, $0.EvaluationIDProto request);
  $async.Future<$0.EvaluationRespReply> getEvaluationRespByOwnerID($grpc.ServiceCall call, $0.EvaluationIDProto request);
}
