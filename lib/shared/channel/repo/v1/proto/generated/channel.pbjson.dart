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
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.channel_v1.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxInCgVlcnJvchgCIAEoCzIRLmNoYW5uZW'
    'xfdjEuRXJyb3JSBWVycm9y');

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

@$core.Deprecated('Use channelCategoryTypeReqDescriptor instead')
const ChannelCategoryTypeReq$json = {
  '1': 'ChannelCategoryTypeReq',
  '2': [
    {'1': 'categoryType', '3': 1, '4': 1, '5': 5, '10': 'categoryType'},
    {'1': 'limit', '3': 2, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'offset', '3': 3, '4': 1, '5': 5, '10': 'offset'},
  ],
};

/// Descriptor for `ChannelCategoryTypeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelCategoryTypeReqDescriptor = $convert.base64Decode(
    'ChZDaGFubmVsQ2F0ZWdvcnlUeXBlUmVxEiIKDGNhdGVnb3J5VHlwZRgBIAEoBVIMY2F0ZWdvcn'
    'lUeXBlEhQKBWxpbWl0GAIgASgFUgVsaW1pdBIWCgZvZmZzZXQYAyABKAVSBm9mZnNldA==');

@$core.Deprecated('Use channelCategoryTypeReplyDescriptor instead')
const ChannelCategoryTypeReply$json = {
  '1': 'ChannelCategoryTypeReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel_v1.Reply', '10': 'reply'},
    {'1': 'channelCategoryTypes', '3': 2, '4': 3, '5': 11, '6': '.channel_v1.ChannelCategoryTypeReply.ChannelCategoryType', '10': 'channelCategoryTypes'},
  ],
  '3': [ChannelCategoryTypeReply_ChannelCategoryType$json],
};

