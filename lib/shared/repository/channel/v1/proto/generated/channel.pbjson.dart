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
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.channel.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIkCgVlcnJvchgCIAEoCzIOLmNoYW5uZW'
    'wuRXJyb3JSBWVycm9y');

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
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel.Reply', '10': 'reply'},
    {'1': 'channelCategoryTypes', '3': 2, '4': 3, '5': 11, '6': '.channel.ChannelCategoryTypeReply.ChannelCategoryType', '10': 'channelCategoryTypes'},
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
    'ChhDaGFubmVsQ2F0ZWdvcnlUeXBlUmVwbHkSJAoFcmVwbHkYASABKAsyDi5jaGFubmVsLlJlcG'
    'x5UgVyZXBseRJpChRjaGFubmVsQ2F0ZWdvcnlUeXBlcxgCIAMoCzI1LmNoYW5uZWwuQ2hhbm5l'
    'bENhdGVnb3J5VHlwZVJlcGx5LkNoYW5uZWxDYXRlZ29yeVR5cGVSFGNoYW5uZWxDYXRlZ29yeV'
    'R5cGVzGmMKE0NoYW5uZWxDYXRlZ29yeVR5cGUSIgoMY2F0ZWdvcnlUeXBlGAEgASgFUgxjYXRl'
    'Z29yeVR5cGUSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVvcmRlchgDIAEoBVIFb3JkZXI=');

@$core.Deprecated('Use channelReplyDescriptor instead')
const ChannelReply$json = {
  '1': 'ChannelReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel.Reply', '10': 'reply'},
    {'1': 'channels', '3': 2, '4': 3, '5': 11, '6': '.channel.ChannelReply.Channel', '10': 'channels'},
  ],
  '3': [ChannelReply_Channel$json],
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
    {'1': 'labels', '3': 9, '4': 3, '5': 5, '10': 'labels'},
    {'1': 'order', '3': 10, '4': 1, '5': 5, '10': 'order'},
    {'1': 'channelStatus', '3': 11, '4': 1, '5': 5, '10': 'channelStatus'},
  ],
};

/// Descriptor for `ChannelReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelReplyDescriptor = $convert.base64Decode(
    'CgxDaGFubmVsUmVwbHkSJAoFcmVwbHkYASABKAsyDi5jaGFubmVsLlJlcGx5UgVyZXBseRI5Cg'
    'hjaGFubmVscxgCIAMoCzIdLmNoYW5uZWwuQ2hhbm5lbFJlcGx5LkNoYW5uZWxSCGNoYW5uZWxz'
    'GscCCgdDaGFubmVsEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWltYW'
    'dlGAMgASgJUgVpbWFnZRIYCgdsaW5rVVJMGAQgASgJUgdsaW5rVVJMEiIKDGRlc2NyaXB0aW9u'
    'cxgFIAMoCVIMZGVzY3JpcHRpb25zEjAKE2NoYW5uZWxDYXRlZ29yeVR5cGUYBiABKAVSE2NoYW'
    '5uZWxDYXRlZ29yeVR5cGUSHgoKY3JlYXRlRGF0ZRgHIAEoA1IKY3JlYXRlRGF0ZRIeCgp1cGRh'
    'dGVEYXRlGAggASgDUgp1cGRhdGVEYXRlEhYKBmxhYmVscxgJIAMoBVIGbGFiZWxzEhQKBW9yZG'
    'VyGAogASgFUgVvcmRlchIkCg1jaGFubmVsU3RhdHVzGAsgASgFUg1jaGFubmVsU3RhdHVz');

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
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel.Reply', '10': 'reply'},
    {'1': 'searchChannels', '3': 2, '4': 3, '5': 11, '6': '.channel.SearchChannelReply.SearchChannel', '10': 'searchChannels'},
  ],
  '3': [SearchChannelReply_SearchChannel$json],
};

