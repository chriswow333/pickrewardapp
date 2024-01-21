//
//  Generated code. Do not modify.
//  source: channel.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class EmptyReq extends $pb.GeneratedMessage {
  factory EmptyReq() => create();
  EmptyReq._() : super();
  factory EmptyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
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

class Reply extends $pb.GeneratedMessage {
  factory Reply() => create();
  Reply._() : super();
  factory Reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reply', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
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

class ChannelIDsReq extends $pb.GeneratedMessage {
  factory ChannelIDsReq() => create();
  ChannelIDsReq._() : super();
  factory ChannelIDsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelIDsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelIDsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'channelIDs', protoName: 'channelIDs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelIDsReq clone() => ChannelIDsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelIDsReq copyWith(void Function(ChannelIDsReq) updates) => super.copyWith((message) => updates(message as ChannelIDsReq)) as ChannelIDsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelIDsReq create() => ChannelIDsReq._();
  ChannelIDsReq createEmptyInstance() => create();
  static $pb.PbList<ChannelIDsReq> createRepeated() => $pb.PbList<ChannelIDsReq>();
  @$core.pragma('dart2js:noInline')
  static ChannelIDsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelIDsReq>(create);
  static ChannelIDsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get channelIDs => $_getList(0);
}

class ChannelCategoryTypeReq extends $pb.GeneratedMessage {
  factory ChannelCategoryTypeReq() => create();
  ChannelCategoryTypeReq._() : super();
  factory ChannelCategoryTypeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelCategoryTypeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelCategoryTypeReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'categoryType', $pb.PbFieldType.O3, protoName: 'categoryType')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelCategoryTypeReq clone() => ChannelCategoryTypeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelCategoryTypeReq copyWith(void Function(ChannelCategoryTypeReq) updates) => super.copyWith((message) => updates(message as ChannelCategoryTypeReq)) as ChannelCategoryTypeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelCategoryTypeReq create() => ChannelCategoryTypeReq._();
  ChannelCategoryTypeReq createEmptyInstance() => create();
  static $pb.PbList<ChannelCategoryTypeReq> createRepeated() => $pb.PbList<ChannelCategoryTypeReq>();
  @$core.pragma('dart2js:noInline')
  static ChannelCategoryTypeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelCategoryTypeReq>(create);
  static ChannelCategoryTypeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get categoryType => $_getIZ(0);
  @$pb.TagNumber(1)
  set categoryType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategoryType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategoryType() => clearField(1);

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

class ChannelCategoryTypeReply_ChannelCategoryType extends $pb.GeneratedMessage {
  factory ChannelCategoryTypeReply_ChannelCategoryType() => create();
  ChannelCategoryTypeReply_ChannelCategoryType._() : super();
  factory ChannelCategoryTypeReply_ChannelCategoryType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelCategoryTypeReply_ChannelCategoryType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelCategoryTypeReply.ChannelCategoryType', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'categoryType', $pb.PbFieldType.O3, protoName: 'categoryType')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelCategoryTypeReply_ChannelCategoryType clone() => ChannelCategoryTypeReply_ChannelCategoryType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelCategoryTypeReply_ChannelCategoryType copyWith(void Function(ChannelCategoryTypeReply_ChannelCategoryType) updates) => super.copyWith((message) => updates(message as ChannelCategoryTypeReply_ChannelCategoryType)) as ChannelCategoryTypeReply_ChannelCategoryType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelCategoryTypeReply_ChannelCategoryType create() => ChannelCategoryTypeReply_ChannelCategoryType._();
  ChannelCategoryTypeReply_ChannelCategoryType createEmptyInstance() => create();
  static $pb.PbList<ChannelCategoryTypeReply_ChannelCategoryType> createRepeated() => $pb.PbList<ChannelCategoryTypeReply_ChannelCategoryType>();
  @$core.pragma('dart2js:noInline')
  static ChannelCategoryTypeReply_ChannelCategoryType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelCategoryTypeReply_ChannelCategoryType>(create);
  static ChannelCategoryTypeReply_ChannelCategoryType? _defaultInstance;

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

class ChannelCategoryTypeReply extends $pb.GeneratedMessage {
  factory ChannelCategoryTypeReply() => create();
  ChannelCategoryTypeReply._() : super();
  factory ChannelCategoryTypeReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelCategoryTypeReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelCategoryTypeReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<ChannelCategoryTypeReply_ChannelCategoryType>(2, _omitFieldNames ? '' : 'channelCategoryTypes', $pb.PbFieldType.PM, protoName: 'channelCategoryTypes', subBuilder: ChannelCategoryTypeReply_ChannelCategoryType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelCategoryTypeReply clone() => ChannelCategoryTypeReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelCategoryTypeReply copyWith(void Function(ChannelCategoryTypeReply) updates) => super.copyWith((message) => updates(message as ChannelCategoryTypeReply)) as ChannelCategoryTypeReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelCategoryTypeReply create() => ChannelCategoryTypeReply._();
  ChannelCategoryTypeReply createEmptyInstance() => create();
  static $pb.PbList<ChannelCategoryTypeReply> createRepeated() => $pb.PbList<ChannelCategoryTypeReply>();
  @$core.pragma('dart2js:noInline')
  static ChannelCategoryTypeReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelCategoryTypeReply>(create);
  static ChannelCategoryTypeReply? _defaultInstance;

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
  $core.List<ChannelCategoryTypeReply_ChannelCategoryType> get channelCategoryTypes => $_getList(1);
}

class ChannelReply_ChannelLabel extends $pb.GeneratedMessage {
  factory ChannelReply_ChannelLabel() => create();
  ChannelReply_ChannelLabel._() : super();
  factory ChannelReply_ChannelLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelReply_ChannelLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelReply.ChannelLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'label', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'show', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelReply_ChannelLabel clone() => ChannelReply_ChannelLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelReply_ChannelLabel copyWith(void Function(ChannelReply_ChannelLabel) updates) => super.copyWith((message) => updates(message as ChannelReply_ChannelLabel)) as ChannelReply_ChannelLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelReply_ChannelLabel create() => ChannelReply_ChannelLabel._();
  ChannelReply_ChannelLabel createEmptyInstance() => create();
  static $pb.PbList<ChannelReply_ChannelLabel> createRepeated() => $pb.PbList<ChannelReply_ChannelLabel>();
  @$core.pragma('dart2js:noInline')
  static ChannelReply_ChannelLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelReply_ChannelLabel>(create);
  static ChannelReply_ChannelLabel? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.int get show => $_getIZ(2);
  @$pb.TagNumber(3)
  set show($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShow() => $_has(2);
  @$pb.TagNumber(3)
  void clearShow() => clearField(3);
}

class ChannelReply_Channel extends $pb.GeneratedMessage {
  factory ChannelReply_Channel() => create();
  ChannelReply_Channel._() : super();
  factory ChannelReply_Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelReply_Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelReply.Channel', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'linkURL', protoName: 'linkURL')
    ..pPS(5, _omitFieldNames ? '' : 'descriptions')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'channelCategoryType', $pb.PbFieldType.O3, protoName: 'channelCategoryType')
    ..aInt64(7, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(8, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..pc<ChannelReply_ChannelLabel>(9, _omitFieldNames ? '' : 'channelLabels', $pb.PbFieldType.PM, protoName: 'channelLabels', subBuilder: ChannelReply_ChannelLabel.create)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'channelStatus', $pb.PbFieldType.O3, protoName: 'channelStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelReply_Channel clone() => ChannelReply_Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelReply_Channel copyWith(void Function(ChannelReply_Channel) updates) => super.copyWith((message) => updates(message as ChannelReply_Channel)) as ChannelReply_Channel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelReply_Channel create() => ChannelReply_Channel._();
  ChannelReply_Channel createEmptyInstance() => create();
  static $pb.PbList<ChannelReply_Channel> createRepeated() => $pb.PbList<ChannelReply_Channel>();
  @$core.pragma('dart2js:noInline')
  static ChannelReply_Channel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelReply_Channel>(create);
  static ChannelReply_Channel? _defaultInstance;

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
  $core.List<ChannelReply_ChannelLabel> get channelLabels => $_getList(8);

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

class ChannelReply extends $pb.GeneratedMessage {
  factory ChannelReply() => create();
  ChannelReply._() : super();
  factory ChannelReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<ChannelReply_Channel>(2, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: ChannelReply_Channel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelReply clone() => ChannelReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelReply copyWith(void Function(ChannelReply) updates) => super.copyWith((message) => updates(message as ChannelReply)) as ChannelReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelReply create() => ChannelReply._();
  ChannelReply createEmptyInstance() => create();
  static $pb.PbList<ChannelReply> createRepeated() => $pb.PbList<ChannelReply>();
  @$core.pragma('dart2js:noInline')
  static ChannelReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelReply>(create);
  static ChannelReply? _defaultInstance;

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
  $core.List<ChannelReply_Channel> get channels => $_getList(1);
}

class SearchChannelReq extends $pb.GeneratedMessage {
  factory SearchChannelReq() => create();
  SearchChannelReq._() : super();
  factory SearchChannelReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchChannelReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchChannelReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchChannelReq clone() => SearchChannelReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchChannelReq copyWith(void Function(SearchChannelReq) updates) => super.copyWith((message) => updates(message as SearchChannelReq)) as SearchChannelReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchChannelReq create() => SearchChannelReq._();
  SearchChannelReq createEmptyInstance() => create();
  static $pb.PbList<SearchChannelReq> createRepeated() => $pb.PbList<SearchChannelReq>();
  @$core.pragma('dart2js:noInline')
  static SearchChannelReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchChannelReq>(create);
  static SearchChannelReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyword => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyword() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyword() => clearField(1);
}

class SearchChannelReply_SearchChannel_ChannelLabel extends $pb.GeneratedMessage {
  factory SearchChannelReply_SearchChannel_ChannelLabel() => create();
  SearchChannelReply_SearchChannel_ChannelLabel._() : super();
  factory SearchChannelReply_SearchChannel_ChannelLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchChannelReply_SearchChannel_ChannelLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchChannelReply.SearchChannel.ChannelLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'label', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'show', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchChannelReply_SearchChannel_ChannelLabel clone() => SearchChannelReply_SearchChannel_ChannelLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchChannelReply_SearchChannel_ChannelLabel copyWith(void Function(SearchChannelReply_SearchChannel_ChannelLabel) updates) => super.copyWith((message) => updates(message as SearchChannelReply_SearchChannel_ChannelLabel)) as SearchChannelReply_SearchChannel_ChannelLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchChannelReply_SearchChannel_ChannelLabel create() => SearchChannelReply_SearchChannel_ChannelLabel._();
  SearchChannelReply_SearchChannel_ChannelLabel createEmptyInstance() => create();
  static $pb.PbList<SearchChannelReply_SearchChannel_ChannelLabel> createRepeated() => $pb.PbList<SearchChannelReply_SearchChannel_ChannelLabel>();
  @$core.pragma('dart2js:noInline')
  static SearchChannelReply_SearchChannel_ChannelLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchChannelReply_SearchChannel_ChannelLabel>(create);
  static SearchChannelReply_SearchChannel_ChannelLabel? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.int get show => $_getIZ(2);
  @$pb.TagNumber(3)
  set show($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShow() => $_has(2);
  @$pb.TagNumber(3)
  void clearShow() => clearField(3);
}

class SearchChannelReply_SearchChannel_Channel extends $pb.GeneratedMessage {
  factory SearchChannelReply_SearchChannel_Channel() => create();
  SearchChannelReply_SearchChannel_Channel._() : super();
  factory SearchChannelReply_SearchChannel_Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchChannelReply_SearchChannel_Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchChannelReply.SearchChannel.Channel', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'linkURL', protoName: 'linkURL')
    ..pPS(5, _omitFieldNames ? '' : 'descriptions')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'channelCategoryType', $pb.PbFieldType.O3, protoName: 'channelCategoryType')
    ..aInt64(7, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(8, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..pc<SearchChannelReply_SearchChannel_ChannelLabel>(9, _omitFieldNames ? '' : 'channelLabels', $pb.PbFieldType.PM, protoName: 'channelLabels', subBuilder: SearchChannelReply_SearchChannel_ChannelLabel.create)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'channelStatus', $pb.PbFieldType.O3, protoName: 'channelStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchChannelReply_SearchChannel_Channel clone() => SearchChannelReply_SearchChannel_Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchChannelReply_SearchChannel_Channel copyWith(void Function(SearchChannelReply_SearchChannel_Channel) updates) => super.copyWith((message) => updates(message as SearchChannelReply_SearchChannel_Channel)) as SearchChannelReply_SearchChannel_Channel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchChannelReply_SearchChannel_Channel create() => SearchChannelReply_SearchChannel_Channel._();
  SearchChannelReply_SearchChannel_Channel createEmptyInstance() => create();
  static $pb.PbList<SearchChannelReply_SearchChannel_Channel> createRepeated() => $pb.PbList<SearchChannelReply_SearchChannel_Channel>();
  @$core.pragma('dart2js:noInline')
  static SearchChannelReply_SearchChannel_Channel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchChannelReply_SearchChannel_Channel>(create);
  static SearchChannelReply_SearchChannel_Channel? _defaultInstance;

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
  $core.List<SearchChannelReply_SearchChannel_ChannelLabel> get channelLabels => $_getList(8);

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

class SearchChannelReply_SearchChannel_ChannelCategoryType extends $pb.GeneratedMessage {
  factory SearchChannelReply_SearchChannel_ChannelCategoryType() => create();
  SearchChannelReply_SearchChannel_ChannelCategoryType._() : super();
  factory SearchChannelReply_SearchChannel_ChannelCategoryType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchChannelReply_SearchChannel_ChannelCategoryType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchChannelReply.SearchChannel.ChannelCategoryType', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'categoryType', $pb.PbFieldType.O3, protoName: 'categoryType')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchChannelReply_SearchChannel_ChannelCategoryType clone() => SearchChannelReply_SearchChannel_ChannelCategoryType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchChannelReply_SearchChannel_ChannelCategoryType copyWith(void Function(SearchChannelReply_SearchChannel_ChannelCategoryType) updates) => super.copyWith((message) => updates(message as SearchChannelReply_SearchChannel_ChannelCategoryType)) as SearchChannelReply_SearchChannel_ChannelCategoryType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchChannelReply_SearchChannel_ChannelCategoryType create() => SearchChannelReply_SearchChannel_ChannelCategoryType._();
  SearchChannelReply_SearchChannel_ChannelCategoryType createEmptyInstance() => create();
  static $pb.PbList<SearchChannelReply_SearchChannel_ChannelCategoryType> createRepeated() => $pb.PbList<SearchChannelReply_SearchChannel_ChannelCategoryType>();
  @$core.pragma('dart2js:noInline')
  static SearchChannelReply_SearchChannel_ChannelCategoryType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchChannelReply_SearchChannel_ChannelCategoryType>(create);
  static SearchChannelReply_SearchChannel_ChannelCategoryType? _defaultInstance;

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

class SearchChannelReply_SearchChannel extends $pb.GeneratedMessage {
  factory SearchChannelReply_SearchChannel() => create();
  SearchChannelReply_SearchChannel._() : super();
  factory SearchChannelReply_SearchChannel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchChannelReply_SearchChannel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchChannelReply.SearchChannel', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..aOM<SearchChannelReply_SearchChannel_ChannelCategoryType>(1, _omitFieldNames ? '' : 'channelCategoryType', protoName: 'channelCategoryType', subBuilder: SearchChannelReply_SearchChannel_ChannelCategoryType.create)
    ..pc<SearchChannelReply_SearchChannel_Channel>(2, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: SearchChannelReply_SearchChannel_Channel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchChannelReply_SearchChannel clone() => SearchChannelReply_SearchChannel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchChannelReply_SearchChannel copyWith(void Function(SearchChannelReply_SearchChannel) updates) => super.copyWith((message) => updates(message as SearchChannelReply_SearchChannel)) as SearchChannelReply_SearchChannel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchChannelReply_SearchChannel create() => SearchChannelReply_SearchChannel._();
  SearchChannelReply_SearchChannel createEmptyInstance() => create();
  static $pb.PbList<SearchChannelReply_SearchChannel> createRepeated() => $pb.PbList<SearchChannelReply_SearchChannel>();
  @$core.pragma('dart2js:noInline')
  static SearchChannelReply_SearchChannel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchChannelReply_SearchChannel>(create);
  static SearchChannelReply_SearchChannel? _defaultInstance;

  @$pb.TagNumber(1)
  SearchChannelReply_SearchChannel_ChannelCategoryType get channelCategoryType => $_getN(0);
  @$pb.TagNumber(1)
  set channelCategoryType(SearchChannelReply_SearchChannel_ChannelCategoryType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelCategoryType() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelCategoryType() => clearField(1);
  @$pb.TagNumber(1)
  SearchChannelReply_SearchChannel_ChannelCategoryType ensureChannelCategoryType() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<SearchChannelReply_SearchChannel_Channel> get channels => $_getList(1);
}

class SearchChannelReply extends $pb.GeneratedMessage {
  factory SearchChannelReply() => create();
  SearchChannelReply._() : super();
  factory SearchChannelReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchChannelReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchChannelReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<SearchChannelReply_SearchChannel>(2, _omitFieldNames ? '' : 'searchChannels', $pb.PbFieldType.PM, protoName: 'searchChannels', subBuilder: SearchChannelReply_SearchChannel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchChannelReply clone() => SearchChannelReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchChannelReply copyWith(void Function(SearchChannelReply) updates) => super.copyWith((message) => updates(message as SearchChannelReply)) as SearchChannelReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchChannelReply create() => SearchChannelReply._();
  SearchChannelReply createEmptyInstance() => create();
  static $pb.PbList<SearchChannelReply> createRepeated() => $pb.PbList<SearchChannelReply>();
  @$core.pragma('dart2js:noInline')
  static SearchChannelReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchChannelReply>(create);
  static SearchChannelReply? _defaultInstance;

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
  $core.List<SearchChannelReply_SearchChannel> get searchChannels => $_getList(1);
}

class ChannelLabelsReply_ChannelLabel extends $pb.GeneratedMessage {
  factory ChannelLabelsReply_ChannelLabel() => create();
  ChannelLabelsReply_ChannelLabel._() : super();
  factory ChannelLabelsReply_ChannelLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelLabelsReply_ChannelLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelLabelsReply.ChannelLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'label', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelLabelsReply_ChannelLabel clone() => ChannelLabelsReply_ChannelLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelLabelsReply_ChannelLabel copyWith(void Function(ChannelLabelsReply_ChannelLabel) updates) => super.copyWith((message) => updates(message as ChannelLabelsReply_ChannelLabel)) as ChannelLabelsReply_ChannelLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelLabelsReply_ChannelLabel create() => ChannelLabelsReply_ChannelLabel._();
  ChannelLabelsReply_ChannelLabel createEmptyInstance() => create();
  static $pb.PbList<ChannelLabelsReply_ChannelLabel> createRepeated() => $pb.PbList<ChannelLabelsReply_ChannelLabel>();
  @$core.pragma('dart2js:noInline')
  static ChannelLabelsReply_ChannelLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelLabelsReply_ChannelLabel>(create);
  static ChannelLabelsReply_ChannelLabel? _defaultInstance;

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

class ChannelLabelsReply extends $pb.GeneratedMessage {
  factory ChannelLabelsReply() => create();
  ChannelLabelsReply._() : super();
  factory ChannelLabelsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelLabelsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelLabelsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel_v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<ChannelLabelsReply_ChannelLabel>(2, _omitFieldNames ? '' : 'channelLabels', $pb.PbFieldType.PM, protoName: 'channelLabels', subBuilder: ChannelLabelsReply_ChannelLabel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelLabelsReply clone() => ChannelLabelsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelLabelsReply copyWith(void Function(ChannelLabelsReply) updates) => super.copyWith((message) => updates(message as ChannelLabelsReply)) as ChannelLabelsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelLabelsReply create() => ChannelLabelsReply._();
  ChannelLabelsReply createEmptyInstance() => create();
  static $pb.PbList<ChannelLabelsReply> createRepeated() => $pb.PbList<ChannelLabelsReply>();
  @$core.pragma('dart2js:noInline')
  static ChannelLabelsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelLabelsReply>(create);
  static ChannelLabelsReply? _defaultInstance;

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
  $core.List<ChannelLabelsReply_ChannelLabel> get channelLabels => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
