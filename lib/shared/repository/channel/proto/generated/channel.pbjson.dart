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