@$core.Deprecated('Use searchChannelReplyDescriptor instead')
const SearchChannelReply_SearchChannel$json = {
  '1': 'SearchChannel',
  '2': [
    {'1': 'channelCategoryType', '3': 1, '4': 1, '5': 11, '6': '.channel.SearchChannelReply.SearchChannel.ChannelCategoryType', '10': 'channelCategoryType'},
    {'1': 'channels', '3': 2, '4': 3, '5': 11, '6': '.channel.SearchChannelReply.SearchChannel.Channel', '10': 'channels'},
  ],
  '3': [SearchChannelReply_SearchChannel_Channel$json, SearchChannelReply_SearchChannel_ChannelCategoryType$json],
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
    {'1': 'labels', '3': 9, '4': 3, '5': 5, '10': 'labels'},
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
    'ChJTZWFyY2hDaGFubmVsUmVwbHkSJAoFcmVwbHkYASABKAsyDi5jaGFubmVsLlJlcGx5UgVyZX'
    'BseRJRCg5zZWFyY2hDaGFubmVscxgCIAMoCzIpLmNoYW5uZWwuU2VhcmNoQ2hhbm5lbFJlcGx5'
    'LlNlYXJjaENoYW5uZWxSDnNlYXJjaENoYW5uZWxzGv4ECg1TZWFyY2hDaGFubmVsEm8KE2NoYW'
    '5uZWxDYXRlZ29yeVR5cGUYASABKAsyPS5jaGFubmVsLlNlYXJjaENoYW5uZWxSZXBseS5TZWFy'
    'Y2hDaGFubmVsLkNoYW5uZWxDYXRlZ29yeVR5cGVSE2NoYW5uZWxDYXRlZ29yeVR5cGUSTQoIY2'
    'hhbm5lbHMYAiADKAsyMS5jaGFubmVsLlNlYXJjaENoYW5uZWxSZXBseS5TZWFyY2hDaGFubmVs'
    'LkNoYW5uZWxSCGNoYW5uZWxzGscCCgdDaGFubmVsEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGA'
    'IgASgJUgRuYW1lEhQKBWltYWdlGAMgASgJUgVpbWFnZRIYCgdsaW5rVVJMGAQgASgJUgdsaW5r'
    'VVJMEiIKDGRlc2NyaXB0aW9ucxgFIAMoCVIMZGVzY3JpcHRpb25zEjAKE2NoYW5uZWxDYXRlZ2'
    '9yeVR5cGUYBiABKAVSE2NoYW5uZWxDYXRlZ29yeVR5cGUSHgoKY3JlYXRlRGF0ZRgHIAEoA1IK'
    'Y3JlYXRlRGF0ZRIeCgp1cGRhdGVEYXRlGAggASgDUgp1cGRhdGVEYXRlEhYKBmxhYmVscxgJIA'
    'MoBVIGbGFiZWxzEhQKBW9yZGVyGAogASgFUgVvcmRlchIkCg1jaGFubmVsU3RhdHVzGAsgASgF'
    'Ug1jaGFubmVsU3RhdHVzGmMKE0NoYW5uZWxDYXRlZ29yeVR5cGUSIgoMY2F0ZWdvcnlUeXBlGA'
    'EgASgFUgxjYXRlZ29yeVR5cGUSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVvcmRlchgDIAEoBVIF'
    'b3JkZXI=');

@$core.Deprecated('Use channelLabelsReplyDescriptor instead')
const ChannelLabelsReply$json = {
  '1': 'ChannelLabelsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel.Reply', '10': 'reply'},
    {'1': 'channelLabels', '3': 2, '4': 3, '5': 11, '6': '.channel.ChannelLabelsReply.ChannelLabel', '10': 'channelLabels'},
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
    'ChJDaGFubmVsTGFiZWxzUmVwbHkSJAoFcmVwbHkYASABKAsyDi5jaGFubmVsLlJlcGx5UgVyZX'
    'BseRJOCg1jaGFubmVsTGFiZWxzGAIgAygLMiguY2hhbm5lbC5DaGFubmVsTGFiZWxzUmVwbHku'
    'Q2hhbm5lbExhYmVsUg1jaGFubmVsTGFiZWxzGjgKDENoYW5uZWxMYWJlbBIUCgVsYWJlbBgBIA'
    'EoBVIFbGFiZWwSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');