@$core.Deprecated('Use channelCategoryTypeReplyDescriptor instead')
const ChannelCategoryTypeReply_ChannelCategoryType$json = {
  '1': 'ChannelCategoryType',
  '2': [
    {'1': 'categoryType', '3': 1, '4': 1, '5': 5, '10': 'categoryType'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `ChannelCategoryTypeReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelCategoryTypeReplyDescriptor = $convert.base64Decode(
    'ChhDaGFubmVsQ2F0ZWdvcnlUeXBlUmVwbHkSJwoFcmVwbHkYASABKAsyES5jaGFubmVsX3YxLl'
    'JlcGx5UgVyZXBseRJsChRjaGFubmVsQ2F0ZWdvcnlUeXBlcxgCIAMoCzI4LmNoYW5uZWxfdjEu'
    'Q2hhbm5lbENhdGVnb3J5VHlwZVJlcGx5LkNoYW5uZWxDYXRlZ29yeVR5cGVSFGNoYW5uZWxDYX'
    'RlZ29yeVR5cGVzGmMKE0NoYW5uZWxDYXRlZ29yeVR5cGUSIgoMY2F0ZWdvcnlUeXBlGAEgASgF'
    'UgxjYXRlZ29yeVR5cGUSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVvcmRlchgDIAEoBVIFb3JkZX'
    'I=');

@$core.Deprecated('Use channelReplyDescriptor instead')
const ChannelReply$json = {
  '1': 'ChannelReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel_v1.Reply', '10': 'reply'},
    {'1': 'channels', '3': 2, '4': 3, '5': 11, '6': '.channel_v1.ChannelReply.Channel', '10': 'channels'},
  ],
  '3': [ChannelReply_ChannelLabel$json, ChannelReply_Channel$json],
};

@$core.Deprecated('Use channelReplyDescriptor instead')
const ChannelReply_ChannelLabel$json = {
  '1': 'ChannelLabel',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 5, '10': 'label'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'show', '3': 3, '4': 1, '5': 5, '10': 'show'},
  ],
};

@$core.Deprecated('Use channelReplyDescriptor instead')
const ChannelReply_Channel$json = {
  '1': 'Channel',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'linkURL', '3': 4, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'descriptions', '3': 5, '4': 3, '5': 9, '10': 'descriptions'},
    {'1': 'channelCategoryType', '3': 6, '4': 1, '5': 5, '10': 'channelCategoryType'},
    {'1': 'createDate', '3': 7, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 8, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'channelLabels', '3': 9, '4': 3, '5': 11, '6': '.channel_v1.ChannelReply.ChannelLabel', '10': 'channelLabels'},
    {'1': 'order', '3': 10, '4': 1, '5': 5, '10': 'order'},
    {'1': 'channelStatus', '3': 11, '4': 1, '5': 5, '10': 'channelStatus'},
  ],
};

/// Descriptor for `ChannelReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelReplyDescriptor = $convert.base64Decode(
    'CgxDaGFubmVsUmVwbHkSJwoFcmVwbHkYASABKAsyES5jaGFubmVsX3YxLlJlcGx5UgVyZXBseR'
    'I8CghjaGFubmVscxgCIAMoCzIgLmNoYW5uZWxfdjEuQ2hhbm5lbFJlcGx5LkNoYW5uZWxSCGNo'
    'YW5uZWxzGkwKDENoYW5uZWxMYWJlbBIUCgVsYWJlbBgBIAEoBVIFbGFiZWwSEgoEbmFtZRgCIA'
    'EoCVIEbmFtZRISCgRzaG93GAMgASgFUgRzaG93GvwCCgdDaGFubmVsEg4KAmlkGAEgASgJUgJp'
    'ZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWltYWdlGAMgASgJUgVpbWFnZRIYCgdsaW5rVVJMGA'
    'QgASgJUgdsaW5rVVJMEiIKDGRlc2NyaXB0aW9ucxgFIAMoCVIMZGVzY3JpcHRpb25zEjAKE2No'
    'YW5uZWxDYXRlZ29yeVR5cGUYBiABKAVSE2NoYW5uZWxDYXRlZ29yeVR5cGUSHgoKY3JlYXRlRG'
    'F0ZRgHIAEoA1IKY3JlYXRlRGF0ZRIeCgp1cGRhdGVEYXRlGAggASgDUgp1cGRhdGVEYXRlEksK'
    'DWNoYW5uZWxMYWJlbHMYCSADKAsyJS5jaGFubmVsX3YxLkNoYW5uZWxSZXBseS5DaGFubmVsTG'
    'FiZWxSDWNoYW5uZWxMYWJlbHMSFAoFb3JkZXIYCiABKAVSBW9yZGVyEiQKDWNoYW5uZWxTdGF0'
    'dXMYCyABKAVSDWNoYW5uZWxTdGF0dXM=');

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

@$core.Deprecated('Use searchChannelReplyDescriptor instead')
const SearchChannelReply$json = {
  '1': 'SearchChannelReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel_v1.Reply', '10': 'reply'},
    {'1': 'searchChannels', '3': 2, '4': 3, '5': 11, '6': '.channel_v1.SearchChannelReply.SearchChannel', '10': 'searchChannels'},
  ],
  '3': [SearchChannelReply_SearchChannel$json],
};

@$core.Deprecated('Use searchChannelReplyDescriptor instead')
const SearchChannelReply_SearchChannel$json = {
  '1': 'SearchChannel',
  '2': [
    {'1': 'channelCategoryType', '3': 1, '4': 1, '5': 11, '6': '.channel_v1.SearchChannelReply.SearchChannel.ChannelCategoryType', '10': 'channelCategoryType'},
    {'1': 'channels', '3': 2, '4': 3, '5': 11, '6': '.channel_v1.SearchChannelReply.SearchChannel.Channel', '10': 'channels'},
  ],
  '3': [SearchChannelReply_SearchChannel_ChannelLabel$json, SearchChannelReply_SearchChannel_Channel$json, SearchChannelReply_SearchChannel_ChannelCategoryType$json],
};

@$core.Deprecated('Use searchChannelReplyDescriptor instead')
const SearchChannelReply_SearchChannel_ChannelLabel$json = {
  '1': 'ChannelLabel',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 5, '10': 'label'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'show', '3': 3, '4': 1, '5': 5, '10': 'show'},
  ],
};

@$core.Deprecated('Use searchChannelReplyDescriptor instead')
const SearchChannelReply_SearchChannel_Channel$json = {
  '1': 'Channel',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'linkURL', '3': 4, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'descriptions', '3': 5, '4': 3, '5': 9, '10': 'descriptions'},
    {'1': 'channelCategoryType', '3': 6, '4': 1, '5': 5, '10': 'channelCategoryType'},
    {'1': 'createDate', '3': 7, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 8, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'channelLabels', '3': 9, '4': 3, '5': 11, '6': '.channel_v1.SearchChannelReply.SearchChannel.ChannelLabel', '10': 'channelLabels'},
    {'1': 'order', '3': 10, '4': 1, '5': 5, '10': 'order'},
    {'1': 'channelStatus', '3': 11, '4': 1, '5': 5, '10': 'channelStatus'},
  ],
};

