//
//  Generated code. Do not modify.
//  source: evaluation.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class EvaluationEventResultRespReply extends $pb.GeneratedMessage {
  factory EvaluationEventResultRespReply() => create();
  EvaluationEventResultRespReply._() : super();
  factory EvaluationEventResultRespReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationEventResultRespReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultRespReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..aOM<EvaluationEventResultRespProto>(2, _omitFieldNames ? '' : 'evaluationEventResultResp', protoName: 'evaluationEventResultResp', subBuilder: EvaluationEventResultRespProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationEventResultRespReply clone() => EvaluationEventResultRespReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationEventResultRespReply copyWith(void Function(EvaluationEventResultRespReply) updates) => super.copyWith((message) => updates(message as EvaluationEventResultRespReply)) as EvaluationEventResultRespReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultRespReply create() => EvaluationEventResultRespReply._();
  EvaluationEventResultRespReply createEmptyInstance() => create();
  static $pb.PbList<EvaluationEventResultRespReply> createRepeated() => $pb.PbList<EvaluationEventResultRespReply>();
  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultRespReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationEventResultRespReply>(create);
  static EvaluationEventResultRespReply? _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  EvaluationEventResultRespProto get evaluationEventResultResp => $_getN(1);
  @$pb.TagNumber(2)
  set evaluationEventResultResp(EvaluationEventResultRespProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvaluationEventResultResp() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvaluationEventResultResp() => clearField(2);
  @$pb.TagNumber(2)
  EvaluationEventResultRespProto ensureEvaluationEventResultResp() => $_ensure(1);
}

class EvaluationEventResultRespProto extends $pb.GeneratedMessage {
  factory EvaluationEventResultRespProto() => create();
  EvaluationEventResultRespProto._() : super();
  factory EvaluationEventResultRespProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationEventResultRespProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultRespProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<FeedbackEventResultProto>(2, _omitFieldNames ? '' : 'feedbackEventResultResp', protoName: 'feedbackEventResultResp', subBuilder: FeedbackEventResultProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationEventResultRespProto clone() => EvaluationEventResultRespProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationEventResultRespProto copyWith(void Function(EvaluationEventResultRespProto) updates) => super.copyWith((message) => updates(message as EvaluationEventResultRespProto)) as EvaluationEventResultRespProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultRespProto create() => EvaluationEventResultRespProto._();
  EvaluationEventResultRespProto createEmptyInstance() => create();
  static $pb.PbList<EvaluationEventResultRespProto> createRepeated() => $pb.PbList<EvaluationEventResultRespProto>();
  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultRespProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationEventResultRespProto>(create);
  static EvaluationEventResultRespProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  FeedbackEventResultProto get feedbackEventResultResp => $_getN(1);
  @$pb.TagNumber(2)
  set feedbackEventResultResp(FeedbackEventResultProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFeedbackEventResultResp() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeedbackEventResultResp() => clearField(2);
  @$pb.TagNumber(2)
  FeedbackEventResultProto ensureFeedbackEventResultResp() => $_ensure(1);
}

class EvaluationEventResultReply extends $pb.GeneratedMessage {
  factory EvaluationEventResultReply() => create();
  EvaluationEventResultReply._() : super();
  factory EvaluationEventResultReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationEventResultReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..aOM<EvaluationEventResultProto>(2, _omitFieldNames ? '' : 'evaluationEventResult', protoName: 'evaluationEventResult', subBuilder: EvaluationEventResultProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationEventResultReply clone() => EvaluationEventResultReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationEventResultReply copyWith(void Function(EvaluationEventResultReply) updates) => super.copyWith((message) => updates(message as EvaluationEventResultReply)) as EvaluationEventResultReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultReply create() => EvaluationEventResultReply._();
  EvaluationEventResultReply createEmptyInstance() => create();
  static $pb.PbList<EvaluationEventResultReply> createRepeated() => $pb.PbList<EvaluationEventResultReply>();
  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationEventResultReply>(create);
  static EvaluationEventResultReply? _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  EvaluationEventResultProto get evaluationEventResult => $_getN(1);
  @$pb.TagNumber(2)
  set evaluationEventResult(EvaluationEventResultProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvaluationEventResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvaluationEventResult() => clearField(2);
  @$pb.TagNumber(2)
  EvaluationEventResultProto ensureEvaluationEventResult() => $_ensure(1);
}

class EvaluationEventResultProto extends $pb.GeneratedMessage {
  factory EvaluationEventResultProto() => create();
  EvaluationEventResultProto._() : super();
  factory EvaluationEventResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationEventResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'evaluationEventStatus', $pb.PbFieldType.O3, protoName: 'evaluationEventStatus')
    ..aOM<PayloadEventResultProto>(3, _omitFieldNames ? '' : 'payloadEventResult', protoName: 'payloadEventResult', subBuilder: PayloadEventResultProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationEventResultProto clone() => EvaluationEventResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationEventResultProto copyWith(void Function(EvaluationEventResultProto) updates) => super.copyWith((message) => updates(message as EvaluationEventResultProto)) as EvaluationEventResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultProto create() => EvaluationEventResultProto._();
  EvaluationEventResultProto createEmptyInstance() => create();
  static $pb.PbList<EvaluationEventResultProto> createRepeated() => $pb.PbList<EvaluationEventResultProto>();
  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationEventResultProto>(create);
  static EvaluationEventResultProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get evaluationEventStatus => $_getIZ(1);
  @$pb.TagNumber(2)
  set evaluationEventStatus($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvaluationEventStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvaluationEventStatus() => clearField(2);

  @$pb.TagNumber(3)
  PayloadEventResultProto get payloadEventResult => $_getN(2);
  @$pb.TagNumber(3)
  set payloadEventResult(PayloadEventResultProto v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayloadEventResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayloadEventResult() => clearField(3);
  @$pb.TagNumber(3)
  PayloadEventResultProto ensurePayloadEventResult() => $_ensure(2);
}

class PayloadEventResultProto extends $pb.GeneratedMessage {
  factory PayloadEventResultProto() => create();
  PayloadEventResultProto._() : super();
  factory PayloadEventResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadEventResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayloadEventResultProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'pass')
    ..aOM<FeedbackEventResultProto>(3, _omitFieldNames ? '' : 'feedbackEventResult', protoName: 'feedbackEventResult', subBuilder: FeedbackEventResultProto.create)
    ..pc<PayloadEventResultProto>(4, _omitFieldNames ? '' : 'payloadEventResults', $pb.PbFieldType.PM, protoName: 'payloadEventResults', subBuilder: PayloadEventResultProto.create)
    ..aOM<ContainerEventResultProto>(5, _omitFieldNames ? '' : 'containerEventResult', protoName: 'containerEventResult', subBuilder: ContainerEventResultProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadEventResultProto clone() => PayloadEventResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadEventResultProto copyWith(void Function(PayloadEventResultProto) updates) => super.copyWith((message) => updates(message as PayloadEventResultProto)) as PayloadEventResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PayloadEventResultProto create() => PayloadEventResultProto._();
  PayloadEventResultProto createEmptyInstance() => create();
  static $pb.PbList<PayloadEventResultProto> createRepeated() => $pb.PbList<PayloadEventResultProto>();
  @$core.pragma('dart2js:noInline')
  static PayloadEventResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayloadEventResultProto>(create);
  static PayloadEventResultProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get pass => $_getBF(1);
  @$pb.TagNumber(2)
  set pass($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPass() => $_has(1);
  @$pb.TagNumber(2)
  void clearPass() => clearField(2);

  @$pb.TagNumber(3)
  FeedbackEventResultProto get feedbackEventResult => $_getN(2);
  @$pb.TagNumber(3)
  set feedbackEventResult(FeedbackEventResultProto v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeedbackEventResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeedbackEventResult() => clearField(3);
  @$pb.TagNumber(3)
  FeedbackEventResultProto ensureFeedbackEventResult() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<PayloadEventResultProto> get payloadEventResults => $_getList(3);

  @$pb.TagNumber(5)
  ContainerEventResultProto get containerEventResult => $_getN(4);
  @$pb.TagNumber(5)
  set containerEventResult(ContainerEventResultProto v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasContainerEventResult() => $_has(4);
  @$pb.TagNumber(5)
  void clearContainerEventResult() => clearField(5);
  @$pb.TagNumber(5)
  ContainerEventResultProto ensureContainerEventResult() => $_ensure(4);
}

class ContainerEventResultProto extends $pb.GeneratedMessage {
  factory ContainerEventResultProto() => create();
  ContainerEventResultProto._() : super();
  factory ContainerEventResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerEventResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContainerEventResultProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'pass')
    ..pPS(3, _omitFieldNames ? '' : 'matches')
    ..pPS(4, _omitFieldNames ? '' : 'misMatches', protoName: 'misMatches')
    ..pc<ContainerEventResultProto>(5, _omitFieldNames ? '' : 'containerEventResults', $pb.PbFieldType.PM, protoName: 'containerEventResults', subBuilder: ContainerEventResultProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerEventResultProto clone() => ContainerEventResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerEventResultProto copyWith(void Function(ContainerEventResultProto) updates) => super.copyWith((message) => updates(message as ContainerEventResultProto)) as ContainerEventResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContainerEventResultProto create() => ContainerEventResultProto._();
  ContainerEventResultProto createEmptyInstance() => create();
  static $pb.PbList<ContainerEventResultProto> createRepeated() => $pb.PbList<ContainerEventResultProto>();
  @$core.pragma('dart2js:noInline')
  static ContainerEventResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerEventResultProto>(create);
  static ContainerEventResultProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get pass => $_getBF(1);
  @$pb.TagNumber(2)
  set pass($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPass() => $_has(1);
  @$pb.TagNumber(2)
  void clearPass() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get matches => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get misMatches => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<ContainerEventResultProto> get containerEventResults => $_getList(4);
}

class FeedbackEventResultProto extends $pb.GeneratedMessage {
  factory FeedbackEventResultProto() => create();
  FeedbackEventResultProto._() : super();
  factory FeedbackEventResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedbackEventResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeedbackEventResultProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'rewardType', $pb.PbFieldType.O3, protoName: 'rewardType')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'calculateType', $pb.PbFieldType.O3, protoName: 'calculateType')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'cost', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'getReturn', $pb.PbFieldType.OF, protoName: 'getReturn')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'getPercentage', $pb.PbFieldType.OF, protoName: 'getPercentage')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'feedbackEventResultStatus', $pb.PbFieldType.O3, protoName: 'feedbackEventResultStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedbackEventResultProto clone() => FeedbackEventResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedbackEventResultProto copyWith(void Function(FeedbackEventResultProto) updates) => super.copyWith((message) => updates(message as FeedbackEventResultProto)) as FeedbackEventResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedbackEventResultProto create() => FeedbackEventResultProto._();
  FeedbackEventResultProto createEmptyInstance() => create();
  static $pb.PbList<FeedbackEventResultProto> createRepeated() => $pb.PbList<FeedbackEventResultProto>();
  @$core.pragma('dart2js:noInline')
  static FeedbackEventResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedbackEventResultProto>(create);
  static FeedbackEventResultProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rewardType => $_getIZ(0);
  @$pb.TagNumber(1)
  set rewardType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRewardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRewardType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get calculateType => $_getIZ(1);
  @$pb.TagNumber(2)
  set calculateType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCalculateType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalculateType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get cost => $_getIZ(2);
  @$pb.TagNumber(3)
  set cost($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCost() => $_has(2);
  @$pb.TagNumber(3)
  void clearCost() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get getReturn => $_getN(3);
  @$pb.TagNumber(4)
  set getReturn($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetReturn() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetReturn() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get getPercentage => $_getN(4);
  @$pb.TagNumber(5)
  set getPercentage($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGetPercentage() => $_has(4);
  @$pb.TagNumber(5)
  void clearGetPercentage() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get feedbackEventResultStatus => $_getIZ(5);
  @$pb.TagNumber(6)
  set feedbackEventResultStatus($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFeedbackEventResultStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearFeedbackEventResultStatus() => clearField(6);
}

class EventProto extends $pb.GeneratedMessage {
  factory EventProto() => create();
  EventProto._() : super();
  factory EventProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'evaluationID', protoName: 'evaluationID')
    ..aOS(2, _omitFieldNames ? '' : 'ownerID', protoName: 'ownerID')
    ..pPS(3, _omitFieldNames ? '' : 'taskIDs', protoName: 'taskIDs')
    ..pPS(4, _omitFieldNames ? '' : 'payIDs', protoName: 'payIDs')
    ..pPS(5, _omitFieldNames ? '' : 'channelIDs', protoName: 'channelIDs')
    ..p<$core.int>(6, _omitFieldNames ? '' : 'labels', $pb.PbFieldType.K3)
    ..aInt64(7, _omitFieldNames ? '' : 'eventDate', protoName: 'eventDate')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'cost', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'rewardType', $pb.PbFieldType.O3, protoName: 'rewardType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventProto clone() => EventProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventProto copyWith(void Function(EventProto) updates) => super.copyWith((message) => updates(message as EventProto)) as EventProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventProto create() => EventProto._();
  EventProto createEmptyInstance() => create();
  static $pb.PbList<EventProto> createRepeated() => $pb.PbList<EventProto>();
  @$core.pragma('dart2js:noInline')
  static EventProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventProto>(create);
  static EventProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get evaluationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set evaluationID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvaluationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvaluationID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ownerID => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerID() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerID() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get taskIDs => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get payIDs => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get channelIDs => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get labels => $_getList(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get eventDate => $_getI64(6);
  @$pb.TagNumber(7)
  set eventDate($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEventDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearEventDate() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get cost => $_getIZ(7);
  @$pb.TagNumber(8)
  set cost($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCost() => $_has(7);
  @$pb.TagNumber(8)
  void clearCost() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get rewardType => $_getIZ(8);
  @$pb.TagNumber(9)
  set rewardType($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRewardType() => $_has(8);
  @$pb.TagNumber(9)
  void clearRewardType() => clearField(9);
}

class EvaluationsReply extends $pb.GeneratedMessage {
  factory EvaluationsReply() => create();
  EvaluationsReply._() : super();
  factory EvaluationsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<EvaluationProto>(2, _omitFieldNames ? '' : 'evaluation', $pb.PbFieldType.PM, subBuilder: EvaluationProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationsReply clone() => EvaluationsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationsReply copyWith(void Function(EvaluationsReply) updates) => super.copyWith((message) => updates(message as EvaluationsReply)) as EvaluationsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationsReply create() => EvaluationsReply._();
  EvaluationsReply createEmptyInstance() => create();
  static $pb.PbList<EvaluationsReply> createRepeated() => $pb.PbList<EvaluationsReply>();
  @$core.pragma('dart2js:noInline')
  static EvaluationsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationsReply>(create);
  static EvaluationsReply? _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<EvaluationProto> get evaluation => $_getList(1);
}

class EvaluationReply extends $pb.GeneratedMessage {
  factory EvaluationReply() => create();
  EvaluationReply._() : super();
  factory EvaluationReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..aOM<EvaluationProto>(2, _omitFieldNames ? '' : 'evaluation', subBuilder: EvaluationProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationReply clone() => EvaluationReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationReply copyWith(void Function(EvaluationReply) updates) => super.copyWith((message) => updates(message as EvaluationReply)) as EvaluationReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationReply create() => EvaluationReply._();
  EvaluationReply createEmptyInstance() => create();
  static $pb.PbList<EvaluationReply> createRepeated() => $pb.PbList<EvaluationReply>();
  @$core.pragma('dart2js:noInline')
  static EvaluationReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationReply>(create);
  static EvaluationReply? _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  EvaluationProto get evaluation => $_getN(1);
  @$pb.TagNumber(2)
  set evaluation(EvaluationProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvaluation() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvaluation() => clearField(2);
  @$pb.TagNumber(2)
  EvaluationProto ensureEvaluation() => $_ensure(1);
}

class EvaluationProto extends $pb.GeneratedMessage {
  factory EvaluationProto() => create();
  EvaluationProto._() : super();
  factory EvaluationProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(3, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..aInt64(4, _omitFieldNames ? '' : 'startDate', protoName: 'startDate')
    ..aInt64(5, _omitFieldNames ? '' : 'endDate', protoName: 'endDate')
    ..aOM<RewardProto>(6, _omitFieldNames ? '' : 'reward', subBuilder: RewardProto.create)
    ..aOS(7, _omitFieldNames ? '' : 'ownerID', protoName: 'ownerID')
    ..aOM<PayloadProto>(8, _omitFieldNames ? '' : 'payload', subBuilder: PayloadProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationProto clone() => EvaluationProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationProto copyWith(void Function(EvaluationProto) updates) => super.copyWith((message) => updates(message as EvaluationProto)) as EvaluationProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationProto create() => EvaluationProto._();
  EvaluationProto createEmptyInstance() => create();
  static $pb.PbList<EvaluationProto> createRepeated() => $pb.PbList<EvaluationProto>();
  @$core.pragma('dart2js:noInline')
  static EvaluationProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationProto>(create);
  static EvaluationProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createDate => $_getI64(1);
  @$pb.TagNumber(2)
  set createDate($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateDate() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get updateDate => $_getI64(2);
  @$pb.TagNumber(3)
  set updateDate($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdateDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateDate() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get startDate => $_getI64(3);
  @$pb.TagNumber(4)
  set startDate($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartDate() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get endDate => $_getI64(4);
  @$pb.TagNumber(5)
  set endDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndDate() => clearField(5);

  @$pb.TagNumber(6)
  RewardProto get reward => $_getN(5);
  @$pb.TagNumber(6)
  set reward(RewardProto v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasReward() => $_has(5);
  @$pb.TagNumber(6)
  void clearReward() => clearField(6);
  @$pb.TagNumber(6)
  RewardProto ensureReward() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get ownerID => $_getSZ(6);
  @$pb.TagNumber(7)
  set ownerID($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOwnerID() => $_has(6);
  @$pb.TagNumber(7)
  void clearOwnerID() => clearField(7);

  @$pb.TagNumber(8)
  PayloadProto get payload => $_getN(7);
  @$pb.TagNumber(8)
  set payload(PayloadProto v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPayload() => $_has(7);
  @$pb.TagNumber(8)
  void clearPayload() => clearField(8);
  @$pb.TagNumber(8)
  PayloadProto ensurePayload() => $_ensure(7);
}

class RewardProto extends $pb.GeneratedMessage {
  factory RewardProto() => create();
  RewardProto._() : super();
  factory RewardProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RewardProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RewardProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'rewardType', $pb.PbFieldType.O3, protoName: 'rewardType')
    ..aInt64(4, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(5, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RewardProto clone() => RewardProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RewardProto copyWith(void Function(RewardProto) updates) => super.copyWith((message) => updates(message as RewardProto)) as RewardProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RewardProto create() => RewardProto._();
  RewardProto createEmptyInstance() => create();
  static $pb.PbList<RewardProto> createRepeated() => $pb.PbList<RewardProto>();
  @$core.pragma('dart2js:noInline')
  static RewardProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RewardProto>(create);
  static RewardProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get rewardType => $_getIZ(2);
  @$pb.TagNumber(3)
  set rewardType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRewardType() => $_has(2);
  @$pb.TagNumber(3)
  void clearRewardType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get createDate => $_getI64(3);
  @$pb.TagNumber(4)
  set createDate($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreateDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreateDate() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get updateDate => $_getI64(4);
  @$pb.TagNumber(5)
  set updateDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdateDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdateDate() => clearField(5);
}

class PayloadProto extends $pb.GeneratedMessage {
  factory PayloadProto() => create();
  PayloadProto._() : super();
  factory PayloadProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayloadProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'payloadOperator', $pb.PbFieldType.O3, protoName: 'payloadOperator')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'payloadType', $pb.PbFieldType.O3, protoName: 'payloadType')
    ..aOM<FeedbackProto>(4, _omitFieldNames ? '' : 'feedback', subBuilder: FeedbackProto.create)
    ..pc<PayloadProto>(5, _omitFieldNames ? '' : 'payloads', $pb.PbFieldType.PM, subBuilder: PayloadProto.create)
    ..aOM<ContainerProto>(6, _omitFieldNames ? '' : 'container', subBuilder: ContainerProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadProto clone() => PayloadProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadProto copyWith(void Function(PayloadProto) updates) => super.copyWith((message) => updates(message as PayloadProto)) as PayloadProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PayloadProto create() => PayloadProto._();
  PayloadProto createEmptyInstance() => create();
  static $pb.PbList<PayloadProto> createRepeated() => $pb.PbList<PayloadProto>();
  @$core.pragma('dart2js:noInline')
  static PayloadProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayloadProto>(create);
  static PayloadProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get payloadOperator => $_getIZ(1);
  @$pb.TagNumber(2)
  set payloadOperator($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPayloadOperator() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayloadOperator() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get payloadType => $_getIZ(2);
  @$pb.TagNumber(3)
  set payloadType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayloadType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayloadType() => clearField(3);

  @$pb.TagNumber(4)
  FeedbackProto get feedback => $_getN(3);
  @$pb.TagNumber(4)
  set feedback(FeedbackProto v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFeedback() => $_has(3);
  @$pb.TagNumber(4)
  void clearFeedback() => clearField(4);
  @$pb.TagNumber(4)
  FeedbackProto ensureFeedback() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<PayloadProto> get payloads => $_getList(4);

  @$pb.TagNumber(6)
  ContainerProto get container => $_getN(5);
  @$pb.TagNumber(6)
  set container(ContainerProto v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasContainer() => $_has(5);
  @$pb.TagNumber(6)
  void clearContainer() => clearField(6);
  @$pb.TagNumber(6)
  ContainerProto ensureContainer() => $_ensure(5);
}

class FeedbackProto extends $pb.GeneratedMessage {
  factory FeedbackProto() => create();
  FeedbackProto._() : super();
  factory FeedbackProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedbackProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeedbackProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'rewardType', $pb.PbFieldType.O3, protoName: 'rewardType')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'calculateType', $pb.PbFieldType.O3, protoName: 'calculateType')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'minCost', $pb.PbFieldType.O3, protoName: 'minCost')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'fixed', $pb.PbFieldType.O3)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'percentage', $pb.PbFieldType.OF)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'returnMax', $pb.PbFieldType.OF, protoName: 'returnMax')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedbackProto clone() => FeedbackProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedbackProto copyWith(void Function(FeedbackProto) updates) => super.copyWith((message) => updates(message as FeedbackProto)) as FeedbackProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedbackProto create() => FeedbackProto._();
  FeedbackProto createEmptyInstance() => create();
  static $pb.PbList<FeedbackProto> createRepeated() => $pb.PbList<FeedbackProto>();
  @$core.pragma('dart2js:noInline')
  static FeedbackProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedbackProto>(create);
  static FeedbackProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rewardType => $_getIZ(0);
  @$pb.TagNumber(1)
  set rewardType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRewardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRewardType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get calculateType => $_getIZ(1);
  @$pb.TagNumber(2)
  set calculateType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCalculateType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalculateType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get minCost => $_getIZ(2);
  @$pb.TagNumber(3)
  set minCost($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinCost() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinCost() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get fixed => $_getIZ(3);
  @$pb.TagNumber(4)
  set fixed($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFixed() => $_has(3);
  @$pb.TagNumber(4)
  void clearFixed() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get percentage => $_getN(4);
  @$pb.TagNumber(5)
  set percentage($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPercentage() => $_has(4);
  @$pb.TagNumber(5)
  void clearPercentage() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get returnMax => $_getN(5);
  @$pb.TagNumber(6)
  set returnMax($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReturnMax() => $_has(5);
  @$pb.TagNumber(6)
  void clearReturnMax() => clearField(6);
}

class ContainerProto extends $pb.GeneratedMessage {
  factory ContainerProto() => create();
  ContainerProto._() : super();
  factory ContainerProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContainerProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'containerOperator', $pb.PbFieldType.O3, protoName: 'containerOperator')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'containerType', $pb.PbFieldType.O3, protoName: 'containerType')
    ..pc<ConstraintProto>(4, _omitFieldNames ? '' : 'constraints', $pb.PbFieldType.PM, subBuilder: ConstraintProto.create)
    ..pc<ContainerProto>(5, _omitFieldNames ? '' : 'containers', $pb.PbFieldType.PM, subBuilder: ContainerProto.create)
    ..pPS(6, _omitFieldNames ? '' : 'taskIDs', protoName: 'taskIDs')
    ..pPS(7, _omitFieldNames ? '' : 'channelIDs', protoName: 'channelIDs')
    ..pPS(8, _omitFieldNames ? '' : 'payIDs', protoName: 'payIDs')
    ..p<$core.int>(9, _omitFieldNames ? '' : 'labels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerProto clone() => ContainerProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerProto copyWith(void Function(ContainerProto) updates) => super.copyWith((message) => updates(message as ContainerProto)) as ContainerProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContainerProto create() => ContainerProto._();
  ContainerProto createEmptyInstance() => create();
  static $pb.PbList<ContainerProto> createRepeated() => $pb.PbList<ContainerProto>();
  @$core.pragma('dart2js:noInline')
  static ContainerProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerProto>(create);
  static ContainerProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get containerOperator => $_getIZ(1);
  @$pb.TagNumber(2)
  set containerOperator($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContainerOperator() => $_has(1);
  @$pb.TagNumber(2)
  void clearContainerOperator() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get containerType => $_getIZ(2);
  @$pb.TagNumber(3)
  set containerType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContainerType() => $_has(2);
  @$pb.TagNumber(3)
  void clearContainerType() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<ConstraintProto> get constraints => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<ContainerProto> get containers => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get taskIDs => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.String> get channelIDs => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get payIDs => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$core.int> get labels => $_getList(8);
}

class ConstraintProto extends $pb.GeneratedMessage {
  factory ConstraintProto() => create();
  ConstraintProto._() : super();
  factory ConstraintProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConstraintProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConstraintProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'constraintType', $pb.PbFieldType.O3, protoName: 'constraintType')
    ..aOS(2, _omitFieldNames ? '' : 'constraintName', protoName: 'constraintName')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'weekDays', $pb.PbFieldType.K3, protoName: 'weekDays')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConstraintProto clone() => ConstraintProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConstraintProto copyWith(void Function(ConstraintProto) updates) => super.copyWith((message) => updates(message as ConstraintProto)) as ConstraintProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstraintProto create() => ConstraintProto._();
  ConstraintProto createEmptyInstance() => create();
  static $pb.PbList<ConstraintProto> createRepeated() => $pb.PbList<ConstraintProto>();
  @$core.pragma('dart2js:noInline')
  static ConstraintProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConstraintProto>(create);
  static ConstraintProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get constraintType => $_getIZ(0);
  @$pb.TagNumber(1)
  set constraintType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConstraintType() => $_has(0);
  @$pb.TagNumber(1)
  void clearConstraintType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get constraintName => $_getSZ(1);
  @$pb.TagNumber(2)
  set constraintName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConstraintName() => $_has(1);
  @$pb.TagNumber(2)
  void clearConstraintName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get weekDays => $_getList(2);
}

class EvaluationIDProto extends $pb.GeneratedMessage {
  factory EvaluationIDProto() => create();
  EvaluationIDProto._() : super();
  factory EvaluationIDProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationIDProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationIDProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationIDProto clone() => EvaluationIDProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationIDProto copyWith(void Function(EvaluationIDProto) updates) => super.copyWith((message) => updates(message as EvaluationIDProto)) as EvaluationIDProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationIDProto create() => EvaluationIDProto._();
  EvaluationIDProto createEmptyInstance() => create();
  static $pb.PbList<EvaluationIDProto> createRepeated() => $pb.PbList<EvaluationIDProto>();
  @$core.pragma('dart2js:noInline')
  static EvaluationIDProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationIDProto>(create);
  static EvaluationIDProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class EmptyRequest extends $pb.GeneratedMessage {
  factory EmptyRequest() => create();
  EmptyRequest._() : super();
  factory EmptyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyRequest clone() => EmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyRequest copyWith(void Function(EmptyRequest) updates) => super.copyWith((message) => updates(message as EmptyRequest)) as EmptyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyRequest create() => EmptyRequest._();
  EmptyRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyRequest> createRepeated() => $pb.PbList<EmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyRequest>(create);
  static EmptyRequest? _defaultInstance;
}

class EvaluationRespReply extends $pb.GeneratedMessage {
  factory EvaluationRespReply() => create();
  EvaluationRespReply._() : super();
  factory EvaluationRespReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationRespReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationRespReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..aOM<EvaluationRespProto>(2, _omitFieldNames ? '' : 'evaluationResp', protoName: 'evaluationResp', subBuilder: EvaluationRespProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationRespReply clone() => EvaluationRespReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationRespReply copyWith(void Function(EvaluationRespReply) updates) => super.copyWith((message) => updates(message as EvaluationRespReply)) as EvaluationRespReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationRespReply create() => EvaluationRespReply._();
  EvaluationRespReply createEmptyInstance() => create();
  static $pb.PbList<EvaluationRespReply> createRepeated() => $pb.PbList<EvaluationRespReply>();
  @$core.pragma('dart2js:noInline')
  static EvaluationRespReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationRespReply>(create);
  static EvaluationRespReply? _defaultInstance;

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  EvaluationRespProto get evaluationResp => $_getN(1);
  @$pb.TagNumber(2)
  set evaluationResp(EvaluationRespProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvaluationResp() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvaluationResp() => clearField(2);
  @$pb.TagNumber(2)
  EvaluationRespProto ensureEvaluationResp() => $_ensure(1);
}

class EvaluationRespProto extends $pb.GeneratedMessage {
  factory EvaluationRespProto() => create();
  EvaluationRespProto._() : super();
  factory EvaluationRespProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationRespProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationRespProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..pc<ChannelCategoryTypeProto>(2, _omitFieldNames ? '' : 'channelCategoryTypes', $pb.PbFieldType.PM, protoName: 'channelCategoryTypes', subBuilder: ChannelCategoryTypeProto.create)
    ..pc<ChannelEvaluationRespProto>(3, _omitFieldNames ? '' : 'channelEvaluationResps', $pb.PbFieldType.PM, protoName: 'channelEvaluationResps', subBuilder: ChannelEvaluationRespProto.create)
    ..aOM<PayEvaluationRespProto>(4, _omitFieldNames ? '' : 'payEvaluationResp', protoName: 'payEvaluationResp', subBuilder: PayEvaluationRespProto.create)
    ..aOM<TaskEvaluationRespProto>(5, _omitFieldNames ? '' : 'taskEvaluationResp', protoName: 'taskEvaluationResp', subBuilder: TaskEvaluationRespProto.create)
    ..aOM<ConstraintsEvaluationRespProto>(6, _omitFieldNames ? '' : 'constraintsEvaluationResp', protoName: 'constraintsEvaluationResp', subBuilder: ConstraintsEvaluationRespProto.create)
    ..aOM<LabelEvaluationRespProto>(7, _omitFieldNames ? '' : 'labelEvaluationResp', protoName: 'labelEvaluationResp', subBuilder: LabelEvaluationRespProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationRespProto clone() => EvaluationRespProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationRespProto copyWith(void Function(EvaluationRespProto) updates) => super.copyWith((message) => updates(message as EvaluationRespProto)) as EvaluationRespProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationRespProto create() => EvaluationRespProto._();
  EvaluationRespProto createEmptyInstance() => create();
  static $pb.PbList<EvaluationRespProto> createRepeated() => $pb.PbList<EvaluationRespProto>();
  @$core.pragma('dart2js:noInline')
  static EvaluationRespProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationRespProto>(create);
  static EvaluationRespProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ChannelCategoryTypeProto> get channelCategoryTypes => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<ChannelEvaluationRespProto> get channelEvaluationResps => $_getList(2);

  @$pb.TagNumber(4)
  PayEvaluationRespProto get payEvaluationResp => $_getN(3);
  @$pb.TagNumber(4)
  set payEvaluationResp(PayEvaluationRespProto v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayEvaluationResp() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayEvaluationResp() => clearField(4);
  @$pb.TagNumber(4)
  PayEvaluationRespProto ensurePayEvaluationResp() => $_ensure(3);

  @$pb.TagNumber(5)
  TaskEvaluationRespProto get taskEvaluationResp => $_getN(4);
  @$pb.TagNumber(5)
  set taskEvaluationResp(TaskEvaluationRespProto v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTaskEvaluationResp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskEvaluationResp() => clearField(5);
  @$pb.TagNumber(5)
  TaskEvaluationRespProto ensureTaskEvaluationResp() => $_ensure(4);

  @$pb.TagNumber(6)
  ConstraintsEvaluationRespProto get constraintsEvaluationResp => $_getN(5);
  @$pb.TagNumber(6)
  set constraintsEvaluationResp(ConstraintsEvaluationRespProto v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasConstraintsEvaluationResp() => $_has(5);
  @$pb.TagNumber(6)
  void clearConstraintsEvaluationResp() => clearField(6);
  @$pb.TagNumber(6)
  ConstraintsEvaluationRespProto ensureConstraintsEvaluationResp() => $_ensure(5);

  @$pb.TagNumber(7)
  LabelEvaluationRespProto get labelEvaluationResp => $_getN(6);
  @$pb.TagNumber(7)
  set labelEvaluationResp(LabelEvaluationRespProto v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasLabelEvaluationResp() => $_has(6);
  @$pb.TagNumber(7)
  void clearLabelEvaluationResp() => clearField(7);
  @$pb.TagNumber(7)
  LabelEvaluationRespProto ensureLabelEvaluationResp() => $_ensure(6);
}

class ChannelCategoryTypeProto extends $pb.GeneratedMessage {
  factory ChannelCategoryTypeProto() => create();
  ChannelCategoryTypeProto._() : super();
  factory ChannelCategoryTypeProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelCategoryTypeProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelCategoryTypeProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelCategoryTypeProto clone() => ChannelCategoryTypeProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelCategoryTypeProto copyWith(void Function(ChannelCategoryTypeProto) updates) => super.copyWith((message) => updates(message as ChannelCategoryTypeProto)) as ChannelCategoryTypeProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelCategoryTypeProto create() => ChannelCategoryTypeProto._();
  ChannelCategoryTypeProto createEmptyInstance() => create();
  static $pb.PbList<ChannelCategoryTypeProto> createRepeated() => $pb.PbList<ChannelCategoryTypeProto>();
  @$core.pragma('dart2js:noInline')
  static ChannelCategoryTypeProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelCategoryTypeProto>(create);
  static ChannelCategoryTypeProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);
}

class ChannelEvaluationRespProto extends $pb.GeneratedMessage {
  factory ChannelEvaluationRespProto() => create();
  ChannelEvaluationRespProto._() : super();
  factory ChannelEvaluationRespProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelEvaluationRespProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelEvaluationRespProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'channelCategoryType', $pb.PbFieldType.O3, protoName: 'channelCategoryType')
    ..pc<ChannelProto>(2, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: ChannelProto.create)
    ..pc<ChannelProto>(3, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: ChannelProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelEvaluationRespProto clone() => ChannelEvaluationRespProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelEvaluationRespProto copyWith(void Function(ChannelEvaluationRespProto) updates) => super.copyWith((message) => updates(message as ChannelEvaluationRespProto)) as ChannelEvaluationRespProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelEvaluationRespProto create() => ChannelEvaluationRespProto._();
  ChannelEvaluationRespProto createEmptyInstance() => create();
  static $pb.PbList<ChannelEvaluationRespProto> createRepeated() => $pb.PbList<ChannelEvaluationRespProto>();
  @$core.pragma('dart2js:noInline')
  static ChannelEvaluationRespProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelEvaluationRespProto>(create);
  static ChannelEvaluationRespProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get channelCategoryType => $_getIZ(0);
  @$pb.TagNumber(1)
  set channelCategoryType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelCategoryType() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelCategoryType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ChannelProto> get matches => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<ChannelProto> get misMatches => $_getList(2);
}

class ChannelProto extends $pb.GeneratedMessage {
  factory ChannelProto() => create();
  ChannelProto._() : super();
  factory ChannelProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'linkURL', protoName: 'linkURL')
    ..pPS(5, _omitFieldNames ? '' : 'descriptions')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'channelCategoryType', $pb.PbFieldType.O3, protoName: 'channelCategoryType')
    ..aInt64(7, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(8, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..pc<ChannelLabelProto>(9, _omitFieldNames ? '' : 'channelLabels', $pb.PbFieldType.PM, protoName: 'channelLabels', subBuilder: ChannelLabelProto.create)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'channelStatus', $pb.PbFieldType.O3, protoName: 'channelStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelProto clone() => ChannelProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelProto copyWith(void Function(ChannelProto) updates) => super.copyWith((message) => updates(message as ChannelProto)) as ChannelProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelProto create() => ChannelProto._();
  ChannelProto createEmptyInstance() => create();
  static $pb.PbList<ChannelProto> createRepeated() => $pb.PbList<ChannelProto>();
  @$core.pragma('dart2js:noInline')
  static ChannelProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelProto>(create);
  static ChannelProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get linkURL => $_getSZ(3);
  @$pb.TagNumber(4)
  set linkURL($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLinkURL() => $_has(3);
  @$pb.TagNumber(4)
  void clearLinkURL() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get descriptions => $_getList(4);

  @$pb.TagNumber(6)
  $core.int get channelCategoryType => $_getIZ(5);
  @$pb.TagNumber(6)
  set channelCategoryType($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasChannelCategoryType() => $_has(5);
  @$pb.TagNumber(6)
  void clearChannelCategoryType() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get createDate => $_getI64(6);
  @$pb.TagNumber(7)
  set createDate($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreateDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreateDate() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get updateDate => $_getI64(7);
  @$pb.TagNumber(8)
  set updateDate($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdateDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdateDate() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<ChannelLabelProto> get channelLabels => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get order => $_getIZ(9);
  @$pb.TagNumber(10)
  set order($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasOrder() => $_has(9);
  @$pb.TagNumber(10)
  void clearOrder() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get channelStatus => $_getIZ(10);
  @$pb.TagNumber(11)
  set channelStatus($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasChannelStatus() => $_has(10);
  @$pb.TagNumber(11)
  void clearChannelStatus() => clearField(11);
}

class ChannelLabelProto extends $pb.GeneratedMessage {
  factory ChannelLabelProto() => create();
  ChannelLabelProto._() : super();
  factory ChannelLabelProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelLabelProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelLabelProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'labelType', $pb.PbFieldType.O3, protoName: 'labelType')
    ..aOS(2, _omitFieldNames ? '' : 'labelName', protoName: 'labelName')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelLabelProto clone() => ChannelLabelProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelLabelProto copyWith(void Function(ChannelLabelProto) updates) => super.copyWith((message) => updates(message as ChannelLabelProto)) as ChannelLabelProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelLabelProto create() => ChannelLabelProto._();
  ChannelLabelProto createEmptyInstance() => create();
  static $pb.PbList<ChannelLabelProto> createRepeated() => $pb.PbList<ChannelLabelProto>();
  @$core.pragma('dart2js:noInline')
  static ChannelLabelProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelLabelProto>(create);
  static ChannelLabelProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get labelType => $_getIZ(0);
  @$pb.TagNumber(1)
  set labelType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabelType() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabelType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get labelName => $_getSZ(1);
  @$pb.TagNumber(2)
  set labelName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabelName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabelName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);
}

class PayEvaluationRespProto extends $pb.GeneratedMessage {
  factory PayEvaluationRespProto() => create();
  PayEvaluationRespProto._() : super();
  factory PayEvaluationRespProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayEvaluationRespProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayEvaluationRespProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..pc<PayProto>(1, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: PayProto.create)
    ..pc<PayProto>(2, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: PayProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayEvaluationRespProto clone() => PayEvaluationRespProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayEvaluationRespProto copyWith(void Function(PayEvaluationRespProto) updates) => super.copyWith((message) => updates(message as PayEvaluationRespProto)) as PayEvaluationRespProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PayEvaluationRespProto create() => PayEvaluationRespProto._();
  PayEvaluationRespProto createEmptyInstance() => create();
  static $pb.PbList<PayEvaluationRespProto> createRepeated() => $pb.PbList<PayEvaluationRespProto>();
  @$core.pragma('dart2js:noInline')
  static PayEvaluationRespProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayEvaluationRespProto>(create);
  static PayEvaluationRespProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PayProto> get matches => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<PayProto> get misMatches => $_getList(1);
}

class PayProto extends $pb.GeneratedMessage {
  factory PayProto() => create();
  PayProto._() : super();
  factory PayProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..pPS(4, _omitFieldNames ? '' : 'descriptions')
    ..aOS(5, _omitFieldNames ? '' : 'linkURL', protoName: 'linkURL')
    ..aInt64(6, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(7, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'payStatus', $pb.PbFieldType.O3, protoName: 'payStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayProto clone() => PayProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayProto copyWith(void Function(PayProto) updates) => super.copyWith((message) => updates(message as PayProto)) as PayProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PayProto create() => PayProto._();
  PayProto createEmptyInstance() => create();
  static $pb.PbList<PayProto> createRepeated() => $pb.PbList<PayProto>();
  @$core.pragma('dart2js:noInline')
  static PayProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayProto>(create);
  static PayProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get descriptions => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get linkURL => $_getSZ(4);
  @$pb.TagNumber(5)
  set linkURL($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLinkURL() => $_has(4);
  @$pb.TagNumber(5)
  void clearLinkURL() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createDate => $_getI64(5);
  @$pb.TagNumber(6)
  set createDate($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreateDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateDate() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updateDate => $_getI64(6);
  @$pb.TagNumber(7)
  set updateDate($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdateDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateDate() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get order => $_getIZ(7);
  @$pb.TagNumber(8)
  set order($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOrder() => $_has(7);
  @$pb.TagNumber(8)
  void clearOrder() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get payStatus => $_getIZ(8);
  @$pb.TagNumber(9)
  set payStatus($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPayStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearPayStatus() => clearField(9);
}

class TaskEvaluationRespProto extends $pb.GeneratedMessage {
  factory TaskEvaluationRespProto() => create();
  TaskEvaluationRespProto._() : super();
  factory TaskEvaluationRespProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskEvaluationRespProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskEvaluationRespProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..pc<TaskProto>(1, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: TaskProto.create)
    ..pc<TaskProto>(2, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: TaskProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskEvaluationRespProto clone() => TaskEvaluationRespProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskEvaluationRespProto copyWith(void Function(TaskEvaluationRespProto) updates) => super.copyWith((message) => updates(message as TaskEvaluationRespProto)) as TaskEvaluationRespProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskEvaluationRespProto create() => TaskEvaluationRespProto._();
  TaskEvaluationRespProto createEmptyInstance() => create();
  static $pb.PbList<TaskEvaluationRespProto> createRepeated() => $pb.PbList<TaskEvaluationRespProto>();
  @$core.pragma('dart2js:noInline')
  static TaskEvaluationRespProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskEvaluationRespProto>(create);
  static TaskEvaluationRespProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TaskProto> get matches => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<TaskProto> get misMatches => $_getList(1);
}

class TaskProto extends $pb.GeneratedMessage {
  factory TaskProto() => create();
  TaskProto._() : super();
  factory TaskProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<TaskDescriptionProto>(3, _omitFieldNames ? '' : 'descriptions', $pb.PbFieldType.PM, subBuilder: TaskDescriptionProto.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'taskOwner', $pb.PbFieldType.O3, protoName: 'taskOwner')
    ..aOS(5, _omitFieldNames ? '' : 'taskOwnerID', protoName: 'taskOwnerID')
    ..aInt64(6, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(7, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskProto clone() => TaskProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskProto copyWith(void Function(TaskProto) updates) => super.copyWith((message) => updates(message as TaskProto)) as TaskProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskProto create() => TaskProto._();
  TaskProto createEmptyInstance() => create();
  static $pb.PbList<TaskProto> createRepeated() => $pb.PbList<TaskProto>();
  @$core.pragma('dart2js:noInline')
  static TaskProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskProto>(create);
  static TaskProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<TaskDescriptionProto> get descriptions => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get taskOwner => $_getIZ(3);
  @$pb.TagNumber(4)
  set taskOwner($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTaskOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskOwner() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get taskOwnerID => $_getSZ(4);
  @$pb.TagNumber(5)
  set taskOwnerID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTaskOwnerID() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskOwnerID() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createDate => $_getI64(5);
  @$pb.TagNumber(6)
  set createDate($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreateDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateDate() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updateDate => $_getI64(6);
  @$pb.TagNumber(7)
  set updateDate($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdateDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateDate() => clearField(7);
}

class TaskDescriptionProto extends $pb.GeneratedMessage {
  factory TaskDescriptionProto() => create();
  TaskDescriptionProto._() : super();
  factory TaskDescriptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskDescriptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskDescriptionProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(2, _omitFieldNames ? '' : 'desc')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskDescriptionProto clone() => TaskDescriptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskDescriptionProto copyWith(void Function(TaskDescriptionProto) updates) => super.copyWith((message) => updates(message as TaskDescriptionProto)) as TaskDescriptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskDescriptionProto create() => TaskDescriptionProto._();
  TaskDescriptionProto createEmptyInstance() => create();
  static $pb.PbList<TaskDescriptionProto> createRepeated() => $pb.PbList<TaskDescriptionProto>();
  @$core.pragma('dart2js:noInline')
  static TaskDescriptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskDescriptionProto>(create);
  static TaskDescriptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get desc => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);
}

class ConstraintsEvaluationRespProto extends $pb.GeneratedMessage {
  factory ConstraintsEvaluationRespProto() => create();
  ConstraintsEvaluationRespProto._() : super();
  factory ConstraintsEvaluationRespProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConstraintsEvaluationRespProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConstraintsEvaluationRespProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..pc<ConstraintProto>(1, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: ConstraintProto.create)
    ..pc<ConstraintProto>(2, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: ConstraintProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConstraintsEvaluationRespProto clone() => ConstraintsEvaluationRespProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConstraintsEvaluationRespProto copyWith(void Function(ConstraintsEvaluationRespProto) updates) => super.copyWith((message) => updates(message as ConstraintsEvaluationRespProto)) as ConstraintsEvaluationRespProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstraintsEvaluationRespProto create() => ConstraintsEvaluationRespProto._();
  ConstraintsEvaluationRespProto createEmptyInstance() => create();
  static $pb.PbList<ConstraintsEvaluationRespProto> createRepeated() => $pb.PbList<ConstraintsEvaluationRespProto>();
  @$core.pragma('dart2js:noInline')
  static ConstraintsEvaluationRespProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConstraintsEvaluationRespProto>(create);
  static ConstraintsEvaluationRespProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ConstraintProto> get matches => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<ConstraintProto> get misMatches => $_getList(1);
}

class LabelEvaluationRespProto extends $pb.GeneratedMessage {
  factory LabelEvaluationRespProto() => create();
  LabelEvaluationRespProto._() : super();
  factory LabelEvaluationRespProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabelEvaluationRespProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabelEvaluationRespProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..pc<LabelProto>(1, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: LabelProto.create)
    ..pc<LabelProto>(2, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: LabelProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabelEvaluationRespProto clone() => LabelEvaluationRespProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabelEvaluationRespProto copyWith(void Function(LabelEvaluationRespProto) updates) => super.copyWith((message) => updates(message as LabelEvaluationRespProto)) as LabelEvaluationRespProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabelEvaluationRespProto create() => LabelEvaluationRespProto._();
  LabelEvaluationRespProto createEmptyInstance() => create();
  static $pb.PbList<LabelEvaluationRespProto> createRepeated() => $pb.PbList<LabelEvaluationRespProto>();
  @$core.pragma('dart2js:noInline')
  static LabelEvaluationRespProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelEvaluationRespProto>(create);
  static LabelEvaluationRespProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LabelProto> get matches => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<LabelProto> get misMatches => $_getList(1);
}

class LabelProto extends $pb.GeneratedMessage {
  factory LabelProto() => create();
  LabelProto._() : super();
  factory LabelProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabelProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabelProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'labelType', $pb.PbFieldType.O3, protoName: 'labelType')
    ..aOS(2, _omitFieldNames ? '' : 'labelName', protoName: 'labelName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabelProto clone() => LabelProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabelProto copyWith(void Function(LabelProto) updates) => super.copyWith((message) => updates(message as LabelProto)) as LabelProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabelProto create() => LabelProto._();
  LabelProto createEmptyInstance() => create();
  static $pb.PbList<LabelProto> createRepeated() => $pb.PbList<LabelProto>();
  @$core.pragma('dart2js:noInline')
  static LabelProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelProto>(create);
  static LabelProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get labelType => $_getIZ(0);
  @$pb.TagNumber(1)
  set labelType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabelType() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabelType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get labelName => $_getSZ(1);
  @$pb.TagNumber(2)
  set labelName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabelName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabelName() => clearField(2);
}

class Reply extends $pb.GeneratedMessage {
  factory Reply() => create();
  Reply._() : super();
  factory Reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reply', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..aOM<Error>(2, _omitFieldNames ? '' : 'error', subBuilder: Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Reply clone() => Reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Reply copyWith(void Function(Reply) updates) => super.copyWith((message) => updates(message as Reply)) as Reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Reply create() => Reply._();
  Reply createEmptyInstance() => create();
  static $pb.PbList<Reply> createRepeated() => $pb.PbList<Reply>();
  @$core.pragma('dart2js:noInline')
  static Reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reply>(create);
  static Reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(Error v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  Error ensureError() => $_ensure(1);
}

class Error extends $pb.GeneratedMessage {
  factory Error() => create();
  Error._() : super();
  factory Error.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Error.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errorCode', $pb.PbFieldType.O3, protoName: 'errorCode')
    ..aOS(2, _omitFieldNames ? '' : 'errorMessage', protoName: 'errorMessage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Error clone() => Error()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Error copyWith(void Function(Error) updates) => super.copyWith((message) => updates(message as Error)) as Error;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errorCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errorCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrorCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrorCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorMessage() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
