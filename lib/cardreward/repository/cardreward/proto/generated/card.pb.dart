//
//  Generated code. Do not modify.
//  source: card.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class CardIDProto extends $pb.GeneratedMessage {
  factory CardIDProto() => create();
  CardIDProto._() : super();
  factory CardIDProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardIDProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardIDProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardID', protoName: 'cardID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardIDProto clone() => CardIDProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardIDProto copyWith(void Function(CardIDProto) updates) => super.copyWith((message) => updates(message as CardIDProto)) as CardIDProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardIDProto create() => CardIDProto._();
  CardIDProto createEmptyInstance() => create();
  static $pb.PbList<CardIDProto> createRepeated() => $pb.PbList<CardIDProto>();
  @$core.pragma('dart2js:noInline')
  static CardIDProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardIDProto>(create);
  static CardIDProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardID => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardID() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardID() => clearField(1);
}

class CardContentReply extends $pb.GeneratedMessage {
  factory CardContentReply() => create();
  CardContentReply._() : super();
  factory CardContentReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardContentReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardContentReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..aOM<CardProto>(2, _omitFieldNames ? '' : 'card', subBuilder: CardProto.create)
    ..pc<CardRewardProto>(3, _omitFieldNames ? '' : 'cardRewards', $pb.PbFieldType.PM, protoName: 'cardRewards', subBuilder: CardRewardProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardContentReply clone() => CardContentReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardContentReply copyWith(void Function(CardContentReply) updates) => super.copyWith((message) => updates(message as CardContentReply)) as CardContentReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardContentReply create() => CardContentReply._();
  CardContentReply createEmptyInstance() => create();
  static $pb.PbList<CardContentReply> createRepeated() => $pb.PbList<CardContentReply>();
  @$core.pragma('dart2js:noInline')
  static CardContentReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardContentReply>(create);
  static CardContentReply? _defaultInstance;

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
  CardProto get card => $_getN(1);
  @$pb.TagNumber(2)
  set card(CardProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCard() => $_has(1);
  @$pb.TagNumber(2)
  void clearCard() => clearField(2);
  @$pb.TagNumber(2)
  CardProto ensureCard() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<CardRewardProto> get cardRewards => $_getList(2);
}

class CardRewardsReply extends $pb.GeneratedMessage {
  factory CardRewardsReply() => create();
  CardRewardsReply._() : super();
  factory CardRewardsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<CardRewardProto>(2, _omitFieldNames ? '' : 'cardRewards', $pb.PbFieldType.PM, protoName: 'cardRewards', subBuilder: CardRewardProto.create)
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
  $core.List<CardRewardProto> get cardRewards => $_getList(1);
}

class CardRewardProto extends $pb.GeneratedMessage {
  factory CardRewardProto() => create();
  CardRewardProto._() : super();
  factory CardRewardProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'cardID', protoName: 'cardID')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..pc<CardRewardDescriptionProto>(4, _omitFieldNames ? '' : 'cardRewardDescriptions', $pb.PbFieldType.PM, protoName: 'cardRewardDescriptions', subBuilder: CardRewardDescriptionProto.create)
    ..aInt64(5, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(6, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..aInt64(7, _omitFieldNames ? '' : 'startDate', protoName: 'startDate')
    ..aInt64(8, _omitFieldNames ? '' : 'endDate', protoName: 'endDate')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'cardRewardType', $pb.PbFieldType.O3, protoName: 'cardRewardType')
    ..aOM<CardRewardTypeEvaluationRespProto>(10, _omitFieldNames ? '' : 'cardRewardTypeEvaluationResp', protoName: 'cardRewardTypeEvaluationResp', subBuilder: CardRewardTypeEvaluationRespProto.create)
    ..aOM<CardRewardTypeEvaluationProto>(11, _omitFieldNames ? '' : 'cardRewardTypeEvaluation', protoName: 'cardRewardTypeEvaluation', subBuilder: CardRewardTypeEvaluationProto.create)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardProto clone() => CardRewardProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardProto copyWith(void Function(CardRewardProto) updates) => super.copyWith((message) => updates(message as CardRewardProto)) as CardRewardProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardProto create() => CardRewardProto._();
  CardRewardProto createEmptyInstance() => create();
  static $pb.PbList<CardRewardProto> createRepeated() => $pb.PbList<CardRewardProto>();
  @$core.pragma('dart2js:noInline')
  static CardRewardProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardProto>(create);
  static CardRewardProto? _defaultInstance;

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
  $core.List<CardRewardDescriptionProto> get cardRewardDescriptions => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createDate => $_getI64(4);
  @$pb.TagNumber(5)
  set createDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreateDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreateDate() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get updateDate => $_getI64(5);
  @$pb.TagNumber(6)
  set updateDate($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateDate() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get startDate => $_getI64(6);
  @$pb.TagNumber(7)
  set startDate($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStartDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartDate() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get endDate => $_getI64(7);
  @$pb.TagNumber(8)
  set endDate($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEndDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearEndDate() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get cardRewardType => $_getIZ(8);
  @$pb.TagNumber(9)
  set cardRewardType($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCardRewardType() => $_has(8);
  @$pb.TagNumber(9)
  void clearCardRewardType() => clearField(9);

  @$pb.TagNumber(10)
  CardRewardTypeEvaluationRespProto get cardRewardTypeEvaluationResp => $_getN(9);
  @$pb.TagNumber(10)
  set cardRewardTypeEvaluationResp(CardRewardTypeEvaluationRespProto v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCardRewardTypeEvaluationResp() => $_has(9);
  @$pb.TagNumber(10)
  void clearCardRewardTypeEvaluationResp() => clearField(10);
  @$pb.TagNumber(10)
  CardRewardTypeEvaluationRespProto ensureCardRewardTypeEvaluationResp() => $_ensure(9);

  @$pb.TagNumber(11)
  CardRewardTypeEvaluationProto get cardRewardTypeEvaluation => $_getN(10);
  @$pb.TagNumber(11)
  set cardRewardTypeEvaluation(CardRewardTypeEvaluationProto v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasCardRewardTypeEvaluation() => $_has(10);
  @$pb.TagNumber(11)
  void clearCardRewardTypeEvaluation() => clearField(11);
  @$pb.TagNumber(11)
  CardRewardTypeEvaluationProto ensureCardRewardTypeEvaluation() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.int get order => $_getIZ(11);
  @$pb.TagNumber(12)
  set order($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasOrder() => $_has(11);
  @$pb.TagNumber(12)
  void clearOrder() => clearField(12);
}

class CardRewardTypeEvaluationRespProto extends $pb.GeneratedMessage {
  factory CardRewardTypeEvaluationRespProto() => create();
  CardRewardTypeEvaluationRespProto._() : super();
  factory CardRewardTypeEvaluationRespProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardTypeEvaluationRespProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardTypeEvaluationRespProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOM<RewardProto>(1, _omitFieldNames ? '' : 'reward', subBuilder: RewardProto.create)
    ..aOM<CurrencyProto>(2, _omitFieldNames ? '' : 'currency', subBuilder: CurrencyProto.create)
    ..aOM<PointProto>(3, _omitFieldNames ? '' : 'point', subBuilder: PointProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardTypeEvaluationRespProto clone() => CardRewardTypeEvaluationRespProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardTypeEvaluationRespProto copyWith(void Function(CardRewardTypeEvaluationRespProto) updates) => super.copyWith((message) => updates(message as CardRewardTypeEvaluationRespProto)) as CardRewardTypeEvaluationRespProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardTypeEvaluationRespProto create() => CardRewardTypeEvaluationRespProto._();
  CardRewardTypeEvaluationRespProto createEmptyInstance() => create();
  static $pb.PbList<CardRewardTypeEvaluationRespProto> createRepeated() => $pb.PbList<CardRewardTypeEvaluationRespProto>();
  @$core.pragma('dart2js:noInline')
  static CardRewardTypeEvaluationRespProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardTypeEvaluationRespProto>(create);
  static CardRewardTypeEvaluationRespProto? _defaultInstance;

  @$pb.TagNumber(1)
  RewardProto get reward => $_getN(0);
  @$pb.TagNumber(1)
  set reward(RewardProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReward() => $_has(0);
  @$pb.TagNumber(1)
  void clearReward() => clearField(1);
  @$pb.TagNumber(1)
  RewardProto ensureReward() => $_ensure(0);

  @$pb.TagNumber(2)
  CurrencyProto get currency => $_getN(1);
  @$pb.TagNumber(2)
  set currency(CurrencyProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrency() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrency() => clearField(2);
  @$pb.TagNumber(2)
  CurrencyProto ensureCurrency() => $_ensure(1);

  @$pb.TagNumber(3)
  PointProto get point => $_getN(2);
  @$pb.TagNumber(3)
  set point(PointProto v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearPoint() => clearField(3);
  @$pb.TagNumber(3)
  PointProto ensurePoint() => $_ensure(2);
}

class RewardProto extends $pb.GeneratedMessage {
  factory RewardProto() => create();
  RewardProto._() : super();
  factory RewardProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RewardProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RewardProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'rewardType', $pb.PbFieldType.O3, protoName: 'rewardType')
    ..aOS(2, _omitFieldNames ? '' : 'rewardName', protoName: 'rewardName')
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
  $core.int get rewardType => $_getIZ(0);
  @$pb.TagNumber(1)
  set rewardType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRewardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRewardType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get rewardName => $_getSZ(1);
  @$pb.TagNumber(2)
  set rewardName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRewardName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRewardName() => clearField(2);
}

class CurrencyProto extends $pb.GeneratedMessage {
  factory CurrencyProto() => create();
  CurrencyProto._() : super();
  factory CurrencyProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CurrencyProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CurrencyProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'currencyType', $pb.PbFieldType.O3, protoName: 'currencyType')
    ..aOS(2, _omitFieldNames ? '' : 'currencyName', protoName: 'currencyName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CurrencyProto clone() => CurrencyProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CurrencyProto copyWith(void Function(CurrencyProto) updates) => super.copyWith((message) => updates(message as CurrencyProto)) as CurrencyProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurrencyProto create() => CurrencyProto._();
  CurrencyProto createEmptyInstance() => create();
  static $pb.PbList<CurrencyProto> createRepeated() => $pb.PbList<CurrencyProto>();
  @$core.pragma('dart2js:noInline')
  static CurrencyProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurrencyProto>(create);
  static CurrencyProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get currencyType => $_getIZ(0);
  @$pb.TagNumber(1)
  set currencyType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrencyType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrencyType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get currencyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set currencyName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrencyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrencyName() => clearField(2);
}

class PointProto extends $pb.GeneratedMessage {
  factory PointProto() => create();
  PointProto._() : super();
  factory PointProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PointProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PointProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pointType', $pb.PbFieldType.O3, protoName: 'pointType')
    ..aOS(2, _omitFieldNames ? '' : 'pointName', protoName: 'pointName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PointProto clone() => PointProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PointProto copyWith(void Function(PointProto) updates) => super.copyWith((message) => updates(message as PointProto)) as PointProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PointProto create() => PointProto._();
  PointProto createEmptyInstance() => create();
  static $pb.PbList<PointProto> createRepeated() => $pb.PbList<PointProto>();
  @$core.pragma('dart2js:noInline')
  static PointProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PointProto>(create);
  static PointProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pointType => $_getIZ(0);
  @$pb.TagNumber(1)
  set pointType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPointType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPointType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pointName => $_getSZ(1);
  @$pb.TagNumber(2)
  set pointName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPointName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPointName() => clearField(2);
}

class CardRewardTypeEvaluationProto extends $pb.GeneratedMessage {
  factory CardRewardTypeEvaluationProto() => create();
  CardRewardTypeEvaluationProto._() : super();
  factory CardRewardTypeEvaluationProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardTypeEvaluationProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardTypeEvaluationProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'rewardType', $pb.PbFieldType.O3, protoName: 'rewardType')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'currencyType', $pb.PbFieldType.O3, protoName: 'currencyType')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'pointType', $pb.PbFieldType.O3, protoName: 'pointType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardTypeEvaluationProto clone() => CardRewardTypeEvaluationProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardTypeEvaluationProto copyWith(void Function(CardRewardTypeEvaluationProto) updates) => super.copyWith((message) => updates(message as CardRewardTypeEvaluationProto)) as CardRewardTypeEvaluationProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardTypeEvaluationProto create() => CardRewardTypeEvaluationProto._();
  CardRewardTypeEvaluationProto createEmptyInstance() => create();
  static $pb.PbList<CardRewardTypeEvaluationProto> createRepeated() => $pb.PbList<CardRewardTypeEvaluationProto>();
  @$core.pragma('dart2js:noInline')
  static CardRewardTypeEvaluationProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardTypeEvaluationProto>(create);
  static CardRewardTypeEvaluationProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rewardType => $_getIZ(0);
  @$pb.TagNumber(1)
  set rewardType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRewardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRewardType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get currencyType => $_getIZ(1);
  @$pb.TagNumber(2)
  set currencyType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrencyType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrencyType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pointType => $_getIZ(2);
  @$pb.TagNumber(3)
  set pointType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPointType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPointType() => clearField(3);
}

class CardRewardDescriptionProto extends $pb.GeneratedMessage {
  factory CardRewardDescriptionProto() => create();
  CardRewardDescriptionProto._() : super();
  factory CardRewardDescriptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardDescriptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardDescriptionProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..pPS(3, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardDescriptionProto clone() => CardRewardDescriptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardDescriptionProto copyWith(void Function(CardRewardDescriptionProto) updates) => super.copyWith((message) => updates(message as CardRewardDescriptionProto)) as CardRewardDescriptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardDescriptionProto create() => CardRewardDescriptionProto._();
  CardRewardDescriptionProto createEmptyInstance() => create();
  static $pb.PbList<CardRewardDescriptionProto> createRepeated() => $pb.PbList<CardRewardDescriptionProto>();
  @$core.pragma('dart2js:noInline')
  static CardRewardDescriptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardDescriptionProto>(create);
  static CardRewardDescriptionProto? _defaultInstance;

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

class CardEventProto extends $pb.GeneratedMessage {
  factory CardEventProto() => create();
  CardEventProto._() : super();
  factory CardEventProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardEventProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardEventProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOM<EventProto>(1, _omitFieldNames ? '' : 'event', subBuilder: EventProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardEventProto clone() => CardEventProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardEventProto copyWith(void Function(CardEventProto) updates) => super.copyWith((message) => updates(message as CardEventProto)) as CardEventProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardEventProto create() => CardEventProto._();
  CardEventProto createEmptyInstance() => create();
  static $pb.PbList<CardEventProto> createRepeated() => $pb.PbList<CardEventProto>();
  @$core.pragma('dart2js:noInline')
  static CardEventProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardEventProto>(create);
  static CardEventProto? _defaultInstance;

  @$pb.TagNumber(1)
  EventProto get event => $_getN(0);
  @$pb.TagNumber(1)
  set event(EventProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);
  @$pb.TagNumber(1)
  EventProto ensureEvent() => $_ensure(0);
}

class EventProto extends $pb.GeneratedMessage {
  factory EventProto() => create();
  EventProto._() : super();
  factory EventProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'evaluationID', protoName: 'evaluationID')
    ..pPS(2, _omitFieldNames ? '' : 'taskIDs', protoName: 'taskIDs')
    ..pPS(3, _omitFieldNames ? '' : 'payIDs', protoName: 'payIDs')
    ..pPS(4, _omitFieldNames ? '' : 'channelIDs', protoName: 'channelIDs')
    ..p<$core.int>(5, _omitFieldNames ? '' : 'labels', $pb.PbFieldType.K3)
    ..aInt64(6, _omitFieldNames ? '' : 'eventDate', protoName: 'eventDate')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'cost', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'currencyType', $pb.PbFieldType.O3, protoName: 'currencyType')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'rewardType', $pb.PbFieldType.O3, protoName: 'rewardType')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'pointType', $pb.PbFieldType.O3, protoName: 'pointType')
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
  $core.List<$core.String> get taskIDs => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get payIDs => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get channelIDs => $_getList(3);

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
  $core.int get currencyType => $_getIZ(7);
  @$pb.TagNumber(8)
  set currencyType($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCurrencyType() => $_has(7);
  @$pb.TagNumber(8)
  void clearCurrencyType() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get rewardType => $_getIZ(8);
  @$pb.TagNumber(9)
  set rewardType($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRewardType() => $_has(8);
  @$pb.TagNumber(9)
  void clearRewardType() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get pointType => $_getIZ(9);
  @$pb.TagNumber(10)
  set pointType($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPointType() => $_has(9);
  @$pb.TagNumber(10)
  void clearPointType() => clearField(10);
}

class EvaluateCardRewardsProtoReply extends $pb.GeneratedMessage {
  factory EvaluateCardRewardsProtoReply() => create();
  EvaluateCardRewardsProtoReply._() : super();
  factory EvaluateCardRewardsProtoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluateCardRewardsProtoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluateCardRewardsProtoReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<CardRewardEventResultProto>(2, _omitFieldNames ? '' : 'cardRewardEventResults', $pb.PbFieldType.PM, protoName: 'cardRewardEventResults', subBuilder: CardRewardEventResultProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluateCardRewardsProtoReply clone() => EvaluateCardRewardsProtoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluateCardRewardsProtoReply copyWith(void Function(EvaluateCardRewardsProtoReply) updates) => super.copyWith((message) => updates(message as EvaluateCardRewardsProtoReply)) as EvaluateCardRewardsProtoReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluateCardRewardsProtoReply create() => EvaluateCardRewardsProtoReply._();
  EvaluateCardRewardsProtoReply createEmptyInstance() => create();
  static $pb.PbList<EvaluateCardRewardsProtoReply> createRepeated() => $pb.PbList<EvaluateCardRewardsProtoReply>();
  @$core.pragma('dart2js:noInline')
  static EvaluateCardRewardsProtoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluateCardRewardsProtoReply>(create);
  static EvaluateCardRewardsProtoReply? _defaultInstance;

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
  $core.List<CardRewardEventResultProto> get cardRewardEventResults => $_getList(1);
}

class CardRewardEventResultProto extends $pb.GeneratedMessage {
  factory CardRewardEventResultProto() => create();
  CardRewardEventResultProto._() : super();
  factory CardRewardEventResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardEventResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardEventResultProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<CardRewardEvaluationEventResultProto>(2, _omitFieldNames ? '' : 'cardRewardEvaluationEventResult', protoName: 'cardRewardEvaluationEventResult', subBuilder: CardRewardEvaluationEventResultProto.create)
    ..aOM<EvaluationEventResultRespProto>(3, _omitFieldNames ? '' : 'rewardEventResult', protoName: 'rewardEventResult', subBuilder: EvaluationEventResultRespProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardEventResultProto clone() => CardRewardEventResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardEventResultProto copyWith(void Function(CardRewardEventResultProto) updates) => super.copyWith((message) => updates(message as CardRewardEventResultProto)) as CardRewardEventResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardEventResultProto create() => CardRewardEventResultProto._();
  CardRewardEventResultProto createEmptyInstance() => create();
  static $pb.PbList<CardRewardEventResultProto> createRepeated() => $pb.PbList<CardRewardEventResultProto>();
  @$core.pragma('dart2js:noInline')
  static CardRewardEventResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardEventResultProto>(create);
  static CardRewardEventResultProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  CardRewardEvaluationEventResultProto get cardRewardEvaluationEventResult => $_getN(1);
  @$pb.TagNumber(2)
  set cardRewardEvaluationEventResult(CardRewardEvaluationEventResultProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardRewardEvaluationEventResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardRewardEvaluationEventResult() => clearField(2);
  @$pb.TagNumber(2)
  CardRewardEvaluationEventResultProto ensureCardRewardEvaluationEventResult() => $_ensure(1);

  @$pb.TagNumber(3)
  EvaluationEventResultRespProto get rewardEventResult => $_getN(2);
  @$pb.TagNumber(3)
  set rewardEventResult(EvaluationEventResultRespProto v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRewardEventResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearRewardEventResult() => clearField(3);
  @$pb.TagNumber(3)
  EvaluationEventResultRespProto ensureRewardEventResult() => $_ensure(2);
}

class CardRewardEvaluationEventResultProto extends $pb.GeneratedMessage {
  factory CardRewardEvaluationEventResultProto() => create();
  CardRewardEvaluationEventResultProto._() : super();
  factory CardRewardEvaluationEventResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardEvaluationEventResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardEvaluationEventResultProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardID', protoName: 'cardID')
    ..aOS(2, _omitFieldNames ? '' : 'cardName', protoName: 'cardName')
    ..aOS(3, _omitFieldNames ? '' : 'cardImage', protoName: 'cardImage')
    ..aOS(4, _omitFieldNames ? '' : 'bankID', protoName: 'bankID')
    ..aOS(5, _omitFieldNames ? '' : 'bankName', protoName: 'bankName')
    ..aInt64(6, _omitFieldNames ? '' : 'cardRewardStartDate', protoName: 'cardRewardStartDate')
    ..aInt64(7, _omitFieldNames ? '' : 'cardRewardEndDate', protoName: 'cardRewardEndDate')
    ..aOM<CardRewardTypeEvaluationRespProto>(8, _omitFieldNames ? '' : 'cardRewardTypeEvaluationResp', protoName: 'cardRewardTypeEvaluationResp', subBuilder: CardRewardTypeEvaluationRespProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardEvaluationEventResultProto clone() => CardRewardEvaluationEventResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardEvaluationEventResultProto copyWith(void Function(CardRewardEvaluationEventResultProto) updates) => super.copyWith((message) => updates(message as CardRewardEvaluationEventResultProto)) as CardRewardEvaluationEventResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardEvaluationEventResultProto create() => CardRewardEvaluationEventResultProto._();
  CardRewardEvaluationEventResultProto createEmptyInstance() => create();
  static $pb.PbList<CardRewardEvaluationEventResultProto> createRepeated() => $pb.PbList<CardRewardEvaluationEventResultProto>();
  @$core.pragma('dart2js:noInline')
  static CardRewardEvaluationEventResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardEvaluationEventResultProto>(create);
  static CardRewardEvaluationEventResultProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardID => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardID() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardName => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cardImage => $_getSZ(2);
  @$pb.TagNumber(3)
  set cardImage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCardImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardImage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bankID => $_getSZ(3);
  @$pb.TagNumber(4)
  set bankID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBankID() => $_has(3);
  @$pb.TagNumber(4)
  void clearBankID() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get bankName => $_getSZ(4);
  @$pb.TagNumber(5)
  set bankName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBankName() => $_has(4);
  @$pb.TagNumber(5)
  void clearBankName() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get cardRewardStartDate => $_getI64(5);
  @$pb.TagNumber(6)
  set cardRewardStartDate($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCardRewardStartDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearCardRewardStartDate() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get cardRewardEndDate => $_getI64(6);
  @$pb.TagNumber(7)
  set cardRewardEndDate($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCardRewardEndDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearCardRewardEndDate() => clearField(7);

  @$pb.TagNumber(8)
  CardRewardTypeEvaluationRespProto get cardRewardTypeEvaluationResp => $_getN(7);
  @$pb.TagNumber(8)
  set cardRewardTypeEvaluationResp(CardRewardTypeEvaluationRespProto v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCardRewardTypeEvaluationResp() => $_has(7);
  @$pb.TagNumber(8)
  void clearCardRewardTypeEvaluationResp() => clearField(8);
  @$pb.TagNumber(8)
  CardRewardTypeEvaluationRespProto ensureCardRewardTypeEvaluationResp() => $_ensure(7);
}

class EvaluationEventResultRespProto extends $pb.GeneratedMessage {
  factory EvaluationEventResultRespProto() => create();
  EvaluationEventResultRespProto._() : super();
  factory EvaluationEventResultRespProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationEventResultRespProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultRespProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

class FeedbackEventResultProto extends $pb.GeneratedMessage {
  factory FeedbackEventResultProto() => create();
  FeedbackEventResultProto._() : super();
  factory FeedbackEventResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedbackEventResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeedbackEventResultProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'feedbackType', $pb.PbFieldType.O3, protoName: 'feedbackType')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'cost', $pb.PbFieldType.O3)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'getReturn', $pb.PbFieldType.OD, protoName: 'getReturn')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'getPercentage', $pb.PbFieldType.OD, protoName: 'getPercentage')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'feedbackEventResultStatus', $pb.PbFieldType.O3, protoName: 'feedbackEventResultStatus')
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
  $core.int get feedbackType => $_getIZ(0);
  @$pb.TagNumber(1)
  set feedbackType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeedbackType() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeedbackType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get cost => $_getIZ(1);
  @$pb.TagNumber(2)
  set cost($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCost() => $_has(1);
  @$pb.TagNumber(2)
  void clearCost() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get getReturn => $_getN(2);
  @$pb.TagNumber(3)
  set getReturn($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGetReturn() => $_has(2);
  @$pb.TagNumber(3)
  void clearGetReturn() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get getPercentage => $_getN(3);
  @$pb.TagNumber(4)
  set getPercentage($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetPercentage() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetPercentage() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get feedbackEventResultStatus => $_getIZ(4);
  @$pb.TagNumber(5)
  set feedbackEventResultStatus($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFeedbackEventResultStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearFeedbackEventResultStatus() => clearField(5);
}

class RewardEventResultProto extends $pb.GeneratedMessage {
  factory RewardEventResultProto() => create();
  RewardEventResultProto._() : super();
  factory RewardEventResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RewardEventResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RewardEventResultProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'rewardEventStatus', $pb.PbFieldType.O3, protoName: 'rewardEventStatus')
    ..aOM<PayloadEventProto>(3, _omitFieldNames ? '' : 'payloadEvent', protoName: 'payloadEvent', subBuilder: PayloadEventProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RewardEventResultProto clone() => RewardEventResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RewardEventResultProto copyWith(void Function(RewardEventResultProto) updates) => super.copyWith((message) => updates(message as RewardEventResultProto)) as RewardEventResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RewardEventResultProto create() => RewardEventResultProto._();
  RewardEventResultProto createEmptyInstance() => create();
  static $pb.PbList<RewardEventResultProto> createRepeated() => $pb.PbList<RewardEventResultProto>();
  @$core.pragma('dart2js:noInline')
  static RewardEventResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RewardEventResultProto>(create);
  static RewardEventResultProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get rewardEventStatus => $_getIZ(1);
  @$pb.TagNumber(2)
  set rewardEventStatus($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRewardEventStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearRewardEventStatus() => clearField(2);

  @$pb.TagNumber(3)
  PayloadEventProto get payloadEvent => $_getN(2);
  @$pb.TagNumber(3)
  set payloadEvent(PayloadEventProto v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayloadEvent() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayloadEvent() => clearField(3);
  @$pb.TagNumber(3)
  PayloadEventProto ensurePayloadEvent() => $_ensure(2);
}

class PayloadEventProto extends $pb.GeneratedMessage {
  factory PayloadEventProto() => create();
  PayloadEventProto._() : super();
  factory PayloadEventProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadEventProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayloadEventProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'pass')
    ..aOM<FeedbackEventProto>(3, _omitFieldNames ? '' : 'feedbackEvent', protoName: 'feedbackEvent', subBuilder: FeedbackEventProto.create)
    ..pc<PayloadEventProto>(4, _omitFieldNames ? '' : 'payloadEvents', $pb.PbFieldType.PM, protoName: 'payloadEvents', subBuilder: PayloadEventProto.create)
    ..aOM<ContainerEventProto>(5, _omitFieldNames ? '' : 'containerEvent', protoName: 'containerEvent', subBuilder: ContainerEventProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadEventProto clone() => PayloadEventProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadEventProto copyWith(void Function(PayloadEventProto) updates) => super.copyWith((message) => updates(message as PayloadEventProto)) as PayloadEventProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PayloadEventProto create() => PayloadEventProto._();
  PayloadEventProto createEmptyInstance() => create();
  static $pb.PbList<PayloadEventProto> createRepeated() => $pb.PbList<PayloadEventProto>();
  @$core.pragma('dart2js:noInline')
  static PayloadEventProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayloadEventProto>(create);
  static PayloadEventProto? _defaultInstance;

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
  FeedbackEventProto get feedbackEvent => $_getN(2);
  @$pb.TagNumber(3)
  set feedbackEvent(FeedbackEventProto v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeedbackEvent() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeedbackEvent() => clearField(3);
  @$pb.TagNumber(3)
  FeedbackEventProto ensureFeedbackEvent() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<PayloadEventProto> get payloadEvents => $_getList(3);

  @$pb.TagNumber(5)
  ContainerEventProto get containerEvent => $_getN(4);
  @$pb.TagNumber(5)
  set containerEvent(ContainerEventProto v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasContainerEvent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContainerEvent() => clearField(5);
  @$pb.TagNumber(5)
  ContainerEventProto ensureContainerEvent() => $_ensure(4);
}

class FeedbackEventProto extends $pb.GeneratedMessage {
  factory FeedbackEventProto() => create();
  FeedbackEventProto._() : super();
  factory FeedbackEventProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedbackEventProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeedbackEventProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'feedbackType', $pb.PbFieldType.O3, protoName: 'feedbackType')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'cost', $pb.PbFieldType.O3)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'getReturn', $pb.PbFieldType.OD, protoName: 'getReturn')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'getPercentage', $pb.PbFieldType.OD, protoName: 'getPercentage')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'feedbackEventStatus', $pb.PbFieldType.O3, protoName: 'feedbackEventStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedbackEventProto clone() => FeedbackEventProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedbackEventProto copyWith(void Function(FeedbackEventProto) updates) => super.copyWith((message) => updates(message as FeedbackEventProto)) as FeedbackEventProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedbackEventProto create() => FeedbackEventProto._();
  FeedbackEventProto createEmptyInstance() => create();
  static $pb.PbList<FeedbackEventProto> createRepeated() => $pb.PbList<FeedbackEventProto>();
  @$core.pragma('dart2js:noInline')
  static FeedbackEventProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedbackEventProto>(create);
  static FeedbackEventProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get feedbackType => $_getIZ(0);
  @$pb.TagNumber(1)
  set feedbackType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeedbackType() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeedbackType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get cost => $_getIZ(1);
  @$pb.TagNumber(2)
  set cost($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCost() => $_has(1);
  @$pb.TagNumber(2)
  void clearCost() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get getReturn => $_getN(2);
  @$pb.TagNumber(3)
  set getReturn($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGetReturn() => $_has(2);
  @$pb.TagNumber(3)
  void clearGetReturn() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get getPercentage => $_getN(3);
  @$pb.TagNumber(4)
  set getPercentage($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetPercentage() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetPercentage() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get feedbackEventStatus => $_getIZ(4);
  @$pb.TagNumber(5)
  set feedbackEventStatus($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFeedbackEventStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearFeedbackEventStatus() => clearField(5);
}

class ContainerEventProto extends $pb.GeneratedMessage {
  factory ContainerEventProto() => create();
  ContainerEventProto._() : super();
  factory ContainerEventProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerEventProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContainerEventProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'pass')
    ..pc<ContainerEventProto>(3, _omitFieldNames ? '' : 'containerEvents', $pb.PbFieldType.PM, protoName: 'containerEvents', subBuilder: ContainerEventProto.create)
    ..pPS(4, _omitFieldNames ? '' : 'matches')
    ..pPS(5, _omitFieldNames ? '' : 'misMatches', protoName: 'misMatches')
    ..aOM<ConstraintEventReplyProto>(6, _omitFieldNames ? '' : 'cotraintEvent', protoName: 'cotraintEvent', subBuilder: ConstraintEventReplyProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerEventProto clone() => ContainerEventProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerEventProto copyWith(void Function(ContainerEventProto) updates) => super.copyWith((message) => updates(message as ContainerEventProto)) as ContainerEventProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContainerEventProto create() => ContainerEventProto._();
  ContainerEventProto createEmptyInstance() => create();
  static $pb.PbList<ContainerEventProto> createRepeated() => $pb.PbList<ContainerEventProto>();
  @$core.pragma('dart2js:noInline')
  static ContainerEventProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerEventProto>(create);
  static ContainerEventProto? _defaultInstance;

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
  $core.List<ContainerEventProto> get containerEvents => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get matches => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get misMatches => $_getList(4);

  @$pb.TagNumber(6)
  ConstraintEventReplyProto get cotraintEvent => $_getN(5);
  @$pb.TagNumber(6)
  set cotraintEvent(ConstraintEventReplyProto v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCotraintEvent() => $_has(5);
  @$pb.TagNumber(6)
  void clearCotraintEvent() => clearField(6);
  @$pb.TagNumber(6)
  ConstraintEventReplyProto ensureCotraintEvent() => $_ensure(5);
}

class ConstraintEventReplyProto extends $pb.GeneratedMessage {
  factory ConstraintEventReplyProto() => create();
  ConstraintEventReplyProto._() : super();
  factory ConstraintEventReplyProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConstraintEventReplyProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConstraintEventReplyProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'pass')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'constraintType', $pb.PbFieldType.O3, protoName: 'constraintType')
    ..pPS(3, _omitFieldNames ? '' : 'matches')
    ..pPS(4, _omitFieldNames ? '' : 'misMatches', protoName: 'misMatches')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConstraintEventReplyProto clone() => ConstraintEventReplyProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConstraintEventReplyProto copyWith(void Function(ConstraintEventReplyProto) updates) => super.copyWith((message) => updates(message as ConstraintEventReplyProto)) as ConstraintEventReplyProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstraintEventReplyProto create() => ConstraintEventReplyProto._();
  ConstraintEventReplyProto createEmptyInstance() => create();
  static $pb.PbList<ConstraintEventReplyProto> createRepeated() => $pb.PbList<ConstraintEventReplyProto>();
  @$core.pragma('dart2js:noInline')
  static ConstraintEventReplyProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConstraintEventReplyProto>(create);
  static ConstraintEventReplyProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get pass => $_getBF(0);
  @$pb.TagNumber(1)
  set pass($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPass() => $_has(0);
  @$pb.TagNumber(1)
  void clearPass() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get constraintType => $_getIZ(1);
  @$pb.TagNumber(2)
  set constraintType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConstraintType() => $_has(1);
  @$pb.TagNumber(2)
  void clearConstraintType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get matches => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get misMatches => $_getList(3);
}

class RewardIDProto extends $pb.GeneratedMessage {
  factory RewardIDProto() => create();
  RewardIDProto._() : super();
  factory RewardIDProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RewardIDProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RewardIDProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RewardIDProto clone() => RewardIDProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RewardIDProto copyWith(void Function(RewardIDProto) updates) => super.copyWith((message) => updates(message as RewardIDProto)) as RewardIDProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RewardIDProto create() => RewardIDProto._();
  RewardIDProto createEmptyInstance() => create();
  static $pb.PbList<RewardIDProto> createRepeated() => $pb.PbList<RewardIDProto>();
  @$core.pragma('dart2js:noInline')
  static RewardIDProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RewardIDProto>(create);
  static RewardIDProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CardRewardFlattenReply extends $pb.GeneratedMessage {
  factory CardRewardFlattenReply() => create();
  CardRewardFlattenReply._() : super();
  factory CardRewardFlattenReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardFlattenReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardFlattenReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..aOM<CardRewardFlatten>(2, _omitFieldNames ? '' : 'cardRewardFlatten', protoName: 'cardRewardFlatten', subBuilder: CardRewardFlatten.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardFlattenReply clone() => CardRewardFlattenReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardFlattenReply copyWith(void Function(CardRewardFlattenReply) updates) => super.copyWith((message) => updates(message as CardRewardFlattenReply)) as CardRewardFlattenReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardFlattenReply create() => CardRewardFlattenReply._();
  CardRewardFlattenReply createEmptyInstance() => create();
  static $pb.PbList<CardRewardFlattenReply> createRepeated() => $pb.PbList<CardRewardFlattenReply>();
  @$core.pragma('dart2js:noInline')
  static CardRewardFlattenReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardFlattenReply>(create);
  static CardRewardFlattenReply? _defaultInstance;

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
  CardRewardFlatten get cardRewardFlatten => $_getN(1);
  @$pb.TagNumber(2)
  set cardRewardFlatten(CardRewardFlatten v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardRewardFlatten() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardRewardFlatten() => clearField(2);
  @$pb.TagNumber(2)
  CardRewardFlatten ensureCardRewardFlatten() => $_ensure(1);
}

class CardRewardFlatten extends $pb.GeneratedMessage {
  factory CardRewardFlatten() => create();
  CardRewardFlatten._() : super();
  factory CardRewardFlatten.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardFlatten.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardFlatten', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..pc<CardRewardChannelFlatten>(2, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: CardRewardChannelFlatten.create)
    ..aOM<CardRewardPayFlatten>(3, _omitFieldNames ? '' : 'pays', subBuilder: CardRewardPayFlatten.create)
    ..aOM<CardRewardTasksFlatten>(4, _omitFieldNames ? '' : 'tasks', subBuilder: CardRewardTasksFlatten.create)
    ..pc<CardRewardConstraintFlatten>(5, _omitFieldNames ? '' : 'constraints', $pb.PbFieldType.PM, subBuilder: CardRewardConstraintFlatten.create)
    ..aOM<CardRewardLabelFlatten>(6, _omitFieldNames ? '' : 'labels', subBuilder: CardRewardLabelFlatten.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardFlatten clone() => CardRewardFlatten()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardFlatten copyWith(void Function(CardRewardFlatten) updates) => super.copyWith((message) => updates(message as CardRewardFlatten)) as CardRewardFlatten;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardFlatten create() => CardRewardFlatten._();
  CardRewardFlatten createEmptyInstance() => create();
  static $pb.PbList<CardRewardFlatten> createRepeated() => $pb.PbList<CardRewardFlatten>();
  @$core.pragma('dart2js:noInline')
  static CardRewardFlatten getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardFlatten>(create);
  static CardRewardFlatten? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<CardRewardChannelFlatten> get channels => $_getList(1);

  @$pb.TagNumber(3)
  CardRewardPayFlatten get pays => $_getN(2);
  @$pb.TagNumber(3)
  set pays(CardRewardPayFlatten v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPays() => $_has(2);
  @$pb.TagNumber(3)
  void clearPays() => clearField(3);
  @$pb.TagNumber(3)
  CardRewardPayFlatten ensurePays() => $_ensure(2);

  @$pb.TagNumber(4)
  CardRewardTasksFlatten get tasks => $_getN(3);
  @$pb.TagNumber(4)
  set tasks(CardRewardTasksFlatten v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTasks() => $_has(3);
  @$pb.TagNumber(4)
  void clearTasks() => clearField(4);
  @$pb.TagNumber(4)
  CardRewardTasksFlatten ensureTasks() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<CardRewardConstraintFlatten> get constraints => $_getList(4);

  @$pb.TagNumber(6)
  CardRewardLabelFlatten get labels => $_getN(5);
  @$pb.TagNumber(6)
  set labels(CardRewardLabelFlatten v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLabels() => $_has(5);
  @$pb.TagNumber(6)
  void clearLabels() => clearField(6);
  @$pb.TagNumber(6)
  CardRewardLabelFlatten ensureLabels() => $_ensure(5);
}

class CardRewardLabelFlatten extends $pb.GeneratedMessage {
  factory CardRewardLabelFlatten() => create();
  CardRewardLabelFlatten._() : super();
  factory CardRewardLabelFlatten.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardLabelFlatten.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardLabelFlatten', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..pc<LabelProto>(1, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: LabelProto.create)
    ..pc<LabelProto>(2, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: LabelProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardLabelFlatten clone() => CardRewardLabelFlatten()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardLabelFlatten copyWith(void Function(CardRewardLabelFlatten) updates) => super.copyWith((message) => updates(message as CardRewardLabelFlatten)) as CardRewardLabelFlatten;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardLabelFlatten create() => CardRewardLabelFlatten._();
  CardRewardLabelFlatten createEmptyInstance() => create();
  static $pb.PbList<CardRewardLabelFlatten> createRepeated() => $pb.PbList<CardRewardLabelFlatten>();
  @$core.pragma('dart2js:noInline')
  static CardRewardLabelFlatten getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardLabelFlatten>(create);
  static CardRewardLabelFlatten? _defaultInstance;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabelProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
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
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class CardRewardConstraintFlatten extends $pb.GeneratedMessage {
  factory CardRewardConstraintFlatten() => create();
  CardRewardConstraintFlatten._() : super();
  factory CardRewardConstraintFlatten.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardConstraintFlatten.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardConstraintFlatten', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'constraintType', $pb.PbFieldType.O3, protoName: 'constraintType')
    ..p<$core.int>(2, _omitFieldNames ? '' : 'weekDays', $pb.PbFieldType.K3, protoName: 'weekDays')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardConstraintFlatten clone() => CardRewardConstraintFlatten()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardConstraintFlatten copyWith(void Function(CardRewardConstraintFlatten) updates) => super.copyWith((message) => updates(message as CardRewardConstraintFlatten)) as CardRewardConstraintFlatten;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardConstraintFlatten create() => CardRewardConstraintFlatten._();
  CardRewardConstraintFlatten createEmptyInstance() => create();
  static $pb.PbList<CardRewardConstraintFlatten> createRepeated() => $pb.PbList<CardRewardConstraintFlatten>();
  @$core.pragma('dart2js:noInline')
  static CardRewardConstraintFlatten getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardConstraintFlatten>(create);
  static CardRewardConstraintFlatten? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get constraintType => $_getIZ(0);
  @$pb.TagNumber(1)
  set constraintType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConstraintType() => $_has(0);
  @$pb.TagNumber(1)
  void clearConstraintType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get weekDays => $_getList(1);
}

class CardRewardTasksFlatten extends $pb.GeneratedMessage {
  factory CardRewardTasksFlatten() => create();
  CardRewardTasksFlatten._() : super();
  factory CardRewardTasksFlatten.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardTasksFlatten.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardTasksFlatten', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..pc<TaskProto>(2, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: TaskProto.create)
    ..pc<TaskProto>(3, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: TaskProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardTasksFlatten clone() => CardRewardTasksFlatten()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardTasksFlatten copyWith(void Function(CardRewardTasksFlatten) updates) => super.copyWith((message) => updates(message as CardRewardTasksFlatten)) as CardRewardTasksFlatten;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardTasksFlatten create() => CardRewardTasksFlatten._();
  CardRewardTasksFlatten createEmptyInstance() => create();
  static $pb.PbList<CardRewardTasksFlatten> createRepeated() => $pb.PbList<CardRewardTasksFlatten>();
  @$core.pragma('dart2js:noInline')
  static CardRewardTasksFlatten getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardTasksFlatten>(create);
  static CardRewardTasksFlatten? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<TaskProto> get matches => $_getList(0);

  @$pb.TagNumber(3)
  $core.List<TaskProto> get misMatches => $_getList(1);
}

class TaskProto extends $pb.GeneratedMessage {
  factory TaskProto() => create();
  TaskProto._() : super();
  factory TaskProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<DescriptionProto>(3, _omitFieldNames ? '' : 'descriptions', $pb.PbFieldType.PM, subBuilder: DescriptionProto.create)
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
  $core.List<DescriptionProto> get descriptions => $_getList(2);

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

class DescriptionProto extends $pb.GeneratedMessage {
  factory DescriptionProto() => create();
  DescriptionProto._() : super();
  factory DescriptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DescriptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DescriptionProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(2, _omitFieldNames ? '' : 'desc')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DescriptionProto clone() => DescriptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DescriptionProto copyWith(void Function(DescriptionProto) updates) => super.copyWith((message) => updates(message as DescriptionProto)) as DescriptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescriptionProto create() => DescriptionProto._();
  DescriptionProto createEmptyInstance() => create();
  static $pb.PbList<DescriptionProto> createRepeated() => $pb.PbList<DescriptionProto>();
  @$core.pragma('dart2js:noInline')
  static DescriptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DescriptionProto>(create);
  static DescriptionProto? _defaultInstance;

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

class CardRewardPayFlatten extends $pb.GeneratedMessage {
  factory CardRewardPayFlatten() => create();
  CardRewardPayFlatten._() : super();
  factory CardRewardPayFlatten.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardPayFlatten.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardPayFlatten', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..pc<PayProto>(1, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: PayProto.create)
    ..pc<PayProto>(2, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: PayProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardPayFlatten clone() => CardRewardPayFlatten()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardPayFlatten copyWith(void Function(CardRewardPayFlatten) updates) => super.copyWith((message) => updates(message as CardRewardPayFlatten)) as CardRewardPayFlatten;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardPayFlatten create() => CardRewardPayFlatten._();
  CardRewardPayFlatten createEmptyInstance() => create();
  static $pb.PbList<CardRewardPayFlatten> createRepeated() => $pb.PbList<CardRewardPayFlatten>();
  @$core.pragma('dart2js:noInline')
  static CardRewardPayFlatten getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardPayFlatten>(create);
  static CardRewardPayFlatten? _defaultInstance;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'linkURL', protoName: 'linkURL')
    ..pPS(5, _omitFieldNames ? '' : 'descriptions')
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

class CardRewardChannelFlatten extends $pb.GeneratedMessage {
  factory CardRewardChannelFlatten() => create();
  CardRewardChannelFlatten._() : super();
  factory CardRewardChannelFlatten.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardChannelFlatten.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardChannelFlatten', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'ChannelCategoryType', $pb.PbFieldType.O3, protoName: 'ChannelCategoryType')
    ..pc<ChannelProto>(2, _omitFieldNames ? '' : 'matches', $pb.PbFieldType.PM, subBuilder: ChannelProto.create)
    ..pc<ChannelProto>(3, _omitFieldNames ? '' : 'misMatches', $pb.PbFieldType.PM, protoName: 'misMatches', subBuilder: ChannelProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardChannelFlatten clone() => CardRewardChannelFlatten()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardChannelFlatten copyWith(void Function(CardRewardChannelFlatten) updates) => super.copyWith((message) => updates(message as CardRewardChannelFlatten)) as CardRewardChannelFlatten;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardChannelFlatten create() => CardRewardChannelFlatten._();
  CardRewardChannelFlatten createEmptyInstance() => create();
  static $pb.PbList<CardRewardChannelFlatten> createRepeated() => $pb.PbList<CardRewardChannelFlatten>();
  @$core.pragma('dart2js:noInline')
  static CardRewardChannelFlatten getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardChannelFlatten>(create);
  static CardRewardChannelFlatten? _defaultInstance;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelLabelProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
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

class EmptyRequest extends $pb.GeneratedMessage {
  factory EmptyRequest() => create();
  EmptyRequest._() : super();
  factory EmptyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

class BankIDProto extends $pb.GeneratedMessage {
  factory BankIDProto() => create();
  BankIDProto._() : super();
  factory BankIDProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankIDProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BankIDProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankIDProto clone() => BankIDProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankIDProto copyWith(void Function(BankIDProto) updates) => super.copyWith((message) => updates(message as BankIDProto)) as BankIDProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BankIDProto create() => BankIDProto._();
  BankIDProto createEmptyInstance() => create();
  static $pb.PbList<BankIDProto> createRepeated() => $pb.PbList<BankIDProto>();
  @$core.pragma('dart2js:noInline')
  static BankIDProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankIDProto>(create);
  static BankIDProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CardProto extends $pb.GeneratedMessage {
  factory CardProto() => create();
  CardProto._() : super();
  factory CardProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'descriptions')
    ..aOS(4, _omitFieldNames ? '' : 'image')
    ..aInt64(5, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(6, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..aOS(7, _omitFieldNames ? '' : 'linkURL', protoName: 'linkURL')
    ..aOS(8, _omitFieldNames ? '' : 'bankID', protoName: 'bankID')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'cardStatus', $pb.PbFieldType.O3, protoName: 'cardStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardProto clone() => CardProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardProto copyWith(void Function(CardProto) updates) => super.copyWith((message) => updates(message as CardProto)) as CardProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardProto create() => CardProto._();
  CardProto createEmptyInstance() => create();
  static $pb.PbList<CardProto> createRepeated() => $pb.PbList<CardProto>();
  @$core.pragma('dart2js:noInline')
  static CardProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardProto>(create);
  static CardProto? _defaultInstance;

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
  $core.List<$core.String> get descriptions => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get image => $_getSZ(3);
  @$pb.TagNumber(4)
  set image($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearImage() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createDate => $_getI64(4);
  @$pb.TagNumber(5)
  set createDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreateDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreateDate() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get updateDate => $_getI64(5);
  @$pb.TagNumber(6)
  set updateDate($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get linkURL => $_getSZ(6);
  @$pb.TagNumber(7)
  set linkURL($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLinkURL() => $_has(6);
  @$pb.TagNumber(7)
  void clearLinkURL() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get bankID => $_getSZ(7);
  @$pb.TagNumber(8)
  set bankID($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBankID() => $_has(7);
  @$pb.TagNumber(8)
  void clearBankID() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get order => $_getIZ(8);
  @$pb.TagNumber(9)
  set order($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasOrder() => $_has(8);
  @$pb.TagNumber(9)
  void clearOrder() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get cardStatus => $_getIZ(9);
  @$pb.TagNumber(10)
  set cardStatus($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCardStatus() => $_has(9);
  @$pb.TagNumber(10)
  void clearCardStatus() => clearField(10);
}

class CardsProtoReply extends $pb.GeneratedMessage {
  factory CardsProtoReply() => create();
  CardsProtoReply._() : super();
  factory CardsProtoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardsProtoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardsProtoReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<CardProto>(2, _omitFieldNames ? '' : 'cards', $pb.PbFieldType.PM, subBuilder: CardProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardsProtoReply clone() => CardsProtoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardsProtoReply copyWith(void Function(CardsProtoReply) updates) => super.copyWith((message) => updates(message as CardsProtoReply)) as CardsProtoReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardsProtoReply create() => CardsProtoReply._();
  CardsProtoReply createEmptyInstance() => create();
  static $pb.PbList<CardsProtoReply> createRepeated() => $pb.PbList<CardsProtoReply>();
  @$core.pragma('dart2js:noInline')
  static CardsProtoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardsProtoReply>(create);
  static CardsProtoReply? _defaultInstance;

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
  $core.List<CardProto> get cards => $_getList(1);
}

class BanksProtoReply extends $pb.GeneratedMessage {
  factory BanksProtoReply() => create();
  BanksProtoReply._() : super();
  factory BanksProtoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanksProtoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanksProtoReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<BankProto>(2, _omitFieldNames ? '' : 'banks', $pb.PbFieldType.PM, subBuilder: BankProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BanksProtoReply clone() => BanksProtoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BanksProtoReply copyWith(void Function(BanksProtoReply) updates) => super.copyWith((message) => updates(message as BanksProtoReply)) as BanksProtoReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BanksProtoReply create() => BanksProtoReply._();
  BanksProtoReply createEmptyInstance() => create();
  static $pb.PbList<BanksProtoReply> createRepeated() => $pb.PbList<BanksProtoReply>();
  @$core.pragma('dart2js:noInline')
  static BanksProtoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanksProtoReply>(create);
  static BanksProtoReply? _defaultInstance;

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
  $core.List<BankProto> get banks => $_getList(1);
}

class BankProto extends $pb.GeneratedMessage {
  factory BankProto() => create();
  BankProto._() : super();
  factory BankProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BankProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankProto clone() => BankProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankProto copyWith(void Function(BankProto) updates) => super.copyWith((message) => updates(message as BankProto)) as BankProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BankProto create() => BankProto._();
  BankProto createEmptyInstance() => create();
  static $pb.PbList<BankProto> createRepeated() => $pb.PbList<BankProto>();
  @$core.pragma('dart2js:noInline')
  static BankProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankProto>(create);
  static BankProto? _defaultInstance;

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
  $core.int get order => $_getIZ(3);
  @$pb.TagNumber(4)
  set order($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrder() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrder() => clearField(4);
}

class Reply extends $pb.GeneratedMessage {
  factory Reply() => create();
  Reply._() : super();
  factory Reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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
