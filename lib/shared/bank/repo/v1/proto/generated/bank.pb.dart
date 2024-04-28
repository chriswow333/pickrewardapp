//
//  Generated code. Do not modify.
//  source: bank.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Reply extends $pb.GeneratedMessage {
  factory Reply() => create();
  Reply._() : super();
  factory Reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bank.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'bank.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllBanksReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bank.v1'), createEmptyInstance: create)
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
}

class BanksReply_Bank extends $pb.GeneratedMessage {
  factory BanksReply_Bank() => create();
  BanksReply_Bank._() : super();
  factory BanksReply_Bank.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanksReply_Bank.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanksReply.Bank', package: const $pb.PackageName(_omitMessageNames ? '' : 'bank.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'bankStatus', $pb.PbFieldType.O3, protoName: 'bankStatus')
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
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get bankStatus => $_getIZ(3);
  @$pb.TagNumber(4)
  set bankStatus($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBankStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearBankStatus() => clearField(4);
}

class BanksReply extends $pb.GeneratedMessage {
  factory BanksReply() => create();
  BanksReply._() : super();
  factory BanksReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanksReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BanksReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bank.v1'), createEmptyInstance: create)
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
