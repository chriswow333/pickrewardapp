
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

export 'evaluation.pb.dart';

// @$pb.GrpcServiceName('evaluation_v1.Evaluation')
class EvaluationClient extends $grpc.Client {

  EvaluationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);
}

// @$pb.GrpcServiceName('evaluation_v1.Evaluation')
abstract class EvaluationServiceBase extends $grpc.Service {
  $core.String get $name => 'evaluation_v1.Evaluation';

  EvaluationServiceBase();

}
