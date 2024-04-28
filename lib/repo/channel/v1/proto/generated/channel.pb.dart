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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reply', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelIDsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
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

class ShowLabelReq extends $pb.GeneratedMessage {
  factory ShowLabelReq() => create();
  ShowLabelReq._() : super();
  factory ShowLabelReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShowLabelReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShowLabelReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'label')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShowLabelReq clone() => ShowLabelReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShowLabelReq copyWith(void Function(ShowLabelReq) updates) => super.copyWith((message) => updates(message as ShowLabelReq)) as ShowLabelReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShowLabelReq create() => ShowLabelReq._();
  ShowLabelReq createEmptyInstance() => create();
  static $pb.PbList<ShowLabelReq> createRepeated() => $pb.PbList<ShowLabelReq>();
  @$core.pragma('dart2js:noInline')
  static ShowLabelReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShowLabelReq>(create);
  static ShowLabelReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get label => $_getSZ(0);
  @$pb.TagNumber(1)
  set label($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);

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

class ShowLabelsReply_ChannelLabel extends $pb.GeneratedMessage {
  factory ShowLabelsReply_ChannelLabel() => create();
  ShowLabelsReply_ChannelLabel._() : super();
  factory ShowLabelsReply_ChannelLabel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShowLabelsReply_ChannelLabel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShowLabelsReply.ChannelLabel', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'label')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShowLabelsReply_ChannelLabel clone() => ShowLabelsReply_ChannelLabel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShowLabelsReply_ChannelLabel copyWith(void Function(ShowLabelsReply_ChannelLabel) updates) => super.copyWith((message) => updates(message as ShowLabelsReply_ChannelLabel)) as ShowLabelsReply_ChannelLabel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShowLabelsReply_ChannelLabel create() => ShowLabelsReply_ChannelLabel._();
  ShowLabelsReply_ChannelLabel createEmptyInstance() => create();
  static $pb.PbList<ShowLabelsReply_ChannelLabel> createRepeated() => $pb.PbList<ShowLabelsReply_ChannelLabel>();
  @$core.pragma('dart2js:noInline')
  static ShowLabelsReply_ChannelLabel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShowLabelsReply_ChannelLabel>(create);
  static ShowLabelsReply_ChannelLabel? _defaultInstance;

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
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);
}

