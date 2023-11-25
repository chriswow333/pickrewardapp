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

class Reply extends $pb.GeneratedMessage {
  factory Reply() => create();
  Reply._() : super();
  factory Reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
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

class AllBanksReq extends $pb.GeneratedMessage {
  factory AllBanksReq() => create();
  AllBanksReq._() : super();
  factory AllBanksReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllBanksReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllBanksReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllBanksReq clone() => AllBanksReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllBanksReq copyWith(void Function(AllBanksReq) updates) => super.copyWith((message) => updates(message as AllBanksReq)) as AllBanksReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllBanksReq create() => AllBanksReq._();
  AllBanksReq createEmptyInstance() => create();
  static $pb.PbList<AllBanksReq> createRepeated() => $pb.PbList<AllBanksReq>();
  @$core.pragma('dart2js:noInline')
  static AllBanksReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllBanksReq>(create);
  static AllBanksReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get offset => $_getIZ(1);
  @$pb.TagNumber(2)
  set offset($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);
}

class BanksReply_Bank extends $pb.GeneratedMessage {
  factory BanksReply_Bank() => create();
  BanksReply_Bank._() : super();
  factory BanksReply_Bank.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanksReply_Bank.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanksReply.Bank', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'bankStatus', $pb.PbFieldType.O3, protoName: 'bankStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BanksReply_Bank clone() => BanksReply_Bank()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BanksReply_Bank copyWith(void Function(BanksReply_Bank) updates) => super.copyWith((message) => updates(message as BanksReply_Bank)) as BanksReply_Bank;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BanksReply_Bank create() => BanksReply_Bank._();
  BanksReply_Bank createEmptyInstance() => create();
  static $pb.PbList<BanksReply_Bank> createRepeated() => $pb.PbList<BanksReply_Bank>();
  @$core.pragma('dart2js:noInline')
  static BanksReply_Bank getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanksReply_Bank>(create);
  static BanksReply_Bank? _defaultInstance;

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

