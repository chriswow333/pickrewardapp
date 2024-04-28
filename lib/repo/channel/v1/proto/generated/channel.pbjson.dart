//
//  Generated code. Do not modify.
//  source: channel.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use emptyReqDescriptor instead')
const EmptyReq$json = {
  '1': 'EmptyReq',
};

/// Descriptor for `EmptyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyReqDescriptor = $convert.base64Decode(
    'CghFbXB0eVJlcQ==');

@$core.Deprecated('Use replyDescriptor instead')
const Reply$json = {
  '1': 'Reply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.channel.v1.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxInCgVlcnJvchgCIAEoCzIRLmNoYW5uZW'
    'wudjEuRXJyb3JSBWVycm9y');

@$core.Deprecated('Use errorDescriptor instead')
const Error$json = {
  '1': 'Error',
  '2': [
    {'1': 'errorCode', '3': 1, '4': 1, '5': 5, '10': 'errorCode'},
    {'1': 'errorMessage', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode(
    'CgVFcnJvchIcCgllcnJvckNvZGUYASABKAVSCWVycm9yQ29kZRIiCgxlcnJvck1lc3NhZ2UYAi'
    'ABKAlSDGVycm9yTWVzc2FnZQ==');

@$core.Deprecated('Use channelIDsReqDescriptor instead')
const ChannelIDsReq$json = {
  '1': 'ChannelIDsReq',
  '2': [
    {'1': 'channelIDs', '3': 1, '4': 3, '5': 9, '10': 'channelIDs'},
  ],
};

/// Descriptor for `ChannelIDsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelIDsReqDescriptor = $convert.base64Decode(
    'Cg1DaGFubmVsSURzUmVxEh4KCmNoYW5uZWxJRHMYASADKAlSCmNoYW5uZWxJRHM=');

@$core.Deprecated('Use showLabelReqDescriptor instead')
const ShowLabelReq$json = {
  '1': 'ShowLabelReq',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'limit', '3': 2, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'offset', '3': 3, '4': 1, '5': 5, '10': 'offset'},
  ],
};

/// Descriptor for `ShowLabelReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List showLabelReqDescriptor = $convert.base64Decode(
    'CgxTaG93TGFiZWxSZXESFAoFbGFiZWwYASABKAlSBWxhYmVsEhQKBWxpbWl0GAIgASgFUgVsaW'
    '1pdBIWCgZvZmZzZXQYAyABKAVSBm9mZnNldA==');

@$core.Deprecated('Use showLabelsReplyDescriptor instead')
const ShowLabelsReply$json = {
  '1': 'ShowLabelsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel.v1.Reply', '10': 'reply'},
    {'1': 'channelLabels', '3': 2, '4': 3, '5': 11, '6': '.channel.v1.ShowLabelsReply.ChannelLabel', '10': 'channelLabels'},
  ],
  '3': [ShowLabelsReply_ChannelLabel$json],
};