@$core.Deprecated('Use searchChannelReplyDescriptor instead')
const SearchChannelReply_SearchChannel_ChannelCategoryType$json = {
  '1': 'ChannelCategoryType',
  '2': [
    {'1': 'categoryType', '3': 1, '4': 1, '5': 5, '10': 'categoryType'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `SearchChannelReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchChannelReplyDescriptor = $convert.base64Decode(
    'ChJTZWFyY2hDaGFubmVsUmVwbHkSJwoFcmVwbHkYASABKAsyES5jaGFubmVsX3YxLlJlcGx5Ug'
    'VyZXBseRJUCg5zZWFyY2hDaGFubmVscxgCIAMoCzIsLmNoYW5uZWxfdjEuU2VhcmNoQ2hhbm5l'
    'bFJlcGx5LlNlYXJjaENoYW5uZWxSDnNlYXJjaENoYW5uZWxzGpsGCg1TZWFyY2hDaGFubmVsEn'
    'IKE2NoYW5uZWxDYXRlZ29yeVR5cGUYASABKAsyQC5jaGFubmVsX3YxLlNlYXJjaENoYW5uZWxS'
    'ZXBseS5TZWFyY2hDaGFubmVsLkNoYW5uZWxDYXRlZ29yeVR5cGVSE2NoYW5uZWxDYXRlZ29yeV'
    'R5cGUSUAoIY2hhbm5lbHMYAiADKAsyNC5jaGFubmVsX3YxLlNlYXJjaENoYW5uZWxSZXBseS5T'
    'ZWFyY2hDaGFubmVsLkNoYW5uZWxSCGNoYW5uZWxzGkwKDENoYW5uZWxMYWJlbBIUCgVsYWJlbB'
    'gBIAEoBVIFbGFiZWwSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRzaG93GAMgASgFUgRzaG93GpAD'
    'CgdDaGFubmVsEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWltYWdlGA'
    'MgASgJUgVpbWFnZRIYCgdsaW5rVVJMGAQgASgJUgdsaW5rVVJMEiIKDGRlc2NyaXB0aW9ucxgF'
    'IAMoCVIMZGVzY3JpcHRpb25zEjAKE2NoYW5uZWxDYXRlZ29yeVR5cGUYBiABKAVSE2NoYW5uZW'
    'xDYXRlZ29yeVR5cGUSHgoKY3JlYXRlRGF0ZRgHIAEoA1IKY3JlYXRlRGF0ZRIeCgp1cGRhdGVE'
    'YXRlGAggASgDUgp1cGRhdGVEYXRlEl8KDWNoYW5uZWxMYWJlbHMYCSADKAsyOS5jaGFubmVsX3'
    'YxLlNlYXJjaENoYW5uZWxSZXBseS5TZWFyY2hDaGFubmVsLkNoYW5uZWxMYWJlbFINY2hhbm5l'
    'bExhYmVscxIUCgVvcmRlchgKIAEoBVIFb3JkZXISJAoNY2hhbm5lbFN0YXR1cxgLIAEoBVINY2'
    'hhbm5lbFN0YXR1cxpjChNDaGFubmVsQ2F0ZWdvcnlUeXBlEiIKDGNhdGVnb3J5VHlwZRgBIAEo'
    'BVIMY2F0ZWdvcnlUeXBlEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFb3JkZXIYAyABKAVSBW9yZG'
    'Vy');

@$core.Deprecated('Use channelLabelsReplyDescriptor instead')
const ChannelLabelsReply$json = {
  '1': 'ChannelLabelsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel_v1.Reply', '10': 'reply'},
    {'1': 'channelLabels', '3': 2, '4': 3, '5': 11, '6': '.channel_v1.ChannelLabelsReply.ChannelLabel', '10': 'channelLabels'},
  ],
  '3': [ChannelLabelsReply_ChannelLabel$json],
};

@$core.Deprecated('Use channelLabelsReplyDescriptor instead')
const ChannelLabelsReply_ChannelLabel$json = {
  '1': 'ChannelLabel',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 5, '10': 'label'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ChannelLabelsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelLabelsReplyDescriptor = $convert.base64Decode(
    'ChJDaGFubmVsTGFiZWxzUmVwbHkSJwoFcmVwbHkYASABKAsyES5jaGFubmVsX3YxLlJlcGx5Ug'
    'VyZXBseRJRCg1jaGFubmVsTGFiZWxzGAIgAygLMisuY2hhbm5lbF92MS5DaGFubmVsTGFiZWxz'
    'UmVwbHkuQ2hhbm5lbExhYmVsUg1jaGFubmVsTGFiZWxzGjgKDENoYW5uZWxMYWJlbBIUCgVsYW'
    'JlbBgBIAEoBVIFbGFiZWwSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');