class ShowLabelsReply extends $pb.GeneratedMessage {
  factory ShowLabelsReply() => create();
  ShowLabelsReply._() : super();
  factory ShowLabelsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShowLabelsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShowLabelsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<ShowLabelsReply_ChannelLabel>(2, _omitFieldNames ? '' : 'channelLabels', $pb.PbFieldType.PM, protoName: 'channelLabels', subBuilder: ShowLabelsReply_ChannelLabel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShowLabelsReply clone() => ShowLabelsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShowLabelsReply copyWith(void Function(ShowLabelsReply) updates) => super.copyWith((message) => updates(message as ShowLabelsReply)) as ShowLabelsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShowLabelsReply create() => ShowLabelsReply._();
  ShowLabelsReply createEmptyInstance() => create();
  static $pb.PbList<ShowLabelsReply> createRepeated() => $pb.PbList<ShowLabelsReply>();
  @$core.pragma('dart2js:noInline')
  static ShowLabelsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShowLabelsReply>(create);
  static ShowLabelsReply? _defaultInstance;

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
  $core.List<ShowLabelsReply_ChannelLabel> get channelLabels => $_getList(1);
}

class ChannelsReply_Channel extends $pb.GeneratedMessage {
  factory ChannelsReply_Channel() => create();
  ChannelsReply_Channel._() : super();
  factory ChannelsReply_Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelsReply_Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelsReply.Channel', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aInt64(3, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(4, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..pPS(5, _omitFieldNames ? '' : 'channelLabels', protoName: 'channelLabels')
    ..aOS(6, _omitFieldNames ? '' : 'showLabel', protoName: 'showLabel')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'channelStatus', $pb.PbFieldType.O3, protoName: 'channelStatus')
    ..aOS(9, _omitFieldNames ? '' : 'imageName', protoName: 'imageName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelsReply_Channel clone() => ChannelsReply_Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelsReply_Channel copyWith(void Function(ChannelsReply_Channel) updates) => super.copyWith((message) => updates(message as ChannelsReply_Channel)) as ChannelsReply_Channel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelsReply_Channel create() => ChannelsReply_Channel._();
  ChannelsReply_Channel createEmptyInstance() => create();
  static $pb.PbList<ChannelsReply_Channel> createRepeated() => $pb.PbList<ChannelsReply_Channel>();
  @$core.pragma('dart2js:noInline')
  static ChannelsReply_Channel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelsReply_Channel>(create);
  static ChannelsReply_Channel? _defaultInstance;

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
  $fixnum.Int64 get createDate => $_getI64(2);
  @$pb.TagNumber(3)
  set createDate($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateDate() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get updateDate => $_getI64(3);
  @$pb.TagNumber(4)
  set updateDate($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdateDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get channelLabels => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get showLabel => $_getSZ(5);
  @$pb.TagNumber(6)
  set showLabel($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasShowLabel() => $_has(5);
  @$pb.TagNumber(6)
  void clearShowLabel() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get order => $_getIZ(6);
  @$pb.TagNumber(7)
  set order($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOrder() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrder() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get channelStatus => $_getIZ(7);
  @$pb.TagNumber(8)
  set channelStatus($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasChannelStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearChannelStatus() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get imageName => $_getSZ(8);
  @$pb.TagNumber(9)
  set imageName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasImageName() => $_has(8);
  @$pb.TagNumber(9)
  void clearImageName() => clearField(9);
}

class ChannelsReply extends $pb.GeneratedMessage {
  factory ChannelsReply() => create();
  ChannelsReply._() : super();
  factory ChannelsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChannelsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<ChannelsReply_Channel>(2, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: ChannelsReply_Channel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelsReply clone() => ChannelsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelsReply copyWith(void Function(ChannelsReply) updates) => super.copyWith((message) => updates(message as ChannelsReply)) as ChannelsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChannelsReply create() => ChannelsReply._();
  ChannelsReply createEmptyInstance() => create();
  static $pb.PbList<ChannelsReply> createRepeated() => $pb.PbList<ChannelsReply>();
  @$core.pragma('dart2js:noInline')
  static ChannelsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelsReply>(create);
  static ChannelsReply? _defaultInstance;

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
  $core.List<ChannelsReply_Channel> get channels => $_getList(1);
}

class SearchChannelReq extends $pb.GeneratedMessage {
  factory SearchChannelReq() => create();
  SearchChannelReq._() : super();
  factory SearchChannelReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchChannelReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchChannelReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
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

class SearchChannelsReply_Channel extends $pb.GeneratedMessage {
  factory SearchChannelsReply_Channel() => create();
  SearchChannelsReply_Channel._() : super();
  factory SearchChannelsReply_Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchChannelsReply_Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchChannelsReply.Channel', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aInt64(3, _omitFieldNames ? '' : 'createDate', protoName: 'createDate')
    ..aInt64(4, _omitFieldNames ? '' : 'updateDate', protoName: 'updateDate')
    ..pPS(5, _omitFieldNames ? '' : 'channelLabels', protoName: 'channelLabels')
    ..aOS(6, _omitFieldNames ? '' : 'showLabel', protoName: 'showLabel')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'channelStatus', $pb.PbFieldType.O3, protoName: 'channelStatus')
    ..aOS(9, _omitFieldNames ? '' : 'imageName', protoName: 'imageName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchChannelsReply_Channel clone() => SearchChannelsReply_Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchChannelsReply_Channel copyWith(void Function(SearchChannelsReply_Channel) updates) => super.copyWith((message) => updates(message as SearchChannelsReply_Channel)) as SearchChannelsReply_Channel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchChannelsReply_Channel create() => SearchChannelsReply_Channel._();
  SearchChannelsReply_Channel createEmptyInstance() => create();
  static $pb.PbList<SearchChannelsReply_Channel> createRepeated() => $pb.PbList<SearchChannelsReply_Channel>();
  @$core.pragma('dart2js:noInline')
  static SearchChannelsReply_Channel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchChannelsReply_Channel>(create);
  static SearchChannelsReply_Channel? _defaultInstance;

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
  $fixnum.Int64 get createDate => $_getI64(2);
  @$pb.TagNumber(3)
  set createDate($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateDate() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get updateDate => $_getI64(3);
  @$pb.TagNumber(4)
  set updateDate($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdateDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get channelLabels => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get showLabel => $_getSZ(5);
  @$pb.TagNumber(6)
  set showLabel($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasShowLabel() => $_has(5);
  @$pb.TagNumber(6)
  void clearShowLabel() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get order => $_getIZ(6);
  @$pb.TagNumber(7)
  set order($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOrder() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrder() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get channelStatus => $_getIZ(7);
  @$pb.TagNumber(8)
  set channelStatus($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasChannelStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearChannelStatus() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get imageName => $_getSZ(8);
  @$pb.TagNumber(9)
  set imageName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasImageName() => $_has(8);
  @$pb.TagNumber(9)
  void clearImageName() => clearField(9);
}

class SearchChannelsReply extends $pb.GeneratedMessage {
  factory SearchChannelsReply() => create();
  SearchChannelsReply._() : super();
  factory SearchChannelsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchChannelsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchChannelsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'channel.v1'), createEmptyInstance: create)
    ..aOM<Reply>(1, _omitFieldNames ? '' : 'reply', subBuilder: Reply.create)
    ..pc<SearchChannelsReply_Channel>(2, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: SearchChannelsReply_Channel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchChannelsReply clone() => SearchChannelsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchChannelsReply copyWith(void Function(SearchChannelsReply) updates) => super.copyWith((message) => updates(message as SearchChannelsReply)) as SearchChannelsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchChannelsReply create() => SearchChannelsReply._();
  SearchChannelsReply createEmptyInstance() => create();
  static $pb.PbList<SearchChannelsReply> createRepeated() => $pb.PbList<SearchChannelsReply>();
  @$core.pragma('dart2js:noInline')
  static SearchChannelsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchChannelsReply>(create);
  static SearchChannelsReply? _defaultInstance;

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
  $core.List<SearchChannelsReply_Channel> get channels => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