@$core.Deprecated('Use showLabelsReplyDescriptor instead')
const ShowLabelsReply_ChannelLabel$json = {
  '1': 'ChannelLabel',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `ShowLabelsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List showLabelsReplyDescriptor = $convert.base64Decode(
    'Cg9TaG93TGFiZWxzUmVwbHkSJwoFcmVwbHkYASABKAsyES5jaGFubmVsLnYxLlJlcGx5UgVyZX'
    'BseRJOCg1jaGFubmVsTGFiZWxzGAIgAygLMiguY2hhbm5lbC52MS5TaG93TGFiZWxzUmVwbHku'
    'Q2hhbm5lbExhYmVsUg1jaGFubmVsTGFiZWxzGk4KDENoYW5uZWxMYWJlbBIUCgVsYWJlbBgBIA'
    'EoCVIFbGFiZWwSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVvcmRlchgDIAEoBVIFb3JkZXI=');

@$core.Deprecated('Use channelsReplyDescriptor instead')
const ChannelsReply$json = {
  '1': 'ChannelsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel.v1.Reply', '10': 'reply'},
    {'1': 'channels', '3': 2, '4': 3, '5': 11, '6': '.channel.v1.ChannelsReply.Channel', '10': 'channels'},
  ],
  '3': [ChannelsReply_Channel$json],
};

@$core.Deprecated('Use channelsReplyDescriptor instead')
const ChannelsReply_Channel$json = {
  '1': 'Channel',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'createDate', '3': 3, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 4, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'channelLabels', '3': 5, '4': 3, '5': 9, '10': 'channelLabels'},
    {'1': 'showLabel', '3': 6, '4': 1, '5': 9, '10': 'showLabel'},
    {'1': 'order', '3': 7, '4': 1, '5': 5, '10': 'order'},
    {'1': 'channelStatus', '3': 8, '4': 1, '5': 5, '10': 'channelStatus'},
    {'1': 'imageName', '3': 9, '4': 1, '5': 9, '10': 'imageName'},
  ],
};

/// Descriptor for `ChannelsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelsReplyDescriptor = $convert.base64Decode(
    'Cg1DaGFubmVsc1JlcGx5EicKBXJlcGx5GAEgASgLMhEuY2hhbm5lbC52MS5SZXBseVIFcmVwbH'
    'kSPQoIY2hhbm5lbHMYAiADKAsyIS5jaGFubmVsLnYxLkNoYW5uZWxzUmVwbHkuQ2hhbm5lbFII'
    'Y2hhbm5lbHMaiwIKB0NoYW5uZWwSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USHgoKY3JlYXRlRGF0ZRgDIAEoA1IKY3JlYXRlRGF0ZRIeCgp1cGRhdGVEYXRlGAQgASgDUgp1'
    'cGRhdGVEYXRlEiQKDWNoYW5uZWxMYWJlbHMYBSADKAlSDWNoYW5uZWxMYWJlbHMSHAoJc2hvd0'
    'xhYmVsGAYgASgJUglzaG93TGFiZWwSFAoFb3JkZXIYByABKAVSBW9yZGVyEiQKDWNoYW5uZWxT'
    'dGF0dXMYCCABKAVSDWNoYW5uZWxTdGF0dXMSHAoJaW1hZ2VOYW1lGAkgASgJUglpbWFnZU5hbW'
    'U=');

@$core.Deprecated('Use searchChannelReqDescriptor instead')
const SearchChannelReq$json = {
  '1': 'SearchChannelReq',
  '2': [
    {'1': 'keyword', '3': 1, '4': 1, '5': 9, '10': 'keyword'},
  ],
};

/// Descriptor for `SearchChannelReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchChannelReqDescriptor = $convert.base64Decode(
    'ChBTZWFyY2hDaGFubmVsUmVxEhgKB2tleXdvcmQYASABKAlSB2tleXdvcmQ=');

@$core.Deprecated('Use searchChannelsReplyDescriptor instead')
const SearchChannelsReply$json = {
  '1': 'SearchChannelsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel.v1.Reply', '10': 'reply'},
    {'1': 'channels', '3': 2, '4': 3, '5': 11, '6': '.channel.v1.SearchChannelsReply.Channel', '10': 'channels'},
  ],
  '3': [SearchChannelsReply_Channel$json],
};

@$core.Deprecated('Use searchChannelsReplyDescriptor instead')
const SearchChannelsReply_Channel$json = {
  '1': 'Channel',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'createDate', '3': 3, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 4, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'channelLabels', '3': 5, '4': 3, '5': 9, '10': 'channelLabels'},
    {'1': 'showLabel', '3': 6, '4': 1, '5': 9, '10': 'showLabel'},
    {'1': 'order', '3': 7, '4': 1, '5': 5, '10': 'order'},
    {'1': 'channelStatus', '3': 8, '4': 1, '5': 5, '10': 'channelStatus'},
    {'1': 'imageName', '3': 9, '4': 1, '5': 9, '10': 'imageName'},
  ],
};

/// Descriptor for `SearchChannelsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchChannelsReplyDescriptor = $convert.base64Decode(
    'ChNTZWFyY2hDaGFubmVsc1JlcGx5EicKBXJlcGx5GAEgASgLMhEuY2hhbm5lbC52MS5SZXBseV'
    'IFcmVwbHkSQwoIY2hhbm5lbHMYAiADKAsyJy5jaGFubmVsLnYxLlNlYXJjaENoYW5uZWxzUmVw'
    'bHkuQ2hhbm5lbFIIY2hhbm5lbHMaiwIKB0NoYW5uZWwSDgoCaWQYASABKAlSAmlkEhIKBG5hbW'
    'UYAiABKAlSBG5hbWUSHgoKY3JlYXRlRGF0ZRgDIAEoA1IKY3JlYXRlRGF0ZRIeCgp1cGRhdGVE'
    'YXRlGAQgASgDUgp1cGRhdGVEYXRlEiQKDWNoYW5uZWxMYWJlbHMYBSADKAlSDWNoYW5uZWxMYW'
    'JlbHMSHAoJc2hvd0xhYmVsGAYgASgJUglzaG93TGFiZWwSFAoFb3JkZXIYByABKAVSBW9yZGVy'
    'EiQKDWNoYW5uZWxTdGF0dXMYCCABKAVSDWNoYW5uZWxTdGF0dXMSHAoJaW1hZ2VOYW1lGAkgAS'
    'gJUglpbWFnZU5hbWU=');

