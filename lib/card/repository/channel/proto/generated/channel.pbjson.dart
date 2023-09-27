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

@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode(
    'CgxFbXB0eVJlcXVlc3Q=');

@$core.Deprecated('Use channelCategoryTypeRequestDescriptor instead')
const ChannelCategoryTypeRequest$json = {
  '1': 'ChannelCategoryTypeRequest',
  '2': [
    {'1': 'channelCategoryType', '3': 1, '4': 1, '5': 5, '10': 'channelCategoryType'},
    {'1': 'limit', '3': 2, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'offset', '3': 3, '4': 1, '5': 5, '10': 'offset'},
  ],
};

/// Descriptor for `ChannelCategoryTypeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelCategoryTypeRequestDescriptor = $convert.base64Decode(
    'ChpDaGFubmVsQ2F0ZWdvcnlUeXBlUmVxdWVzdBIwChNjaGFubmVsQ2F0ZWdvcnlUeXBlGAEgAS'
    'gFUhNjaGFubmVsQ2F0ZWdvcnlUeXBlEhQKBWxpbWl0GAIgASgFUgVsaW1pdBIWCgZvZmZzZXQY'
    'AyABKAVSBm9mZnNldA==');

@$core.Deprecated('Use channelCategoryTypeProtoReplyDescriptor instead')
const ChannelCategoryTypeProtoReply$json = {
  '1': 'ChannelCategoryTypeProtoReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel.Reply', '10': 'reply'},
    {'1': 'channelCategoryTypeProto', '3': 2, '4': 3, '5': 11, '6': '.channel.ChannelCategoryTypeProto', '10': 'channelCategoryTypeProto'},
  ],
};

/// Descriptor for `ChannelCategoryTypeProtoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelCategoryTypeProtoReplyDescriptor = $convert.base64Decode(
    'Ch1DaGFubmVsQ2F0ZWdvcnlUeXBlUHJvdG9SZXBseRIkCgVyZXBseRgBIAEoCzIOLmNoYW5uZW'
    'wuUmVwbHlSBXJlcGx5El0KGGNoYW5uZWxDYXRlZ29yeVR5cGVQcm90bxgCIAMoCzIhLmNoYW5u'
    'ZWwuQ2hhbm5lbENhdGVnb3J5VHlwZVByb3RvUhhjaGFubmVsQ2F0ZWdvcnlUeXBlUHJvdG8=');

@$core.Deprecated('Use channelCategoryTypeProtoDescriptor instead')
const ChannelCategoryTypeProto$json = {
  '1': 'ChannelCategoryTypeProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `ChannelCategoryTypeProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelCategoryTypeProtoDescriptor = $convert.base64Decode(
    'ChhDaGFubmVsQ2F0ZWdvcnlUeXBlUHJvdG8SDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUSFAoFb3JkZXIYAyABKAVSBW9yZGVy');

@$core.Deprecated('Use channelProtoReplyDescriptor instead')
const ChannelProtoReply$json = {
  '1': 'ChannelProtoReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.channel.Reply', '10': 'reply'},
    {'1': 'channelProto', '3': 2, '4': 3, '5': 11, '6': '.channel.ChannelProto', '10': 'channelProto'},
  ],
};

/// Descriptor for `ChannelProtoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelProtoReplyDescriptor = $convert.base64Decode(
    'ChFDaGFubmVsUHJvdG9SZXBseRIkCgVyZXBseRgBIAEoCzIOLmNoYW5uZWwuUmVwbHlSBXJlcG'
    'x5EjkKDGNoYW5uZWxQcm90bxgCIAMoCzIVLmNoYW5uZWwuQ2hhbm5lbFByb3RvUgxjaGFubmVs'
    'UHJvdG8=');

@$core.Deprecated('Use channelProtoDescriptor instead')
const ChannelProto$json = {
  '1': 'ChannelProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'linkURL', '3': 4, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'descriptions', '3': 5, '4': 3, '5': 9, '10': 'descriptions'},
    {'1': 'channelCategoryType', '3': 6, '4': 1, '5': 5, '10': 'channelCategoryType'},
    {'1': 'createDate', '3': 7, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 8, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'channelLabelProtos', '3': 9, '4': 3, '5': 11, '6': '.channel.ChannelLabelProto', '10': 'channelLabelProtos'},
    {'1': 'order', '3': 10, '4': 1, '5': 5, '10': 'order'},
    {'1': 'channelStatus', '3': 11, '4': 1, '5': 5, '10': 'channelStatus'},
  ],
};

/// Descriptor for `ChannelProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelProtoDescriptor = $convert.base64Decode(
    'CgxDaGFubmVsUHJvdG8SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFaW'
    '1hZ2UYAyABKAlSBWltYWdlEhgKB2xpbmtVUkwYBCABKAlSB2xpbmtVUkwSIgoMZGVzY3JpcHRp'
    'b25zGAUgAygJUgxkZXNjcmlwdGlvbnMSMAoTY2hhbm5lbENhdGVnb3J5VHlwZRgGIAEoBVITY2'
    'hhbm5lbENhdGVnb3J5VHlwZRIeCgpjcmVhdGVEYXRlGAcgASgDUgpjcmVhdGVEYXRlEh4KCnVw'
    'ZGF0ZURhdGUYCCABKANSCnVwZGF0ZURhdGUSSgoSY2hhbm5lbExhYmVsUHJvdG9zGAkgAygLMh'
    'ouY2hhbm5lbC5DaGFubmVsTGFiZWxQcm90b1ISY2hhbm5lbExhYmVsUHJvdG9zEhQKBW9yZGVy'
    'GAogASgFUgVvcmRlchIkCg1jaGFubmVsU3RhdHVzGAsgASgFUg1jaGFubmVsU3RhdHVz');

@$core.Deprecated('Use channelLabelProtoDescriptor instead')
const ChannelLabelProto$json = {
  '1': 'ChannelLabelProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `ChannelLabelProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelLabelProtoDescriptor = $convert.base64Decode(
    'ChFDaGFubmVsTGFiZWxQcm90bxIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'IUCgVvcmRlchgDIAEoBVIFb3JkZXI=');

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

