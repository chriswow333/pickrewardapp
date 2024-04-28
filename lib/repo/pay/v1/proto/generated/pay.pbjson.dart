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

@$core.Deprecated('Use replyDescriptor instead')
const Reply$json = {
  '1': 'Reply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.pay.v1.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIjCgVlcnJvchgCIAEoCzINLnBheS52MS'
    '5FcnJvclIFZXJyb3I=');

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

@$core.Deprecated('Use payIDReqDescriptor instead')
const PayIDReq$json = {
  '1': 'PayIDReq',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `PayIDReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payIDReqDescriptor = $convert.base64Decode(
    'CghQYXlJRFJlcRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use paysReplyDescriptor instead')
const PaysReply$json = {
  '1': 'PaysReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.pay.v1.Reply', '10': 'reply'},
    {'1': 'pays', '3': 2, '4': 3, '5': 11, '6': '.pay.v1.PaysReply.Pay', '10': 'pays'},
  ],
  '3': [PaysReply_Pay$json],
};

@$core.Deprecated('Use paysReplyDescriptor instead')
const PaysReply_Pay$json = {
  '1': 'Pay',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
    {'1': 'payStatus', '3': 4, '4': 1, '5': 5, '10': 'payStatus'},
    {'1': 'createDate', '3': 5, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 6, '4': 1, '5': 3, '10': 'updateDate'},
  ],
};

/// Descriptor for `PaysReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paysReplyDescriptor = $convert.base64Decode(
    'CglQYXlzUmVwbHkSIwoFcmVwbHkYASABKAsyDS5wYXkudjEuUmVwbHlSBXJlcGx5EikKBHBheX'
    'MYAiADKAsyFS5wYXkudjEuUGF5c1JlcGx5LlBheVIEcGF5cxqdAQoDUGF5Eg4KAmlkGAEgASgJ'
    'UgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBW9yZGVyGAMgASgFUgVvcmRlchIcCglwYXlTdG'
    'F0dXMYBCABKAVSCXBheVN0YXR1cxIeCgpjcmVhdGVEYXRlGAUgASgDUgpjcmVhdGVEYXRlEh4K'
    'CnVwZGF0ZURhdGUYBiABKANSCnVwZGF0ZURhdGU=');

@$core.Deprecated('Use payReplyDescriptor instead')
const PayReply$json = {
  '1': 'PayReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.pay.v1.Reply', '10': 'reply'},
    {'1': 'pay', '3': 2, '4': 1, '5': 11, '6': '.pay.v1.PayReply.Pay', '10': 'pay'},
  ],
  '3': [PayReply_Pay$json],
};

@$core.Deprecated('Use payReplyDescriptor instead')
const PayReply_Pay$json = {
  '1': 'Pay',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
    {'1': 'payStatus', '3': 4, '4': 1, '5': 5, '10': 'payStatus'},
    {'1': 'createDate', '3': 5, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 6, '4': 1, '5': 3, '10': 'updateDate'},
  ],
};

/// Descriptor for `PayReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payReplyDescriptor = $convert.base64Decode(
    'CghQYXlSZXBseRIjCgVyZXBseRgBIAEoCzINLnBheS52MS5SZXBseVIFcmVwbHkSJgoDcGF5GA'
    'IgASgLMhQucGF5LnYxLlBheVJlcGx5LlBheVIDcGF5Gp0BCgNQYXkSDgoCaWQYASABKAlSAmlk'
    'EhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFb3JkZXIYAyABKAVSBW9yZGVyEhwKCXBheVN0YXR1cx'
    'gEIAEoBVIJcGF5U3RhdHVzEh4KCmNyZWF0ZURhdGUYBSABKANSCmNyZWF0ZURhdGUSHgoKdXBk'
    'YXRlRGF0ZRgGIAEoA1IKdXBkYXRlRGF0ZQ==');

@$core.Deprecated('Use emptyReqDescriptor instead')
const EmptyReq$json = {
  '1': 'EmptyReq',
};

/// Descriptor for `EmptyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyReqDescriptor = $convert.base64Decode(
    'CghFbXB0eVJlcQ==');

