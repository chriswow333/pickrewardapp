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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.v1'), createEmptyInstance: create)
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

class CardsByBankIDReq extends $pb.GeneratedMessage {
  factory CardsByBankIDReq() => create();
  CardsByBankIDReq._() : super();
  factory CardsByBankIDReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardsByBankIDReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardsByBankIDReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
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
}

class CardIDReq extends $pb.GeneratedMessage {
  factory CardIDReq() => create();
  CardIDReq._() : super();
  factory CardIDReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardIDReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardIDReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardIDReq clone() => CardIDReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardIDReq copyWith(void Function(CardIDReq) updates) => super.copyWith((message) => updates(message as CardIDReq)) as CardIDReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardIDReq create() => CardIDReq._();
  CardIDReq createEmptyInstance() => create();
  static $pb.PbList<CardIDReq> createRepeated() => $pb.PbList<CardIDReq>();
  @$core.pragma('dart2js:noInline')
  static CardIDReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardIDReq>(create);
  static CardIDReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CardsReply_Card extends $pb.GeneratedMessage {
  factory CardsReply_Card() => create();
  CardsReply_Card._() : super();
  factory CardsReply_Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardsReply_Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardsReply.Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'descriptions')
    ..aOS(4, _omitFieldNames ? '' : 'linkURL', protoName: 'linkURL')
    ..aOS(5, _omitFieldNames ? '' : 'bankID', protoName: 'bankID')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'cardStatus', $pb.PbFieldType.O3, protoName: 'cardStatus')
    ..aInt64(8, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(9, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
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
  $core.String get linkURL => $_getSZ(3);
  @$pb.TagNumber(4)
  set linkURL($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLinkURL() => $_has(3);
  @$pb.TagNumber(4)
  void clearLinkURL() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get bankID => $_getSZ(4);
  @$pb.TagNumber(5)
  set bankID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBankID() => $_has(4);
  @$pb.TagNumber(5)
  void clearBankID() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get order => $_getIZ(5);
  @$pb.TagNumber(6)
  set order($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOrder() => $_has(5);
  @$pb.TagNumber(6)
  void clearOrder() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get cardStatus => $_getIZ(6);
  @$pb.TagNumber(7)
  set cardStatus($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCardStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearCardStatus() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get createDate => $_getI64(7);
  @$pb.TagNumber(8)
  set createDate($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreateDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreateDate() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get updateDate => $_getI64(8);
  @$pb.TagNumber(9)
  set updateDate($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUpdateDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdateDate() => clearField(9);
}

class CardsReply extends $pb.GeneratedMessage {
  factory CardsReply() => create();
  CardsReply._() : super();
  factory CardsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.v1'), createEmptyInstance: create)
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

class CardReply_Card extends $pb.GeneratedMessage {
  factory CardReply_Card() => create();
  CardReply_Card._() : super();
  factory CardReply_Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardReply_Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardReply.Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'descriptions')
    ..aOS(4, _omitFieldNames ? '' : 'linkURL', protoName: 'linkURL')
    ..aOS(5, _omitFieldNames ? '' : 'bankID', protoName: 'bankID')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'cardStatus', $pb.PbFieldType.O3, protoName: 'cardStatus')
    ..aInt64(8, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(9, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardReply_Card clone() => CardReply_Card()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardReply_Card copyWith(void Function(CardReply_Card) updates) => super.copyWith((message) => updates(message as CardReply_Card)) as CardReply_Card;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardReply_Card create() => CardReply_Card._();
  CardReply_Card createEmptyInstance() => create();
  static $pb.PbList<CardReply_Card> createRepeated() => $pb.PbList<CardReply_Card>();
  @$core.pragma('dart2js:noInline')
  static CardReply_Card getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardReply_Card>(create);
  static CardReply_Card? _defaultInstance;

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
  $core.String get linkURL => $_getSZ(3);
  @$pb.TagNumber(4)
  set linkURL($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLinkURL() => $_has(3);
  @$pb.TagNumber(4)
  void clearLinkURL() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get bankID => $_getSZ(4);
  @$pb.TagNumber(5)
  set bankID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBankID() => $_has(4);
  @$pb.TagNumber(5)
  void clearBankID() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get order => $_getIZ(5);
  @$pb.TagNumber(6)
  set order($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOrder() => $_has(5);
  @$pb.TagNumber(6)
  void clearOrder() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get cardStatus => $_getIZ(6);
  @$pb.TagNumber(7)
  set cardStatus($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCardStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearCardStatus() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get createDate => $_getI64(7);
  @$pb.TagNumber(8)
  set createDate($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreateDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreateDate() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get updateDate => $_getI64(8);
  @$pb.TagNumber(9)
  set updateDate($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUpdateDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdateDate() => clearField(9);
}

class CardReply extends $pb.GeneratedMessage {
  factory CardReply() => create();
  CardReply._() : super();
  factory CardReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..aOM<CardReply_Card>(2, _omitFieldNames ? '' : 'card', subBuilder: CardReply_Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardReply clone() => CardReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardReply copyWith(void Function(CardReply) updates) => super.copyWith((message) => updates(message as CardReply)) as CardReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardReply create() => CardReply._();
  CardReply createEmptyInstance() => create();
  static $pb.PbList<CardReply> createRepeated() => $pb.PbList<CardReply>();
  @$core.pragma('dart2js:noInline')
  static CardReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardReply>(create);
  static CardReply? _defaultInstance;

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
  CardReply_Card get card => $_getN(1);
  @$pb.TagNumber(2)
  set card(CardReply_Card v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCard() => $_has(1);
  @$pb.TagNumber(2)
  void clearCard() => clearField(2);
  @$pb.TagNumber(2)
  CardReply_Card ensureCard() => $_ensure(1);
}

class SearchCardReq extends $pb.GeneratedMessage {
  factory SearchCardReq() => create();
  SearchCardReq._() : super();
  factory SearchCardReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchCardReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchCardReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.v1'), createEmptyInstance: create)
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

class EmptyReq extends $pb.GeneratedMessage {
  factory EmptyReq() => create();
  EmptyReq._() : super();
  factory EmptyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'card.v1'), createEmptyInstance: create)
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
