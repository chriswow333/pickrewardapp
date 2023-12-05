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

@$core.Deprecated('Use payIDsReqDescriptor instead')
const PayIDsReq$json = {
  '1': 'PayIDsReq',
  '2': [
    {'1': 'payIDs', '3': 1, '4': 3, '5': 9, '10': 'payIDs'},
  ],
};

/// Descriptor for `PayIDsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payIDsReqDescriptor = $convert.base64Decode(
    'CglQYXlJRHNSZXESFgoGcGF5SURzGAEgAygJUgZwYXlJRHM=');

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

@$core.Deprecated('Use allPaysReqDescriptor instead')
const AllPaysReq$json = {
  '1': 'AllPaysReq',
  '2': [
    {'1': 'limit', '3': 1, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'offset', '3': 2, '4': 1, '5': 5, '10': 'offset'},
  ],
};

/// Descriptor for `AllPaysReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allPaysReqDescriptor = $convert.base64Decode(
    'CgpBbGxQYXlzUmVxEhQKBWxpbWl0GAEgASgFUgVsaW1pdBIWCgZvZmZzZXQYAiABKAVSBm9mZn'
    'NldA==');

@$core.Deprecated('Use paysReplyDescriptor instead')
const PaysReply$json = {
  '1': 'PaysReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.pay.Reply', '10': 'reply'},
    {'1': 'pays', '3': 2, '4': 3, '5': 11, '6': '.pay.PaysReply.Pay', '10': 'pays'},
  ],
  '3': [PaysReply_Pay$json],
};

@$core.Deprecated('Use paysReplyDescriptor instead')
const PaysReply_Pay$json = {
  '1': 'Pay',
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

/// Descriptor for `PaysReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paysReplyDescriptor = $convert.base64Decode(
    'CglQYXlzUmVwbHkSIAoFcmVwbHkYASABKAsyCi5wYXkuUmVwbHlSBXJlcGx5EiYKBHBheXMYAi'
    'ADKAsyEi5wYXkuUGF5c1JlcGx5LlBheVIEcGF5cxrxAQoDUGF5Eg4KAmlkGAEgASgJUgJpZBIS'
    'CgRuYW1lGAIgASgJUgRuYW1lEhQKBWltYWdlGAMgASgJUgVpbWFnZRIYCgdsaW5rVVJMGAQgAS'
    'gJUgdsaW5rVVJMEiIKDGRlc2NyaXB0aW9ucxgFIAMoCVIMZGVzY3JpcHRpb25zEh4KCmNyZWF0'
    'ZURhdGUYBiABKANSCmNyZWF0ZURhdGUSHgoKdXBkYXRlRGF0ZRgHIAEoA1IKdXBkYXRlRGF0ZR'
    'IUCgVvcmRlchgIIAEoBVIFb3JkZXISHAoJcGF5U3RhdHVzGAkgASgFUglwYXlTdGF0dXM=');

