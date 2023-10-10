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

class EventReq extends $pb.GeneratedMessage {
  factory EventReq() => create();
  EventReq._() : super();
  factory EventReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ownerID', protoName: 'ownerID')
    ..pPS(2, _omitFieldNames ? '' : 'channelIDs', protoName: 'channelIDs')
    ..pPS(3, _omitFieldNames ? '' : 'taskIDs', protoName: 'taskIDs')
    ..pPS(4, _omitFieldNames ? '' : 'payIDs', protoName: 'payIDs')
    ..p<$core.int>(5, _omitFieldNames ? '' : 'labels', $pb.PbFieldType.K3)
    ..aInt64(6, _omitFieldNames ? '' : 'eventDate', protoName: 'eventDate')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'cost', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'rewardType', $pb.PbFieldType.O3, protoName: 'rewardType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventReq clone() => EventReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventReq copyWith(void Function(EventReq) updates) => super.copyWith((message) => updates(message as EventReq)) as EventReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventReq create() => EventReq._();
  EventReq createEmptyInstance() => create();
  static $pb.PbList<EventReq> createRepeated() => $pb.PbList<EventReq>();
  @$core.pragma('dart2js:noInline')
  static EventReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventReq>(create);
  static EventReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ownerID => $_getSZ(0);
  @$pb.TagNumber(1)
  set ownerID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwnerID() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnerID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get channelIDs => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get taskIDs => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get payIDs => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get labels => $_getList(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get eventDate => $_getI64(5);
  @$pb.TagNumber(6)
  set eventDate($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEventDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearEventDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get cost => $_getIZ(6);
  @$pb.TagNumber(7)
  set cost($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCost() => $_has(6);
  @$pb.TagNumber(7)
  void clearCost() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get rewardType => $_getIZ(7);
  @$pb.TagNumber(8)
  set rewardType($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRewardType() => $_has(7);
  @$pb.TagNumber(8)
  void clearRewardType() => clearField(8);
}

class EvaluationEventResultRespReply_FeedbackEventResultResp extends $pb.GeneratedMessage {
  factory EvaluationEventResultRespReply_FeedbackEventResultResp() => create();
  EvaluationEventResultRespReply_FeedbackEventResultResp._() : super();
  factory EvaluationEventResultRespReply_FeedbackEventResultResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationEventResultRespReply_FeedbackEventResultResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultRespReply.FeedbackEventResultResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'rewardType', $pb.PbFieldType.O3, protoName: 'rewardType')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'calculateType', $pb.PbFieldType.O3, protoName: 'calculateType')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'cost', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'getReturn', $pb.PbFieldType.OD, protoName: 'getReturn')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'getPercentage', $pb.PbFieldType.OD, protoName: 'getPercentage')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'feedbackEventResultStatus', $pb.PbFieldType.O3, protoName: 'feedbackEventResultStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationEventResultRespReply_FeedbackEventResultResp clone() => EvaluationEventResultRespReply_FeedbackEventResultResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationEventResultRespReply_FeedbackEventResultResp copyWith(void Function(EvaluationEventResultRespReply_FeedbackEventResultResp) updates) => super.copyWith((message) => updates(message as EvaluationEventResultRespReply_FeedbackEventResultResp)) as EvaluationEventResultRespReply_FeedbackEventResultResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultRespReply_FeedbackEventResultResp create() => EvaluationEventResultRespReply_FeedbackEventResultResp._();
  EvaluationEventResultRespReply_FeedbackEventResultResp createEmptyInstance() => create();
  static $pb.PbList<EvaluationEventResultRespReply_FeedbackEventResultResp> createRepeated() => $pb.PbList<EvaluationEventResultRespReply_FeedbackEventResultResp>();
  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultRespReply_FeedbackEventResultResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationEventResultRespReply_FeedbackEventResultResp>(create);
  static EvaluationEventResultRespReply_FeedbackEventResultResp? _defaultInstance;

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
  set getReturn($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetReturn() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetReturn() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get getPercentage => $_getN(4);
  @$pb.TagNumber(5)
  set getPercentage($core.double v) { $_setDouble(4, v); }
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

class EvaluationEventResultRespReply_EvaluationEventResultResp extends $pb.GeneratedMessage {
  factory EvaluationEventResultRespReply_EvaluationEventResultResp() => create();
  EvaluationEventResultRespReply_EvaluationEventResultResp._() : super();
  factory EvaluationEventResultRespReply_EvaluationEventResultResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationEventResultRespReply_EvaluationEventResultResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultRespReply.EvaluationEventResultResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<EvaluationEventResultRespReply_FeedbackEventResultResp>(2, _omitFieldNames ? '' : 'feedbackEventResultResp', protoName: 'feedbackEventResultResp', subBuilder: EvaluationEventResultRespReply_FeedbackEventResultResp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationEventResultRespReply_EvaluationEventResultResp clone() => EvaluationEventResultRespReply_EvaluationEventResultResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationEventResultRespReply_EvaluationEventResultResp copyWith(void Function(EvaluationEventResultRespReply_EvaluationEventResultResp) updates) => super.copyWith((message) => updates(message as EvaluationEventResultRespReply_EvaluationEventResultResp)) as EvaluationEventResultRespReply_EvaluationEventResultResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultRespReply_EvaluationEventResultResp create() => EvaluationEventResultRespReply_EvaluationEventResultResp._();
  EvaluationEventResultRespReply_EvaluationEventResultResp createEmptyInstance() => create();
  static $pb.PbList<EvaluationEventResultRespReply_EvaluationEventResultResp> createRepeated() => $pb.PbList<EvaluationEventResultRespReply_EvaluationEventResultResp>();
  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultRespReply_EvaluationEventResultResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationEventResultRespReply_EvaluationEventResultResp>(create);
  static EvaluationEventResultRespReply_EvaluationEventResultResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  EvaluationEventResultRespReply_FeedbackEventResultResp get feedbackEventResultResp => $_getN(1);
  @$pb.TagNumber(2)
  set feedbackEventResultResp(EvaluationEventResultRespReply_FeedbackEventResultResp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFeedbackEventResultResp() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeedbackEventResultResp() => clearField(2);
  @$pb.TagNumber(2)
  EvaluationEventResultRespReply_FeedbackEventResultResp ensureFeedbackEventResultResp() => $_ensure(1);
}

class EvaluationEventResultRespReply extends $pb.GeneratedMessage {
  factory EvaluationEventResultRespReply() => create();
  EvaluationEventResultRespReply._() : super();
  factory EvaluationEventResultRespReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationEventResultRespReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultRespReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..aOM<EvaluationEventResultRespReply_EvaluationEventResultResp>(2, _omitFieldNames ? '' : 'evaluationEventResultResp', protoName: 'evaluationEventResultResp', subBuilder: EvaluationEventResultRespReply_EvaluationEventResultResp.create)
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
  EvaluationEventResultRespReply_EvaluationEventResultResp get evaluationEventResultResp => $_getN(1);
  @$pb.TagNumber(2)
  set evaluationEventResultResp(EvaluationEventResultRespReply_EvaluationEventResultResp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvaluationEventResultResp() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvaluationEventResultResp() => clearField(2);
  @$pb.TagNumber(2)
  EvaluationEventResultRespReply_EvaluationEventResultResp ensureEvaluationEventResultResp() => $_ensure(1);
}

class OwnerIDReq extends $pb.GeneratedMessage {
  factory OwnerIDReq() => create();
  OwnerIDReq._() : super();
  factory OwnerIDReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OwnerIDReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OwnerIDReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ownerID', protoName: 'ownerID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OwnerIDReq clone() => OwnerIDReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OwnerIDReq copyWith(void Function(OwnerIDReq) updates) => super.copyWith((message) => updates(message as OwnerIDReq)) as OwnerIDReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OwnerIDReq create() => OwnerIDReq._();
  OwnerIDReq createEmptyInstance() => create();
  static $pb.PbList<OwnerIDReq> createRepeated() => $pb.PbList<OwnerIDReq>();
  @$core.pragma('dart2js:noInline')
  static OwnerIDReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OwnerIDReq>(create);
  static OwnerIDReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ownerID => $_getSZ(0);
  @$pb.TagNumber(1)
  set ownerID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwnerID() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnerID() => clearField(1);
}

class EvaluationRespReply extends $pb.GeneratedMessage {
  factory EvaluationRespReply() => create();
  EvaluationRespReply._() : super();
  factory EvaluationRespReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationRespReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationRespReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..aOM<EvaluationResp>(2, _omitFieldNames ? '' : 'evaluationResp', protoName: 'evaluationResp', subBuilder: EvaluationResp.create)
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
  EvaluationResp get evaluationResp => $_getN(1);
  @$pb.TagNumber(2)
  set evaluationResp(EvaluationResp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvaluationResp() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvaluationResp() => clearField(2);
  @$pb.TagNumber(2)
  EvaluationResp ensureEvaluationResp() => $_ensure(1);
}

class EvaluationResp extends $pb.GeneratedMessage {
  factory EvaluationResp() => create();
  EvaluationResp._() : super();
  factory EvaluationResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..pc<ChannelCategoryType>(2, _omitFieldNames ? '' : 'channelCategoryTypes', $pb.PbFieldType.PM, protoName: 'channelCategoryTypes', subBuilder: ChannelCategoryType.create)
    ..pc<ChannelEvaluationResp>(3, _omitFieldNames ? '' : 'channelEvaluationResps', $pb.PbFieldType.PM, protoName: 'channelEvaluationResps', subBuilder: ChannelEvaluationResp.create)
    ..aOM<PayEvaluationResp>(4, _omitFieldNames ? '' : 'payEvaluationResp', protoName: 'payEvaluationResp', subBuilder: PayEvaluationResp.create)
    ..aOM<TaskEvaluationResp>(5, _omitFieldNames ? '' : 'taskEvaluationResp', protoName: 'taskEvaluationResp', subBuilder: TaskEvaluationResp.create)
    ..aOM<ConstraintsEvaluationResp>(6, _omitFieldNames ? '' : 'constraintsEvaluationResp', protoName: 'constraintsEvaluationResp', subBuilder: ConstraintsEvaluationResp.create)
    ..aOM<LabelEvaluationResp>(7, _omitFieldNames ? '' : 'labelEvaluationResp', protoName: 'labelEvaluationResp', subBuilder: LabelEvaluationResp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationResp clone() => EvaluationResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationResp copyWith(void Function(EvaluationResp) updates) => super.copyWith((message) => updates(message as EvaluationResp)) as EvaluationResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationResp create() => EvaluationResp._();
  EvaluationResp createEmptyInstance() => create();
  static $pb.PbList<EvaluationResp> createRepeated() => $pb.PbList<EvaluationResp>();
  @$core.pragma('dart2js:noInline')
  static EvaluationResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationResp>(create);
  static EvaluationResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ChannelCategoryType> get channelCategoryTypes => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<ChannelEvaluationResp> get channelEvaluationResps => $_getList(2);

  @$pb.TagNumber(4)
  PayEvaluationResp get payEvaluationResp => $_getN(3);
  @$pb.TagNumber(4)
  set payEvaluationResp(PayEvaluationResp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayEvaluationResp() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayEvaluationResp() => clearField(4);
  @$pb.TagNumber(4)
  PayEvaluationResp ensurePayEvaluationResp() => $_ensure(3);

  @$pb.TagNumber(5)
  TaskEvaluationResp get taskEvaluationResp => $_getN(4);
  @$pb.TagNumber(5)
  set taskEvaluationResp(TaskEvaluationResp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTaskEvaluationResp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskEvaluationResp() => clearField(5);
  @$pb.TagNumber(5)
  TaskEvaluationResp ensureTaskEvaluationResp() => $_ensure(4);

  @$pb.TagNumber(6)
  ConstraintsEvaluationResp get constraintsEvaluationResp => $_getN(5);
  @$pb.TagNumber(6)
  set constraintsEvaluationResp(ConstraintsEvaluationResp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasConstraintsEvaluationResp() => $_has(5);
  @$pb.TagNumber(6)
  void clearConstraintsEvaluationResp() => clearField(6);
  @$pb.TagNumber(6)
  ConstraintsEvaluationResp ensureConstraintsEvaluationResp() => $_ensure(5);

  @$pb.TagNumber(7)
  LabelEvaluationResp get labelEvaluationResp => $_getN(6);
  @$pb.TagNumber(7)
  set labelEvaluationResp(LabelEvaluationResp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasLabelEvaluationResp() => $_has(6);
  @$pb.TagNumber(7)
  void clearLabelEvaluationResp() => clearField(7);
  @$pb.TagNumber(7)
  LabelEvaluationResp ensureLabelEvaluationResp() => $_ensure(6);
}

class ChannelCategoryType extends $pb.GeneratedMessage {
  factory ChannelCategoryType() => create();
  ChannelCategoryType._() : super();
  factory ChannelCategoryType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelCategoryType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelCategoryType', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'categoryType', $pb.PbFieldType.O3, protoName: 'categoryType')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelCategoryType clone() => ChannelCategoryType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelCategoryType copyWith(void Function(ChannelCategoryType) updates) => super.copyWith((message) => updates(message as ChannelCategoryType)) as ChannelCategoryType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelCategoryType create() => ChannelCategoryType._();
  ChannelCategoryType createEmptyInstance() => create();
  static $pb.PbList<ChannelCategoryType> createRepeated() => $pb.PbList<ChannelCategoryType>();
  @$core.pragma('dart2js:noInline')
  static ChannelCategoryType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelCategoryType>(create);
  static ChannelCategoryType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get categoryType => $_getIZ(0);
  @$pb.TagNumber(1)
  set categoryType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategoryType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategoryType() => clearField(1);

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

class ChannelEvaluationResp_Channel extends $pb.GeneratedMessage {
  factory ChannelEvaluationResp_Channel() => create();
  ChannelEvaluationResp_Channel._() : super();
  factory ChannelEvaluationResp_Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelEvaluationResp_Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelEvaluationResp.Channel', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'linkURL', protoName: 'linkURL')
    ..pPS(5, _omitFieldNames ? '' : 'descriptions')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'channelCategoryType', $pb.PbFieldType.O3, protoName: 'channelCategoryType')
    ..aInt64(7, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(8, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'channelStatus', $pb.PbFieldType.O3, protoName: 'channelStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelEvaluationResp_Channel clone() => ChannelEvaluationResp_Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelEvaluationResp_Channel copyWith(void Function(ChannelEvaluationResp_Channel) updates) => super.copyWith((message) => updates(message as ChannelEvaluationResp_Channel)) as ChannelEvaluationResp_Channel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelEvaluationResp_Channel create() => ChannelEvaluationResp_Channel._();
  ChannelEvaluationResp_Channel createEmptyInstance() => create();
  static $pb.PbList<ChannelEvaluationResp_Channel> createRepeated() => $pb.PbList<ChannelEvaluationResp_Channel>();
  @$core.pragma('dart2js:noInline')
  static ChannelEvaluationResp_Channel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelEvaluationResp_Channel>(create);
  static ChannelEvaluationResp_Channel? _defaultInstance;

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
  $core.int get order => $_getIZ(8);
  @$pb.TagNumber(9)
  set order($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasOrder() => $_has(8);
  @$pb.TagNumber(9)
  void clearOrder() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get channelStatus => $_getIZ(9);
  @$pb.TagNumber(10)
  set channelStatus($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasChannelStatus() => $_has(9);
  @$pb.TagNumber(10)
  void clearChannelStatus() => clearField(10);
}

class ChannelEvaluationResp extends $pb.GeneratedMessage {
  factory ChannelEvaluationResp() => create();
  ChannelEvaluationResp._() : super();
  factory ChannelEvaluationResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelEvaluationResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelEvaluationResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'channelCategoryType', $pb.PbFieldType.O3, protoName: 'channelCategoryType')
    ..pc<ChannelEvaluationResp_Channel>(2, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: ChannelEvaluationResp_Channel.create)
    ..pc<ChannelEvaluationResp_Channel>(3, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: ChannelEvaluationResp_Channel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelEvaluationResp clone() => ChannelEvaluationResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelEvaluationResp copyWith(void Function(ChannelEvaluationResp) updates) => super.copyWith((message) => updates(message as ChannelEvaluationResp)) as ChannelEvaluationResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelEvaluationResp create() => ChannelEvaluationResp._();
  ChannelEvaluationResp createEmptyInstance() => create();
  static $pb.PbList<ChannelEvaluationResp> createRepeated() => $pb.PbList<ChannelEvaluationResp>();
  @$core.pragma('dart2js:noInline')
  static ChannelEvaluationResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelEvaluationResp>(create);
  static ChannelEvaluationResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get channelCategoryType => $_getIZ(0);
  @$pb.TagNumber(1)
  set channelCategoryType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelCategoryType() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelCategoryType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ChannelEvaluationResp_Channel> get matches => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<ChannelEvaluationResp_Channel> get misMatches => $_getList(2);
}

class PayEvaluationResp_Pay extends $pb.GeneratedMessage {
  factory PayEvaluationResp_Pay() => create();
  PayEvaluationResp_Pay._() : super();
  factory PayEvaluationResp_Pay.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayEvaluationResp_Pay.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayEvaluationResp.Pay', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
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
  PayEvaluationResp_Pay clone() => PayEvaluationResp_Pay()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayEvaluationResp_Pay copyWith(void Function(PayEvaluationResp_Pay) updates) => super.copyWith((message) => updates(message as PayEvaluationResp_Pay)) as PayEvaluationResp_Pay;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PayEvaluationResp_Pay create() => PayEvaluationResp_Pay._();
  PayEvaluationResp_Pay createEmptyInstance() => create();
  static $pb.PbList<PayEvaluationResp_Pay> createRepeated() => $pb.PbList<PayEvaluationResp_Pay>();
  @$core.pragma('dart2js:noInline')
  static PayEvaluationResp_Pay getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayEvaluationResp_Pay>(create);
  static PayEvaluationResp_Pay? _defaultInstance;

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

class PayEvaluationResp extends $pb.GeneratedMessage {
  factory PayEvaluationResp() => create();
  PayEvaluationResp._() : super();
  factory PayEvaluationResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayEvaluationResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayEvaluationResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..pc<PayEvaluationResp_Pay>(1, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: PayEvaluationResp_Pay.create)
    ..pc<PayEvaluationResp_Pay>(2, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: PayEvaluationResp_Pay.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayEvaluationResp clone() => PayEvaluationResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayEvaluationResp copyWith(void Function(PayEvaluationResp) updates) => super.copyWith((message) => updates(message as PayEvaluationResp)) as PayEvaluationResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PayEvaluationResp create() => PayEvaluationResp._();
  PayEvaluationResp createEmptyInstance() => create();
  static $pb.PbList<PayEvaluationResp> createRepeated() => $pb.PbList<PayEvaluationResp>();
  @$core.pragma('dart2js:noInline')
  static PayEvaluationResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayEvaluationResp>(create);
  static PayEvaluationResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PayEvaluationResp_Pay> get matches => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<PayEvaluationResp_Pay> get misMatches => $_getList(1);
}

class TaskEvaluationResp_Task_TaskDescription extends $pb.GeneratedMessage {
  factory TaskEvaluationResp_Task_TaskDescription() => create();
  TaskEvaluationResp_Task_TaskDescription._() : super();
  factory TaskEvaluationResp_Task_TaskDescription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskEvaluationResp_Task_TaskDescription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskEvaluationResp.Task.TaskDescription', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(2, _omitFieldNames ? '' : 'desc')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskEvaluationResp_Task_TaskDescription clone() => TaskEvaluationResp_Task_TaskDescription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskEvaluationResp_Task_TaskDescription copyWith(void Function(TaskEvaluationResp_Task_TaskDescription) updates) => super.copyWith((message) => updates(message as TaskEvaluationResp_Task_TaskDescription)) as TaskEvaluationResp_Task_TaskDescription;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskEvaluationResp_Task_TaskDescription create() => TaskEvaluationResp_Task_TaskDescription._();
  TaskEvaluationResp_Task_TaskDescription createEmptyInstance() => create();
  static $pb.PbList<TaskEvaluationResp_Task_TaskDescription> createRepeated() => $pb.PbList<TaskEvaluationResp_Task_TaskDescription>();
  @$core.pragma('dart2js:noInline')
  static TaskEvaluationResp_Task_TaskDescription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskEvaluationResp_Task_TaskDescription>(create);
  static TaskEvaluationResp_Task_TaskDescription? _defaultInstance;

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

class TaskEvaluationResp_Task extends $pb.GeneratedMessage {
  factory TaskEvaluationResp_Task() => create();
  TaskEvaluationResp_Task._() : super();
  factory TaskEvaluationResp_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskEvaluationResp_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskEvaluationResp.Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<TaskEvaluationResp_Task_TaskDescription>(3, _omitFieldNames ? '' : 'descriptions', $pb.PbFieldType.PM, subBuilder: TaskEvaluationResp_Task_TaskDescription.create)
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
  TaskEvaluationResp_Task clone() => TaskEvaluationResp_Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskEvaluationResp_Task copyWith(void Function(TaskEvaluationResp_Task) updates) => super.copyWith((message) => updates(message as TaskEvaluationResp_Task)) as TaskEvaluationResp_Task;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskEvaluationResp_Task create() => TaskEvaluationResp_Task._();
  TaskEvaluationResp_Task createEmptyInstance() => create();
  static $pb.PbList<TaskEvaluationResp_Task> createRepeated() => $pb.PbList<TaskEvaluationResp_Task>();
  @$core.pragma('dart2js:noInline')
  static TaskEvaluationResp_Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskEvaluationResp_Task>(create);
  static TaskEvaluationResp_Task? _defaultInstance;

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
  $core.List<TaskEvaluationResp_Task_TaskDescription> get descriptions => $_getList(2);

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

class TaskEvaluationResp extends $pb.GeneratedMessage {
  factory TaskEvaluationResp() => create();
  TaskEvaluationResp._() : super();
  factory TaskEvaluationResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskEvaluationResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskEvaluationResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..pc<TaskEvaluationResp_Task>(1, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: TaskEvaluationResp_Task.create)
    ..pc<TaskEvaluationResp_Task>(2, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: TaskEvaluationResp_Task.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskEvaluationResp clone() => TaskEvaluationResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskEvaluationResp copyWith(void Function(TaskEvaluationResp) updates) => super.copyWith((message) => updates(message as TaskEvaluationResp)) as TaskEvaluationResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskEvaluationResp create() => TaskEvaluationResp._();
  TaskEvaluationResp createEmptyInstance() => create();
  static $pb.PbList<TaskEvaluationResp> createRepeated() => $pb.PbList<TaskEvaluationResp>();
  @$core.pragma('dart2js:noInline')
  static TaskEvaluationResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskEvaluationResp>(create);
  static TaskEvaluationResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TaskEvaluationResp_Task> get matches => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<TaskEvaluationResp_Task> get misMatches => $_getList(1);
}

class ConstraintsEvaluationResp_Constraint extends $pb.GeneratedMessage {
  factory ConstraintsEvaluationResp_Constraint() => create();
  ConstraintsEvaluationResp_Constraint._() : super();
  factory ConstraintsEvaluationResp_Constraint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConstraintsEvaluationResp_Constraint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConstraintsEvaluationResp.Constraint', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'constraintType', $pb.PbFieldType.O3, protoName: 'constraintType')
    ..aOS(2, _omitFieldNames ? '' : 'constraintName', protoName: 'constraintName')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'weekDays', $pb.PbFieldType.K3, protoName: 'weekDays')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConstraintsEvaluationResp_Constraint clone() => ConstraintsEvaluationResp_Constraint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConstraintsEvaluationResp_Constraint copyWith(void Function(ConstraintsEvaluationResp_Constraint) updates) => super.copyWith((message) => updates(message as ConstraintsEvaluationResp_Constraint)) as ConstraintsEvaluationResp_Constraint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstraintsEvaluationResp_Constraint create() => ConstraintsEvaluationResp_Constraint._();
  ConstraintsEvaluationResp_Constraint createEmptyInstance() => create();
  static $pb.PbList<ConstraintsEvaluationResp_Constraint> createRepeated() => $pb.PbList<ConstraintsEvaluationResp_Constraint>();
  @$core.pragma('dart2js:noInline')
  static ConstraintsEvaluationResp_Constraint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConstraintsEvaluationResp_Constraint>(create);
  static ConstraintsEvaluationResp_Constraint? _defaultInstance;

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

class ConstraintsEvaluationResp extends $pb.GeneratedMessage {
  factory ConstraintsEvaluationResp() => create();
  ConstraintsEvaluationResp._() : super();
  factory ConstraintsEvaluationResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConstraintsEvaluationResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConstraintsEvaluationResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..pc<ConstraintsEvaluationResp_Constraint>(1, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: ConstraintsEvaluationResp_Constraint.create)
    ..pc<ConstraintsEvaluationResp_Constraint>(2, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: ConstraintsEvaluationResp_Constraint.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConstraintsEvaluationResp clone() => ConstraintsEvaluationResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConstraintsEvaluationResp copyWith(void Function(ConstraintsEvaluationResp) updates) => super.copyWith((message) => updates(message as ConstraintsEvaluationResp)) as ConstraintsEvaluationResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstraintsEvaluationResp create() => ConstraintsEvaluationResp._();
  ConstraintsEvaluationResp createEmptyInstance() => create();
  static $pb.PbList<ConstraintsEvaluationResp> createRepeated() => $pb.PbList<ConstraintsEvaluationResp>();
  @$core.pragma('dart2js:noInline')
  static ConstraintsEvaluationResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConstraintsEvaluationResp>(create);
  static ConstraintsEvaluationResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ConstraintsEvaluationResp_Constraint> get matches => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<ConstraintsEvaluationResp_Constraint> get misMatches => $_getList(1);
}

class LabelEvaluationResp_Label extends $pb.GeneratedMessage {
  factory LabelEvaluationResp_Label() => create();
  LabelEvaluationResp_Label._() : super();
  factory LabelEvaluationResp_Label.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabelEvaluationResp_Label.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabelEvaluationResp.Label', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'labelType', $pb.PbFieldType.O3, protoName: 'labelType')
    ..aOS(2, _omitFieldNames ? '' : 'labelName', protoName: 'labelName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabelEvaluationResp_Label clone() => LabelEvaluationResp_Label()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabelEvaluationResp_Label copyWith(void Function(LabelEvaluationResp_Label) updates) => super.copyWith((message) => updates(message as LabelEvaluationResp_Label)) as LabelEvaluationResp_Label;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabelEvaluationResp_Label create() => LabelEvaluationResp_Label._();
  LabelEvaluationResp_Label createEmptyInstance() => create();
  static $pb.PbList<LabelEvaluationResp_Label> createRepeated() => $pb.PbList<LabelEvaluationResp_Label>();
  @$core.pragma('dart2js:noInline')
  static LabelEvaluationResp_Label getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelEvaluationResp_Label>(create);
  static LabelEvaluationResp_Label? _defaultInstance;

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

class LabelEvaluationResp extends $pb.GeneratedMessage {
  factory LabelEvaluationResp() => create();
  LabelEvaluationResp._() : super();
  factory LabelEvaluationResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabelEvaluationResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabelEvaluationResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'evaluation'), createEmptyInstance: create)
    ..pc<LabelEvaluationResp_Label>(1, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: LabelEvaluationResp_Label.create)
    ..pc<LabelEvaluationResp_Label>(2, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: LabelEvaluationResp_Label.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabelEvaluationResp clone() => LabelEvaluationResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabelEvaluationResp copyWith(void Function(LabelEvaluationResp) updates) => super.copyWith((message) => updates(message as LabelEvaluationResp)) as LabelEvaluationResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabelEvaluationResp create() => LabelEvaluationResp._();
  LabelEvaluationResp createEmptyInstance() => create();
  static $pb.PbList<LabelEvaluationResp> createRepeated() => $pb.PbList<LabelEvaluationResp>();
  @$core.pragma('dart2js:noInline')
  static LabelEvaluationResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelEvaluationResp>(create);
  static LabelEvaluationResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LabelEvaluationResp_Label> get matches => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<LabelEvaluationResp_Label> get misMatches => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
