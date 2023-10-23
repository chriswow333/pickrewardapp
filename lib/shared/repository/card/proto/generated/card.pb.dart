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

class AllBanksReq extends $pb.GeneratedMessage {
  factory AllBanksReq() => create();
  AllBanksReq._() : super();
  factory AllBanksReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllBanksReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllBanksReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanksReply.Bank', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanksReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardsByBankIDReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardsReply.Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsByCardIDReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.Reward', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.Description', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply.CardReward', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

class CardEventReq extends $pb.GeneratedMessage {
  factory CardEventReq() => create();
  CardEventReq._() : super();
  factory CardEventReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardEventReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardEventReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'taskIDs', protoName: 'taskIDs')
    ..pPS(2, _omitFieldNames ? '' : 'payIDs', protoName: 'payIDs')
    ..pPS(3, _omitFieldNames ? '' : 'channelIDs', protoName: 'channelIDs')
    ..p<$core.int>(4, _omitFieldNames ? '' : 'labels', $pb.PbFieldType.K3)
    ..aInt64(5, _omitFieldNames ? '' : 'eventDate', protoName: 'eventDate')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'cost', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'rewardType', $pb.PbFieldType.O3, protoName: 'rewardType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardEventReq clone() => CardEventReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardEventReq copyWith(void Function(CardEventReq) updates) => super.copyWith((message) => updates(message as CardEventReq)) as CardEventReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardEventReq create() => CardEventReq._();
  CardEventReq createEmptyInstance() => create();
  static $pb.PbList<CardEventReq> createRepeated() => $pb.PbList<CardEventReq>();
  @$core.pragma('dart2js:noInline')
  static CardEventReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardEventReq>(create);
  static CardEventReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get taskIDs => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get payIDs => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get channelIDs => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get labels => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get eventDate => $_getI64(4);
  @$pb.TagNumber(5)
  set eventDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEventDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearEventDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get cost => $_getIZ(5);
  @$pb.TagNumber(6)
  set cost($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCost() => $_has(5);
  @$pb.TagNumber(6)
  void clearCost() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get rewardType => $_getIZ(6);
  @$pb.TagNumber(7)
  set rewardType($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRewardType() => $_has(6);
  @$pb.TagNumber(7)
  void clearRewardType() => clearField(7);
}

class EvaluateCardRewardsReply_CardRewardEventResult extends $pb.GeneratedMessage {
  factory EvaluateCardRewardsReply_CardRewardEventResult() => create();
  EvaluateCardRewardsReply_CardRewardEventResult._() : super();
  factory EvaluateCardRewardsReply_CardRewardEventResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluateCardRewardsReply_CardRewardEventResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluateCardRewardsReply.CardRewardEventResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<CardRewardEvaluationEventResult>(2, _omitFieldNames ? '' : 'cardRewardEvaluationEventResult', protoName: 'cardRewardEvaluationEventResult', subBuilder: CardRewardEvaluationEventResult.create)
    ..aOM<EvaluationEventResultResp>(3, _omitFieldNames ? '' : 'evaluationEventResultResp', protoName: 'evaluationEventResultResp', subBuilder: EvaluationEventResultResp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluateCardRewardsReply_CardRewardEventResult clone() => EvaluateCardRewardsReply_CardRewardEventResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluateCardRewardsReply_CardRewardEventResult copyWith(void Function(EvaluateCardRewardsReply_CardRewardEventResult) updates) => super.copyWith((message) => updates(message as EvaluateCardRewardsReply_CardRewardEventResult)) as EvaluateCardRewardsReply_CardRewardEventResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluateCardRewardsReply_CardRewardEventResult create() => EvaluateCardRewardsReply_CardRewardEventResult._();
  EvaluateCardRewardsReply_CardRewardEventResult createEmptyInstance() => create();
  static $pb.PbList<EvaluateCardRewardsReply_CardRewardEventResult> createRepeated() => $pb.PbList<EvaluateCardRewardsReply_CardRewardEventResult>();
  @$core.pragma('dart2js:noInline')
  static EvaluateCardRewardsReply_CardRewardEventResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluateCardRewardsReply_CardRewardEventResult>(create);
  static EvaluateCardRewardsReply_CardRewardEventResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  CardRewardEvaluationEventResult get cardRewardEvaluationEventResult => $_getN(1);
  @$pb.TagNumber(2)
  set cardRewardEvaluationEventResult(CardRewardEvaluationEventResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardRewardEvaluationEventResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardRewardEvaluationEventResult() => clearField(2);
  @$pb.TagNumber(2)
  CardRewardEvaluationEventResult ensureCardRewardEvaluationEventResult() => $_ensure(1);

  @$pb.TagNumber(3)
  EvaluationEventResultResp get evaluationEventResultResp => $_getN(2);
  @$pb.TagNumber(3)
  set evaluationEventResultResp(EvaluationEventResultResp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEvaluationEventResultResp() => $_has(2);
  @$pb.TagNumber(3)
  void clearEvaluationEventResultResp() => clearField(3);
  @$pb.TagNumber(3)
  EvaluationEventResultResp ensureEvaluationEventResultResp() => $_ensure(2);
}

class EvaluateCardRewardsReply extends $pb.GeneratedMessage {
  factory EvaluateCardRewardsReply() => create();
  EvaluateCardRewardsReply._() : super();
  factory EvaluateCardRewardsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluateCardRewardsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluateCardRewardsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<EvaluateCardRewardsReply_CardRewardEventResult>(2, _omitFieldNames ? '' : 'cardRewardEventResults', $pb.PbFieldType.PM, protoName: 'cardRewardEventResults', subBuilder: EvaluateCardRewardsReply_CardRewardEventResult.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluateCardRewardsReply clone() => EvaluateCardRewardsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluateCardRewardsReply copyWith(void Function(EvaluateCardRewardsReply) updates) => super.copyWith((message) => updates(message as EvaluateCardRewardsReply)) as EvaluateCardRewardsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluateCardRewardsReply create() => EvaluateCardRewardsReply._();
  EvaluateCardRewardsReply createEmptyInstance() => create();
  static $pb.PbList<EvaluateCardRewardsReply> createRepeated() => $pb.PbList<EvaluateCardRewardsReply>();
  @$core.pragma('dart2js:noInline')
  static EvaluateCardRewardsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluateCardRewardsReply>(create);
  static EvaluateCardRewardsReply? _defaultInstance;

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
  $core.List<EvaluateCardRewardsReply_CardRewardEventResult> get cardRewardEventResults => $_getList(1);
}

class CardRewardEvaluationEventResult_Reward extends $pb.GeneratedMessage {
  factory CardRewardEvaluationEventResult_Reward() => create();
  CardRewardEvaluationEventResult_Reward._() : super();
  factory CardRewardEvaluationEventResult_Reward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardEvaluationEventResult_Reward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardEvaluationEventResult.Reward', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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
  CardRewardEvaluationEventResult_Reward clone() => CardRewardEvaluationEventResult_Reward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardEvaluationEventResult_Reward copyWith(void Function(CardRewardEvaluationEventResult_Reward) updates) => super.copyWith((message) => updates(message as CardRewardEvaluationEventResult_Reward)) as CardRewardEvaluationEventResult_Reward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardEvaluationEventResult_Reward create() => CardRewardEvaluationEventResult_Reward._();
  CardRewardEvaluationEventResult_Reward createEmptyInstance() => create();
  static $pb.PbList<CardRewardEvaluationEventResult_Reward> createRepeated() => $pb.PbList<CardRewardEvaluationEventResult_Reward>();
  @$core.pragma('dart2js:noInline')
  static CardRewardEvaluationEventResult_Reward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardEvaluationEventResult_Reward>(create);
  static CardRewardEvaluationEventResult_Reward? _defaultInstance;

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

class CardRewardEvaluationEventResult extends $pb.GeneratedMessage {
  factory CardRewardEvaluationEventResult() => create();
  CardRewardEvaluationEventResult._() : super();
  factory CardRewardEvaluationEventResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRewardEvaluationEventResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRewardEvaluationEventResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardID', protoName: 'cardID')
    ..aOS(2, _omitFieldNames ? '' : 'cardName', protoName: 'cardName')
    ..pPS(3, _omitFieldNames ? '' : 'cardDesc', protoName: 'cardDesc')
    ..aOS(4, _omitFieldNames ? '' : 'cardImage', protoName: 'cardImage')
    ..aInt64(5, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..aOS(6, _omitFieldNames ? '' : 'linkURL', protoName: 'linkURL')
    ..aOS(7, _omitFieldNames ? '' : 'bankID', protoName: 'bankID')
    ..aOS(8, _omitFieldNames ? '' : 'bankName', protoName: 'bankName')
    ..aInt64(9, _omitFieldNames ? '' : 'cardRewardStartDate', protoName: 'cardRewardStartDate')
    ..aInt64(10, _omitFieldNames ? '' : 'cardRewardEndDate', protoName: 'cardRewardEndDate')
    ..aOS(11, _omitFieldNames ? '' : 'cardRewardName', protoName: 'cardRewardName')
    ..pPS(12, _omitFieldNames ? '' : 'cardRewardTaskShortNames', protoName: 'cardRewardTaskShortNames')
    ..aOM<CardRewardEvaluationEventResult_Reward>(13, _omitFieldNames ? '' : 'reward', subBuilder: CardRewardEvaluationEventResult_Reward.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRewardEvaluationEventResult clone() => CardRewardEvaluationEventResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRewardEvaluationEventResult copyWith(void Function(CardRewardEvaluationEventResult) updates) => super.copyWith((message) => updates(message as CardRewardEvaluationEventResult)) as CardRewardEvaluationEventResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRewardEvaluationEventResult create() => CardRewardEvaluationEventResult._();
  CardRewardEvaluationEventResult createEmptyInstance() => create();
  static $pb.PbList<CardRewardEvaluationEventResult> createRepeated() => $pb.PbList<CardRewardEvaluationEventResult>();
  @$core.pragma('dart2js:noInline')
  static CardRewardEvaluationEventResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRewardEvaluationEventResult>(create);
  static CardRewardEvaluationEventResult? _defaultInstance;

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
  $core.List<$core.String> get cardDesc => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get cardImage => $_getSZ(3);
  @$pb.TagNumber(4)
  set cardImage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCardImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearCardImage() => clearField(4);

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
  $fixnum.Int64 get cardRewardStartDate => $_getI64(8);
  @$pb.TagNumber(9)
  set cardRewardStartDate($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCardRewardStartDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearCardRewardStartDate() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get cardRewardEndDate => $_getI64(9);
  @$pb.TagNumber(10)
  set cardRewardEndDate($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCardRewardEndDate() => $_has(9);
  @$pb.TagNumber(10)
  void clearCardRewardEndDate() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get cardRewardName => $_getSZ(10);
  @$pb.TagNumber(11)
  set cardRewardName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCardRewardName() => $_has(10);
  @$pb.TagNumber(11)
  void clearCardRewardName() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.String> get cardRewardTaskShortNames => $_getList(11);

  @$pb.TagNumber(13)
  CardRewardEvaluationEventResult_Reward get reward => $_getN(12);
  @$pb.TagNumber(13)
  set reward(CardRewardEvaluationEventResult_Reward v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasReward() => $_has(12);
  @$pb.TagNumber(13)
  void clearReward() => clearField(13);
  @$pb.TagNumber(13)
  CardRewardEvaluationEventResult_Reward ensureReward() => $_ensure(12);
}

class EvaluationEventResultResp_FeedbackEventResultResp extends $pb.GeneratedMessage {
  factory EvaluationEventResultResp_FeedbackEventResultResp() => create();
  EvaluationEventResultResp_FeedbackEventResultResp._() : super();
  factory EvaluationEventResultResp_FeedbackEventResultResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluationEventResultResp_FeedbackEventResultResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultResp.FeedbackEventResultResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluationEventResultResp', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<EvaluationEventResultResp_FeedbackEventResultResp>(2, _omitFieldNames ? '' : 'feedbackEventResultResp', protoName: 'feedbackEventResultResp', subBuilder: EvaluationEventResultResp_FeedbackEventResultResp.create)
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
}

class SearchCardReq extends $pb.GeneratedMessage {
  factory SearchCardReq() => create();
  SearchCardReq._() : super();
  factory SearchCardReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchCardReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchCardReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchCardReply.Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchCardReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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

class EmptyReq extends $pb.GeneratedMessage {
  factory EmptyReq() => create();
  EmptyReq._() : super();
  factory EmptyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card'), createEmptyInstance: create)
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
