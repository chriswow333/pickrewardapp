//
//  Generated code. Do not modify.
//  source: pay.proto
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

@$core.Deprecated('Use payProtoReplyDescriptor instead')
const PayProtoReply$json = {
  '1': 'PayProtoReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.pay.Reply', '10': 'reply'},
    {'1': 'payProto', '3': 2, '4': 3, '5': 11, '6': '.pay.PayProto', '10': 'payProto'},
  ],
};

/// Descriptor for `PayProtoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payProtoReplyDescriptor = $convert.base64Decode(
    'Cg1QYXlQcm90b1JlcGx5EiAKBXJlcGx5GAEgASgLMgoucGF5LlJlcGx5UgVyZXBseRIpCghwYX'
    'lQcm90bxgCIAMoCzINLnBheS5QYXlQcm90b1IIcGF5UHJvdG8=');

@$core.Deprecated('Use payProtoDescriptor instead')
const PayProto$json = {
  '1': 'PayProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'linkURL', '3': 4, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'descriptions', '3': 5, '4': 3, '5': 9, '10': 'descriptions'},
    {'1': 'createDate', '3': 6, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 7, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'order', '3': 8, '4': 1, '5': 5, '10': 'order'},
    {'1': 'payStatus', '3': 9, '4': 1, '5': 5, '10': 'payStatus'},
  ],
};

/// Descriptor for `PayProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payProtoDescriptor = $convert.base64Decode(
    'CghQYXlQcm90bxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVpbWFnZR'
    'gDIAEoCVIFaW1hZ2USGAoHbGlua1VSTBgEIAEoCVIHbGlua1VSTBIiCgxkZXNjcmlwdGlvbnMY'
    'BSADKAlSDGRlc2NyaXB0aW9ucxIeCgpjcmVhdGVEYXRlGAYgASgDUgpjcmVhdGVEYXRlEh4KCn'
    'VwZGF0ZURhdGUYByABKANSCnVwZGF0ZURhdGUSFAoFb3JkZXIYCCABKAVSBW9yZGVyEhwKCXBh'
    'eVN0YXR1cxgJIAEoBVIJcGF5U3RhdHVz');

@$core.Deprecated('Use replyDescriptor instead')
const Reply$json = {
  '1': 'Reply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.pay.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIgCgVlcnJvchgCIAEoCzIKLnBheS5Fcn'
    'JvclIFZXJyb3I=');

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

