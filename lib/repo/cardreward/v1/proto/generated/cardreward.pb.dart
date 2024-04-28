//
//  Generated code. Do not modify.
//  source: cardreward.proto
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.reward.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.reward.v1'), createEmptyInstance: create)
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

class CardRewardIDReq extends $pb.GeneratedMessage {
  factory CardRewardIDReq() => create();
  CardRewardIDReq._() : super();
  factory CardRewardIDReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardIDReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardIDReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.reward.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardIDReq clone() => CardRewardIDReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardIDReq copyWith(void Function(CardRewardIDReq) updates) => super.copyWith((message) => updates(message as CardRewardIDReq)) as CardRewardIDReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardIDReq create() => CardRewardIDReq._();
  CardRewardIDReq createEmptyInstance() => create();
  static $pb.PbList<CardRewardIDReq> createRepeated() => $pb.PbList<CardRewardIDReq>();
  @$core.pragma('dart2js:noInline')
  static CardRewardIDReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardIDReq>(create);
  static CardRewardIDReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CardRewardsReply_Description extends $pb.GeneratedMessage {
  factory CardRewardsReply_Description() => create();
  CardRewardsReply_Description._() : super();
  factory CardRewardsReply_Description.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsReply_Description.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.Description', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.reward.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..pPS(3, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardsReply_Description clone() => CardRewardsReply_Description()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardsReply_Description copyWith(void Function(CardRewardsReply_Description) updates) => super.copyWith((message) => updates(message as CardRewardsReply_Description)) as CardRewardsReply_Description;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_Description create() => CardRewardsReply_Description._();
  CardRewardsReply_Description createEmptyInstance() => create();
  static $pb.PbList<CardRewardsReply_Description> createRepeated() => $pb.PbList<CardRewardsReply_Description>();
  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_Description getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardsReply_Description>(create);
  static CardRewardsReply_Description? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get order => $_getIZ(1);
  @$pb.TagNumber(2)
  set order($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrder() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrder() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get desc => $_getList(2);
}

class CardRewardsReply_FeedbackType extends $pb.GeneratedMessage {
  factory CardRewardsReply_FeedbackType() => create();
  CardRewardsReply_FeedbackType._() : super();
  factory CardRewardsReply_FeedbackType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsReply_FeedbackType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.FeedbackType', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.reward.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'feedbackType', $pb.PbFieldType.O3, protoName: 'feedbackType')
    ..aInt64(4, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(5, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardsReply_FeedbackType clone() => CardRewardsReply_FeedbackType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardsReply_FeedbackType copyWith(void Function(CardRewardsReply_FeedbackType) updates) => super.copyWith((message) => updates(message as CardRewardsReply_FeedbackType)) as CardRewardsReply_FeedbackType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_FeedbackType create() => CardRewardsReply_FeedbackType._();
  CardRewardsReply_FeedbackType createEmptyInstance() => create();
  static $pb.PbList<CardRewardsReply_FeedbackType> createRepeated() => $pb.PbList<CardRewardsReply_FeedbackType>();
  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_FeedbackType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardsReply_FeedbackType>(create);
  static CardRewardsReply_FeedbackType? _defaultInstance;

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
  $core.int get feedbackType => $_getIZ(2);
  @$pb.TagNumber(3)
  set feedbackType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeedbackType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeedbackType() => clearField(3);

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

class CardRewardsReply_TaskLabel extends $pb.GeneratedMessage {
  factory CardRewardsReply_TaskLabel() => create();
  CardRewardsReply_TaskLabel._() : super();
  factory CardRewardsReply_TaskLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsReply_TaskLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.TaskLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.reward.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Label', protoName: 'Label')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'show', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardsReply_TaskLabel clone() => CardRewardsReply_TaskLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardsReply_TaskLabel copyWith(void Function(CardRewardsReply_TaskLabel) updates) => super.copyWith((message) => updates(message as CardRewardsReply_TaskLabel)) as CardRewardsReply_TaskLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_TaskLabel create() => CardRewardsReply_TaskLabel._();
  CardRewardsReply_TaskLabel createEmptyInstance() => create();
  static $pb.PbList<CardRewardsReply_TaskLabel> createRepeated() => $pb.PbList<CardRewardsReply_TaskLabel>();
  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_TaskLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardsReply_TaskLabel>(create);
  static CardRewardsReply_TaskLabel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get label => $_getSZ(0);
  @$pb.TagNumber(1)
  set label($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get show => $_getIZ(2);
  @$pb.TagNumber(3)
  set show($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShow() => $_has(2);
  @$pb.TagNumber(3)
  void clearShow() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get order => $_getIZ(3);
  @$pb.TagNumber(4)
  set order($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrder() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrder() => clearField(4);
}

class CardRewardsReply_CardReward extends $pb.GeneratedMessage {
  factory CardRewardsReply_CardReward() => create();
  CardRewardsReply_CardReward._() : super();
  factory CardRewardsReply_CardReward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsReply_CardReward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.CardReward', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.reward.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'cardID', protoName: 'cardID')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..pc<CardRewardsReply_Description>(4, _omitFieldNames ? '' : 'descriptions', $pb.PbFieldType.PM, subBuilder: CardRewardsReply_Description.create)
    ..aInt64(5, _omitFieldNames ? '' : 'startDate', protoName: 'startDate')
    ..aInt64(6, _omitFieldNames ? '' : 'endDate', protoName: 'endDate')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'cardRewardType', $pb.PbFieldType.O3, protoName: 'cardRewardType')
    ..aOM<CardRewardsReply_FeedbackType>(8, _omitFieldNames ? '' : 'feedbackType', protoName: 'feedbackType', subBuilder: CardRewardsReply_FeedbackType.create)
    ..pc<CardRewardsReply_TaskLabel>(9, _omitFieldNames ? '' : 'taskLabels', $pb.PbFieldType.PM, protoName: 'taskLabels', subBuilder: CardRewardsReply_TaskLabel.create)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'cardRewardStatus', $pb.PbFieldType.O3, protoName: 'cardRewardStatus')
    ..aInt64(12, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(13, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardsReply_CardReward clone() => CardRewardsReply_CardReward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardsReply_CardReward copyWith(void Function(CardRewardsReply_CardReward) updates) => super.copyWith((message) => updates(message as CardRewardsReply_CardReward)) as CardRewardsReply_CardReward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_CardReward create() => CardRewardsReply_CardReward._();
  CardRewardsReply_CardReward createEmptyInstance() => create();
  static $pb.PbList<CardRewardsReply_CardReward> createRepeated() => $pb.PbList<CardRewardsReply_CardReward>();
  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_CardReward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardsReply_CardReward>(create);
  static CardRewardsReply_CardReward? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardID => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardID() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<CardRewardsReply_Description> get descriptions => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get startDate => $_getI64(4);
  @$pb.TagNumber(5)
  set startDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartDate() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get endDate => $_getI64(5);
  @$pb.TagNumber(6)
  set endDate($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get cardRewardType => $_getIZ(6);
  @$pb.TagNumber(7)
  set cardRewardType($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCardRewardType() => $_has(6);
  @$pb.TagNumber(7)
  void clearCardRewardType() => clearField(7);

  @$pb.TagNumber(8)
  CardRewardsReply_FeedbackType get feedbackType => $_getN(7);
  @$pb.TagNumber(8)
  set feedbackType(CardRewardsReply_FeedbackType v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasFeedbackType() => $_has(7);
  @$pb.TagNumber(8)
  void clearFeedbackType() => clearField(8);
  @$pb.TagNumber(8)
  CardRewardsReply_FeedbackType ensureFeedbackType() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.List<CardRewardsReply_TaskLabel> get taskLabels => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get order => $_getIZ(9);
  @$pb.TagNumber(10)
  set order($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasOrder() => $_has(9);
  @$pb.TagNumber(10)
  void clearOrder() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get cardRewardStatus => $_getIZ(10);
  @$pb.TagNumber(11)
  set cardRewardStatus($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCardRewardStatus() => $_has(10);
  @$pb.TagNumber(11)
  void clearCardRewardStatus() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get createDate => $_getI64(11);
  @$pb.TagNumber(12)
  set createDate($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCreateDate() => $_has(11);
  @$pb.TagNumber(12)
  void clearCreateDate() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get updateDate => $_getI64(12);
  @$pb.TagNumber(13)
  set updateDate($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpdateDate() => $_has(12);
  @$pb.TagNumber(13)
  void clearUpdateDate() => clearField(13);
}

class CardRewardsReply extends $pb.GeneratedMessage {
  factory CardRewardsReply() => create();
  CardRewardsReply._() : super();
  factory CardRewardsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.reward.v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<CardRewardsReply_CardReward>(2, _omitFieldNames ? '' : 'cardRewards', $pb.PbFieldType.PM, protoName: 'cardRewards', subBuilder: CardRewardsReply_CardReward.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardsReply clone() => CardRewardsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardsReply copyWith(void Function(CardRewardsReply) updates) => super.copyWith((message) => updates(message as CardRewardsReply)) as CardRewardsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardsReply create() => CardRewardsReply._();
  CardRewardsReply createEmptyInstance() => create();
  static $pb.PbList<CardRewardsReply> createRepeated() => $pb.PbList<CardRewardsReply>();
  @$core.pragma('dart2js:noInline')
  static CardRewardsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardsReply>(create);
  static CardRewardsReply? _defaultInstance;

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
  $core.List<CardRewardsReply_CardReward> get cardRewards => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