  @$pb.TagNumber(5)
  $core.int get bankStatus => $_getIZ(4);
  @$pb.TagNumber(5)
  set bankStatus($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBankStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearBankStatus() => clearField(5);
}

class BanksReply extends $pb.GeneratedMessage {
  factory BanksReply() => create();
  BanksReply._() : super();
  factory BanksReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanksReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanksReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<BanksReply_Bank>(2, _omitFieldNames ? '' : 'banks', $pb.PbFieldType.PM, subBuilder: BanksReply_Bank.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BanksReply clone() => BanksReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BanksReply copyWith(void Function(BanksReply) updates) => super.copyWith((message) => updates(message as BanksReply)) as BanksReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BanksReply create() => BanksReply._();
  BanksReply createEmptyInstance() => create();
  static $pb.PbList<BanksReply> createRepeated() => $pb.PbList<BanksReply>();
  @$core.pragma('dart2js:noInline')
  static BanksReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanksReply>(create);
  static BanksReply? _defaultInstance;

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
  $core.List<BanksReply_Bank> get banks => $_getList(1);
}

class CardsByBankIDReq extends $pb.GeneratedMessage {
  factory CardsByBankIDReq() => create();
  CardsByBankIDReq._() : super();
  factory CardsByBankIDReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardsByBankIDReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardsByBankIDReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardsByBankIDReq clone() => CardsByBankIDReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardsByBankIDReq copyWith(void Function(CardsByBankIDReq) updates) => super.copyWith((message) => updates(message as CardsByBankIDReq)) as CardsByBankIDReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardsByBankIDReq create() => CardsByBankIDReq._();
  CardsByBankIDReq createEmptyInstance() => create();
  static $pb.PbList<CardsByBankIDReq> createRepeated() => $pb.PbList<CardsByBankIDReq>();
  @$core.pragma('dart2js:noInline')
  static CardsByBankIDReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardsByBankIDReq>(create);
  static CardsByBankIDReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get offset => $_getIZ(2);
  @$pb.TagNumber(3)
  set offset($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => clearField(3);
}

class CardsReply_Card extends $pb.GeneratedMessage {
  factory CardsReply_Card() => create();
  CardsReply_Card._() : super();
  factory CardsReply_Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardsReply_Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardsReply.Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
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
  CardsReply_Card clone() => CardsReply_Card()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardsReply_Card copyWith(void Function(CardsReply_Card) updates) => super.copyWith((message) => updates(message as CardsReply_Card)) as CardsReply_Card;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardsReply_Card create() => CardsReply_Card._();
  CardsReply_Card createEmptyInstance() => create();
  static $pb.PbList<CardsReply_Card> createRepeated() => $pb.PbList<CardsReply_Card>();
  @$core.pragma('dart2js:noInline')
  static CardsReply_Card getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardsReply_Card>(create);
  static CardsReply_Card? _defaultInstance;

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

class CardsReply extends $pb.GeneratedMessage {
  factory CardsReply() => create();
  CardsReply._() : super();
  factory CardsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<CardsReply_Card>(2, _omitFieldNames ? '' : 'cards', $pb.PbFieldType.PM, subBuilder: CardsReply_Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardsReply clone() => CardsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardsReply copyWith(void Function(CardsReply) updates) => super.copyWith((message) => updates(message as CardsReply)) as CardsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardsReply create() => CardsReply._();
  CardsReply createEmptyInstance() => create();
  static $pb.PbList<CardsReply> createRepeated() => $pb.PbList<CardsReply>();
  @$core.pragma('dart2js:noInline')
  static CardsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardsReply>(create);
  static CardsReply? _defaultInstance;

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
  $core.List<CardsReply_Card> get cards => $_getList(1);
}

class CardRewardsByCardIDReq extends $pb.GeneratedMessage {
  factory CardRewardsByCardIDReq() => create();
  CardRewardsByCardIDReq._() : super();
  factory CardRewardsByCardIDReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsByCardIDReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsByCardIDReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardID', protoName: 'cardID')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardsByCardIDReq clone() => CardRewardsByCardIDReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardsByCardIDReq copyWith(void Function(CardRewardsByCardIDReq) updates) => super.copyWith((message) => updates(message as CardRewardsByCardIDReq)) as CardRewardsByCardIDReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardsByCardIDReq create() => CardRewardsByCardIDReq._();
  CardRewardsByCardIDReq createEmptyInstance() => create();
  static $pb.PbList<CardRewardsByCardIDReq> createRepeated() => $pb.PbList<CardRewardsByCardIDReq>();
  @$core.pragma('dart2js:noInline')
  static CardRewardsByCardIDReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardsByCardIDReq>(create);
  static CardRewardsByCardIDReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardID => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardID() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardID() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get offset => $_getIZ(2);
  @$pb.TagNumber(3)
  set offset($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => clearField(3);
}

class CardRewardsReply_Reward extends $pb.GeneratedMessage {
  factory CardRewardsReply_Reward() => create();
  CardRewardsReply_Reward._() : super();
  factory CardRewardsReply_Reward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsReply_Reward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.Reward', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
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
  CardRewardsReply_Reward clone() => CardRewardsReply_Reward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardsReply_Reward copyWith(void Function(CardRewardsReply_Reward) updates) => super.copyWith((message) => updates(message as CardRewardsReply_Reward)) as CardRewardsReply_Reward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_Reward create() => CardRewardsReply_Reward._();
  CardRewardsReply_Reward createEmptyInstance() => create();
  static $pb.PbList<CardRewardsReply_Reward> createRepeated() => $pb.PbList<CardRewardsReply_Reward>();
  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_Reward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardsReply_Reward>(create);
  static CardRewardsReply_Reward? _defaultInstance;

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

class CardRewardsReply_Description extends $pb.GeneratedMessage {
  factory CardRewardsReply_Description() => create();
  CardRewardsReply_Description._() : super();
  factory CardRewardsReply_Description.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsReply_Description.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.Description', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
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

class CardRewardsReply_Task extends $pb.GeneratedMessage {
  factory CardRewardsReply_Task() => create();
  CardRewardsReply_Task._() : super();
  factory CardRewardsReply_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsReply_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'shortName', protoName: 'shortName')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..pc<CardRewardsReply_Description>(4, _omitFieldNames ? '' : 'descriptions', $pb.PbFieldType.PM, subBuilder: CardRewardsReply_Description.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardsReply_Task clone() => CardRewardsReply_Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardsReply_Task copyWith(void Function(CardRewardsReply_Task) updates) => super.copyWith((message) => updates(message as CardRewardsReply_Task)) as CardRewardsReply_Task;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_Task create() => CardRewardsReply_Task._();
  CardRewardsReply_Task createEmptyInstance() => create();
  static $pb.PbList<CardRewardsReply_Task> createRepeated() => $pb.PbList<CardRewardsReply_Task>();
  @$core.pragma('dart2js:noInline')
  static CardRewardsReply_Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardsReply_Task>(create);
  static CardRewardsReply_Task? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get shortName => $_getSZ(1);
  @$pb.TagNumber(2)
  set shortName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShortName() => $_has(1);
  @$pb.TagNumber(2)
  void clearShortName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<CardRewardsReply_Description> get descriptions => $_getList(3);
}

class CardRewardsReply_CardReward extends $pb.GeneratedMessage {
  factory CardRewardsReply_CardReward() => create();
  CardRewardsReply_CardReward._() : super();
  factory CardRewardsReply_CardReward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsReply_CardReward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.CardReward', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'cardID', protoName: 'cardID')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..pc<CardRewardsReply_Description>(4, _omitFieldNames ? '' : 'descriptions', $pb.PbFieldType.PM, subBuilder: CardRewardsReply_Description.create)
    ..aInt64(5, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(6, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..aInt64(7, _omitFieldNames ? '' : 'startDate', protoName: 'startDate')
    ..aInt64(8, _omitFieldNames ? '' : 'endDate', protoName: 'endDate')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'cardRewardType', $pb.PbFieldType.O3, protoName: 'cardRewardType')
    ..aOM<CardRewardsReply_Reward>(10, _omitFieldNames ? '' : 'reward', subBuilder: CardRewardsReply_Reward.create)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..pc<CardRewardsReply_Task>(12, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: CardRewardsReply_Task.create)
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
  CardRewardsReply_Reward get reward => $_getN(9);
  @$pb.TagNumber(10)
  set reward(CardRewardsReply_Reward v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasReward() => $_has(9);
  @$pb.TagNumber(10)
  void clearReward() => clearField(10);
  @$pb.TagNumber(10)
  CardRewardsReply_Reward ensureReward() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.int get order => $_getIZ(10);
  @$pb.TagNumber(11)
  set order($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOrder() => $_has(10);
  @$pb.TagNumber(11)
  void clearOrder() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<CardRewardsReply_Task> get tasks => $_getList(11);
}

class CardRewardsReply extends $pb.GeneratedMessage {
  factory CardRewardsReply() => create();
  CardRewardsReply._() : super();
  factory CardRewardsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
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

class EventReq_ChannelIDEvent extends $pb.GeneratedMessage {
  factory EventReq_ChannelIDEvent() => create();
  EventReq_ChannelIDEvent._() : super();
  factory EventReq_ChannelIDEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventReq_ChannelIDEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventReq.ChannelIDEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'channelID', protoName: 'channelID')
    ..p<$core.int>(2, _omitFieldNames ? '' : 'channelLabels', $pb.PbFieldType.K3, protoName: 'channelLabels')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventReq_ChannelIDEvent clone() => EventReq_ChannelIDEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventReq_ChannelIDEvent copyWith(void Function(EventReq_ChannelIDEvent) updates) => super.copyWith((message) => updates(message as EventReq_ChannelIDEvent)) as EventReq_ChannelIDEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventReq_ChannelIDEvent create() => EventReq_ChannelIDEvent._();
  EventReq_ChannelIDEvent createEmptyInstance() => create();
  static $pb.PbList<EventReq_ChannelIDEvent> createRepeated() => $pb.PbList<EventReq_ChannelIDEvent>();
  @$core.pragma('dart2js:noInline')
  static EventReq_ChannelIDEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventReq_ChannelIDEvent>(create);
  static EventReq_ChannelIDEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get channelID => $_getSZ(0);
  @$pb.TagNumber(1)
  set channelID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelID() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get channelLabels => $_getList(1);
}

class EventReq_ChannelEvent extends $pb.GeneratedMessage {
  factory EventReq_ChannelEvent() => create();
  EventReq_ChannelEvent._() : super();
  factory EventReq_ChannelEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventReq_ChannelEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventReq.ChannelEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..pc<EventReq_ChannelIDEvent>(1, _omitFieldNames ? '' : 'channelIDEvent', $pb.PbFieldType.PM, protoName: 'channelIDEvent', subBuilder: EventReq_ChannelIDEvent.create)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'channelLabels', $pb.PbFieldType.K3, protoName: 'channelLabels')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventReq_ChannelEvent clone() => EventReq_ChannelEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventReq_ChannelEvent copyWith(void Function(EventReq_ChannelEvent) updates) => super.copyWith((message) => updates(message as EventReq_ChannelEvent)) as EventReq_ChannelEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventReq_ChannelEvent create() => EventReq_ChannelEvent._();
  EventReq_ChannelEvent createEmptyInstance() => create();
  static $pb.PbList<EventReq_ChannelEvent> createRepeated() => $pb.PbList<EventReq_ChannelEvent>();
  @$core.pragma('dart2js:noInline')
  static EventReq_ChannelEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventReq_ChannelEvent>(create);
  static EventReq_ChannelEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<EventReq_ChannelIDEvent> get channelIDEvent => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get channelLabels => $_getList(1);
}

class EventReq_CardEvent extends $pb.GeneratedMessage {
  factory EventReq_CardEvent() => create();
  EventReq_CardEvent._() : super();
  factory EventReq_CardEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventReq_CardEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventReq.CardEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'rewardType', $pb.PbFieldType.O3, protoName: 'rewardType')
    ..p<$core.int>(2, _omitFieldNames ? '' : 'taskLabels', $pb.PbFieldType.K3, protoName: 'taskLabels')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventReq_CardEvent clone() => EventReq_CardEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventReq_CardEvent copyWith(void Function(EventReq_CardEvent) updates) => super.copyWith((message) => updates(message as EventReq_CardEvent)) as EventReq_CardEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventReq_CardEvent create() => EventReq_CardEvent._();
  EventReq_CardEvent createEmptyInstance() => create();
  static $pb.PbList<EventReq_CardEvent> createRepeated() => $pb.PbList<EventReq_CardEvent>();
  @$core.pragma('dart2js:noInline')
  static EventReq_CardEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventReq_CardEvent>(create);
  static EventReq_CardEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rewardType => $_getIZ(0);
  @$pb.TagNumber(1)
  set rewardType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRewardType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRewardType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get taskLabels => $_getList(1);
}

class EventReq_PayEvent extends $pb.GeneratedMessage {
  factory EventReq_PayEvent() => create();
  EventReq_PayEvent._() : super();
  factory EventReq_PayEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventReq_PayEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventReq.PayEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..pPS(2, _omitFieldNames ? '' : 'payIDs', protoName: 'payIDs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventReq_PayEvent clone() => EventReq_PayEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventReq_PayEvent copyWith(void Function(EventReq_PayEvent) updates) => super.copyWith((message) => updates(message as EventReq_PayEvent)) as EventReq_PayEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventReq_PayEvent create() => EventReq_PayEvent._();
  EventReq_PayEvent createEmptyInstance() => create();
  static $pb.PbList<EventReq_PayEvent> createRepeated() => $pb.PbList<EventReq_PayEvent>();
  @$core.pragma('dart2js:noInline')
  static EventReq_PayEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventReq_PayEvent>(create);
  static EventReq_PayEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get payIDs => $_getList(1);
}

class EventReq extends $pb.GeneratedMessage {
  factory EventReq() => create();
  EventReq._() : super();
  factory EventReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'date')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'cost', $pb.PbFieldType.O3)
    ..aOM<EventReq_ChannelEvent>(3, _omitFieldNames ? '' : 'channelEvent', protoName: 'channelEvent', subBuilder: EventReq_ChannelEvent.create)
    ..aOM<EventReq_PayEvent>(4, _omitFieldNames ? '' : 'payEvent', protoName: 'payEvent', subBuilder: EventReq_PayEvent.create)
    ..aOM<EventReq_CardEvent>(5, _omitFieldNames ? '' : 'cardEvent', protoName: 'cardEvent', subBuilder: EventReq_CardEvent.create)
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
  $fixnum.Int64 get date => $_getI64(0);
  @$pb.TagNumber(1)
  set date($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get cost => $_getIZ(1);
  @$pb.TagNumber(2)
  set cost($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCost() => $_has(1);
  @$pb.TagNumber(2)
  void clearCost() => clearField(2);

  @$pb.TagNumber(3)
  EventReq_ChannelEvent get channelEvent => $_getN(2);
  @$pb.TagNumber(3)
  set channelEvent(EventReq_ChannelEvent v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannelEvent() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannelEvent() => clearField(3);
  @$pb.TagNumber(3)
  EventReq_ChannelEvent ensureChannelEvent() => $_ensure(2);

  @$pb.TagNumber(4)
  EventReq_PayEvent get payEvent => $_getN(3);
  @$pb.TagNumber(4)
  set payEvent(EventReq_PayEvent v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayEvent() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayEvent() => clearField(4);
  @$pb.TagNumber(4)
  EventReq_PayEvent ensurePayEvent() => $_ensure(3);

  @$pb.TagNumber(5)
  EventReq_CardEvent get cardEvent => $_getN(4);
  @$pb.TagNumber(5)
  set cardEvent(EventReq_CardEvent v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCardEvent() => $_has(4);
  @$pb.TagNumber(5)
  void clearCardEvent() => clearField(5);
  @$pb.TagNumber(5)
  EventReq_CardEvent ensureCardEvent() => $_ensure(4);
}

class EvaluateCardsReply_CardRewardEventResultResp extends $pb.GeneratedMessage {
  factory EvaluateCardsReply_CardRewardEventResultResp() => create();
  EvaluateCardsReply_CardRewardEventResultResp._() : super();
  factory EvaluateCardsReply_CardRewardEventResultResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluateCardsReply_CardRewardEventResultResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluateCardsReply.CardRewardEventResultResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'cardRewardName', protoName: 'cardRewardName')
    ..aInt64(3, _omitFieldNames ? '' : 'cardRewardStartDate', protoName: 'cardRewardStartDate')
    ..aInt64(4, _omitFieldNames ? '' : 'cardRewardEndDate', protoName: 'cardRewardEndDate')
    ..pPS(5, _omitFieldNames ? '' : 'taskLabelNames', protoName: 'taskLabelNames')
    ..aOS(6, _omitFieldNames ? '' : 'rewardTypeName', protoName: 'rewardTypeName')
    ..aOM<EvaluationEventResultResp>(7, _omitFieldNames ? '' : 'evaluationEventResultResp', protoName: 'evaluationEventResultResp', subBuilder: EvaluationEventResultResp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluateCardsReply_CardRewardEventResultResp clone() => EvaluateCardsReply_CardRewardEventResultResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluateCardsReply_CardRewardEventResultResp copyWith(void Function(EvaluateCardsReply_CardRewardEventResultResp) updates) => super.copyWith((message) => updates(message as EvaluateCardsReply_CardRewardEventResultResp)) as EvaluateCardsReply_CardRewardEventResultResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluateCardsReply_CardRewardEventResultResp create() => EvaluateCardsReply_CardRewardEventResultResp._();
  EvaluateCardsReply_CardRewardEventResultResp createEmptyInstance() => create();
  static $pb.PbList<EvaluateCardsReply_CardRewardEventResultResp> createRepeated() => $pb.PbList<EvaluateCardsReply_CardRewardEventResultResp>();
  @$core.pragma('dart2js:noInline')
  static EvaluateCardsReply_CardRewardEventResultResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluateCardsReply_CardRewardEventResultResp>(create);
  static EvaluateCardsReply_CardRewardEventResultResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardRewardName => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardRewardName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardRewardName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardRewardName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get cardRewardStartDate => $_getI64(2);
  @$pb.TagNumber(3)
  set cardRewardStartDate($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCardRewardStartDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardRewardStartDate() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get cardRewardEndDate => $_getI64(3);
  @$pb.TagNumber(4)
  set cardRewardEndDate($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCardRewardEndDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearCardRewardEndDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get taskLabelNames => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get rewardTypeName => $_getSZ(5);
  @$pb.TagNumber(6)
  set rewardTypeName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRewardTypeName() => $_has(5);
  @$pb.TagNumber(6)
  void clearRewardTypeName() => clearField(6);

  @$pb.TagNumber(7)
  EvaluationEventResultResp get evaluationEventResultResp => $_getN(6);
  @$pb.TagNumber(7)
  set evaluationEventResultResp(EvaluationEventResultResp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasEvaluationEventResultResp() => $_has(6);
  @$pb.TagNumber(7)
  void clearEvaluationEventResultResp() => clearField(7);
  @$pb.TagNumber(7)
  EvaluationEventResultResp ensureEvaluationEventResultResp() => $_ensure(6);
}

class EvaluateCardsReply_CardEventResultResp extends $pb.GeneratedMessage {
  factory EvaluateCardsReply_CardEventResultResp() => create();
  EvaluateCardsReply_CardEventResultResp._() : super();
  factory EvaluateCardsReply_CardEventResultResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluateCardsReply_CardEventResultResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluateCardsReply.CardEventResultResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardID', protoName: 'cardID')
    ..aOS(2, _omitFieldNames ? '' : 'cardName', protoName: 'cardName')
    ..aOS(3, _omitFieldNames ? '' : 'cardImage', protoName: 'cardImage')
    ..pPS(4, _omitFieldNames ? '' : 'cardDesc', protoName: 'cardDesc')
    ..aInt64(5, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..aOS(6, _omitFieldNames ? '' : 'linkURL', protoName: 'linkURL')
    ..aOS(7, _omitFieldNames ? '' : 'bankID', protoName: 'bankID')
    ..aOS(8, _omitFieldNames ? '' : 'bankName', protoName: 'bankName')
    ..pc<EvaluateCardsReply_CardRewardEventResultResp>(9, _omitFieldNames ? '' : 'cardRewardEventResultResps', $pb.PbFieldType.PM, protoName: 'cardRewardEventResultResps', subBuilder: EvaluateCardsReply_CardRewardEventResultResp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluateCardsReply_CardEventResultResp clone() => EvaluateCardsReply_CardEventResultResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluateCardsReply_CardEventResultResp copyWith(void Function(EvaluateCardsReply_CardEventResultResp) updates) => super.copyWith((message) => updates(message as EvaluateCardsReply_CardEventResultResp)) as EvaluateCardsReply_CardEventResultResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluateCardsReply_CardEventResultResp create() => EvaluateCardsReply_CardEventResultResp._();
  EvaluateCardsReply_CardEventResultResp createEmptyInstance() => create();
  static $pb.PbList<EvaluateCardsReply_CardEventResultResp> createRepeated() => $pb.PbList<EvaluateCardsReply_CardEventResultResp>();
  @$core.pragma('dart2js:noInline')
  static EvaluateCardsReply_CardEventResultResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluateCardsReply_CardEventResultResp>(create);
  static EvaluateCardsReply_CardEventResultResp? _defaultInstance;

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
  $core.List<$core.String> get cardDesc => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get updateDate => $_getI64(4);
  @$pb.TagNumber(5)
  set updateDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdateDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdateDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get linkURL => $_getSZ(5);
  @$pb.TagNumber(6)
  set linkURL($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLinkURL() => $_has(5);
  @$pb.TagNumber(6)
  void clearLinkURL() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get bankID => $_getSZ(6);
  @$pb.TagNumber(7)
  set bankID($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBankID() => $_has(6);
  @$pb.TagNumber(7)
  void clearBankID() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get bankName => $_getSZ(7);
  @$pb.TagNumber(8)
  set bankName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBankName() => $_has(7);
  @$pb.TagNumber(8)
  void clearBankName() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<EvaluateCardsReply_CardRewardEventResultResp> get cardRewardEventResultResps => $_getList(8);
}

class EvaluateCardsReply extends $pb.GeneratedMessage {
  factory EvaluateCardsReply() => create();
  EvaluateCardsReply._() : super();
  factory EvaluateCardsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluateCardsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluateCardsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<EvaluateCardsReply_CardEventResultResp>(2, _omitFieldNames ? '' : 'cardEventResults', $pb.PbFieldType.PM, protoName: 'cardEventResults', subBuilder: EvaluateCardsReply_CardEventResultResp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluateCardsReply clone() => EvaluateCardsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluateCardsReply copyWith(void Function(EvaluateCardsReply) updates) => super.copyWith((message) => updates(message as EvaluateCardsReply)) as EvaluateCardsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluateCardsReply create() => EvaluateCardsReply._();
  EvaluateCardsReply createEmptyInstance() => create();
  static $pb.PbList<EvaluateCardsReply> createRepeated() => $pb.PbList<EvaluateCardsReply>();
  @$core.pragma('dart2js:noInline')
  static EvaluateCardsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluateCardsReply>(create);
  static EvaluateCardsReply? _defaultInstance;

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
  $core.List<EvaluateCardsReply_CardEventResultResp> get cardEventResults => $_getList(1);
}

class EvaluationEventResultResp_FeedbackEventResultResp extends $pb.GeneratedMessage {
  factory EvaluationEventResultResp_FeedbackEventResultResp() => create();
  EvaluationEventResultResp_FeedbackEventResultResp._() : super();
  factory EvaluationEventResultResp_FeedbackEventResultResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationEventResultResp_FeedbackEventResultResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultResp.FeedbackEventResultResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
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
  EvaluationEventResultResp_FeedbackEventResultResp clone() => EvaluationEventResultResp_FeedbackEventResultResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationEventResultResp_FeedbackEventResultResp copyWith(void Function(EvaluationEventResultResp_FeedbackEventResultResp) updates) => super.copyWith((message) => updates(message as EvaluationEventResultResp_FeedbackEventResultResp)) as EvaluationEventResultResp_FeedbackEventResultResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultResp_FeedbackEventResultResp create() => EvaluationEventResultResp_FeedbackEventResultResp._();
  EvaluationEventResultResp_FeedbackEventResultResp createEmptyInstance() => create();
  static $pb.PbList<EvaluationEventResultResp_FeedbackEventResultResp> createRepeated() => $pb.PbList<EvaluationEventResultResp_FeedbackEventResultResp>();
  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultResp_FeedbackEventResultResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationEventResultResp_FeedbackEventResultResp>(create);
  static EvaluationEventResultResp_FeedbackEventResultResp? _defaultInstance;

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

class EvaluationEventResultResp extends $pb.GeneratedMessage {
  factory EvaluationEventResultResp() => create();
  EvaluationEventResultResp._() : super();
  factory EvaluationEventResultResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationEventResultResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<EvaluationEventResultResp_FeedbackEventResultResp>(2, _omitFieldNames ? '' : 'feedbackEventResultResp', protoName: 'feedbackEventResultResp', subBuilder: EvaluationEventResultResp_FeedbackEventResultResp.create)
    ..pPS(3, _omitFieldNames ? '' : 'cardRewardTaskLabelMatched', protoName: 'cardRewardTaskLabelMatched')
    ..pPS(4, _omitFieldNames ? '' : 'channelMatched', protoName: 'channelMatched')
    ..pPS(5, _omitFieldNames ? '' : 'channelLabelMatched', protoName: 'channelLabelMatched')
    ..pPS(6, _omitFieldNames ? '' : 'payMatched', protoName: 'payMatched')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluationEventResultResp clone() => EvaluationEventResultResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluationEventResultResp copyWith(void Function(EvaluationEventResultResp) updates) => super.copyWith((message) => updates(message as EvaluationEventResultResp)) as EvaluationEventResultResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultResp create() => EvaluationEventResultResp._();
  EvaluationEventResultResp createEmptyInstance() => create();
  static $pb.PbList<EvaluationEventResultResp> createRepeated() => $pb.PbList<EvaluationEventResultResp>();
  @$core.pragma('dart2js:noInline')
  static EvaluationEventResultResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluationEventResultResp>(create);
  static EvaluationEventResultResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  EvaluationEventResultResp_FeedbackEventResultResp get feedbackEventResultResp => $_getN(1);
  @$pb.TagNumber(2)
  set feedbackEventResultResp(EvaluationEventResultResp_FeedbackEventResultResp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFeedbackEventResultResp() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeedbackEventResultResp() => clearField(2);
  @$pb.TagNumber(2)
  EvaluationEventResultResp_FeedbackEventResultResp ensureFeedbackEventResultResp() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get cardRewardTaskLabelMatched => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get channelMatched => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get channelLabelMatched => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get payMatched => $_getList(5);
}

class SearchCardReq extends $pb.GeneratedMessage {
  factory SearchCardReq() => create();
  SearchCardReq._() : super();
  factory SearchCardReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchCardReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchCardReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchCardReq clone() => SearchCardReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchCardReq copyWith(void Function(SearchCardReq) updates) => super.copyWith((message) => updates(message as SearchCardReq)) as SearchCardReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchCardReq create() => SearchCardReq._();
  SearchCardReq createEmptyInstance() => create();
  static $pb.PbList<SearchCardReq> createRepeated() => $pb.PbList<SearchCardReq>();
  @$core.pragma('dart2js:noInline')
  static SearchCardReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchCardReq>(create);
  static SearchCardReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyword => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyword() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyword() => clearField(1);
}

class SearchCardReply_Card extends $pb.GeneratedMessage {
  factory SearchCardReply_Card() => create();
  SearchCardReply_Card._() : super();
  factory SearchCardReply_Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchCardReply_Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchCardReply.Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
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
  SearchCardReply_Card clone() => SearchCardReply_Card()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchCardReply_Card copyWith(void Function(SearchCardReply_Card) updates) => super.copyWith((message) => updates(message as SearchCardReply_Card)) as SearchCardReply_Card;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchCardReply_Card create() => SearchCardReply_Card._();
  SearchCardReply_Card createEmptyInstance() => create();
  static $pb.PbList<SearchCardReply_Card> createRepeated() => $pb.PbList<SearchCardReply_Card>();
  @$core.pragma('dart2js:noInline')
  static SearchCardReply_Card getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchCardReply_Card>(create);
  static SearchCardReply_Card? _defaultInstance;

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

class SearchCardReply extends $pb.GeneratedMessage {
  factory SearchCardReply() => create();
  SearchCardReply._() : super();
  factory SearchCardReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchCardReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchCardReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<SearchCardReply_Card>(2, _omitFieldNames ? '' : 'cards', $pb.PbFieldType.PM, subBuilder: SearchCardReply_Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchCardReply clone() => SearchCardReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchCardReply copyWith(void Function(SearchCardReply) updates) => super.copyWith((message) => updates(message as SearchCardReply)) as SearchCardReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchCardReply create() => SearchCardReply._();
  SearchCardReply createEmptyInstance() => create();
  static $pb.PbList<SearchCardReply> createRepeated() => $pb.PbList<SearchCardReply>();
  @$core.pragma('dart2js:noInline')
  static SearchCardReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchCardReply>(create);
  static SearchCardReply? _defaultInstance;

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
  $core.List<SearchCardReply_Card> get cards => $_getList(1);
}

class TaskLabelsReply_TaskLabel extends $pb.GeneratedMessage {
  factory TaskLabelsReply_TaskLabel() => create();
  TaskLabelsReply_TaskLabel._() : super();
  factory TaskLabelsReply_TaskLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskLabelsReply_TaskLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskLabelsReply.TaskLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'label', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskLabelsReply_TaskLabel clone() => TaskLabelsReply_TaskLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskLabelsReply_TaskLabel copyWith(void Function(TaskLabelsReply_TaskLabel) updates) => super.copyWith((message) => updates(message as TaskLabelsReply_TaskLabel)) as TaskLabelsReply_TaskLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskLabelsReply_TaskLabel create() => TaskLabelsReply_TaskLabel._();
  TaskLabelsReply_TaskLabel createEmptyInstance() => create();
  static $pb.PbList<TaskLabelsReply_TaskLabel> createRepeated() => $pb.PbList<TaskLabelsReply_TaskLabel>();
  @$core.pragma('dart2js:noInline')
  static TaskLabelsReply_TaskLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskLabelsReply_TaskLabel>(create);
  static TaskLabelsReply_TaskLabel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get label => $_getIZ(0);
  @$pb.TagNumber(1)
  set label($core.int v) { $_setSignedInt32(0, v); }
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
}

class TaskLabelsReply extends $pb.GeneratedMessage {
  factory TaskLabelsReply() => create();
  TaskLabelsReply._() : super();
  factory TaskLabelsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskLabelsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskLabelsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<TaskLabelsReply_TaskLabel>(2, _omitFieldNames ? '' : 'taskLabels', $pb.PbFieldType.PM, protoName: 'taskLabels', subBuilder: TaskLabelsReply_TaskLabel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskLabelsReply clone() => TaskLabelsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskLabelsReply copyWith(void Function(TaskLabelsReply) updates) => super.copyWith((message) => updates(message as TaskLabelsReply)) as TaskLabelsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskLabelsReply create() => TaskLabelsReply._();
  TaskLabelsReply createEmptyInstance() => create();
  static $pb.PbList<TaskLabelsReply> createRepeated() => $pb.PbList<TaskLabelsReply>();
  @$core.pragma('dart2js:noInline')
  static TaskLabelsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskLabelsReply>(create);
  static TaskLabelsReply? _defaultInstance;

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
  $core.List<TaskLabelsReply_TaskLabel> get taskLabels => $_getList(1);
}

class EmptyReq extends $pb.GeneratedMessage {
  factory EmptyReq() => create();
  EmptyReq._() : super();
  factory EmptyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card_v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyReq clone() => EmptyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyReq copyWith(void Function(EmptyReq) updates) => super.copyWith((message) => updates(message as EmptyReq)) as EmptyReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyReq create() => EmptyReq._();
  EmptyReq createEmptyInstance() => create();
  static $pb.PbList<EmptyReq> createRepeated() => $pb.PbList<EmptyReq>();
  @$core.pragma('dart2js:noInline')
  static EmptyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyReq>(create);
  static EmptyReq? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
