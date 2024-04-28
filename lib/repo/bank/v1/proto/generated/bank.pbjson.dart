//
//  Generated code. Do not modify.
//  source: bank.proto
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
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.bank.v1.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIkCgVlcnJvchgCIAEoCzIOLmJhbmsudj'
    'EuRXJyb3JSBWVycm9y');

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

@$core.Deprecated('Use allBanksReqDescriptor instead')
const AllBanksReq$json = {
  '1': 'AllBanksReq',
};

/// Descriptor for `AllBanksReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allBanksReqDescriptor = $convert.base64Decode(
    'CgtBbGxCYW5rc1JlcQ==');

@$core.Deprecated('Use banksReplyDescriptor instead')
const BanksReply$json = {
  '1': 'BanksReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.bank.v1.Reply', '10': 'reply'},
    {'1': 'banks', '3': 2, '4': 3, '5': 11, '6': '.bank.v1.BanksReply.Bank', '10': 'banks'},
  ],
  '3': [BanksReply_Bank$json],
};

@$core.Deprecated('Use banksReplyDescriptor instead')
const BanksReply_Bank$json = {
  '1': 'Bank',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
    {'1': 'bankStatus', '3': 4, '4': 1, '5': 5, '10': 'bankStatus'},
  ],
};

/// Descriptor for `BanksReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banksReplyDescriptor = $convert.base64Decode(
    'CgpCYW5rc1JlcGx5EiQKBXJlcGx5GAEgASgLMg4uYmFuay52MS5SZXBseVIFcmVwbHkSLgoFYm'
    'Fua3MYAiADKAsyGC5iYW5rLnYxLkJhbmtzUmVwbHkuQmFua1IFYmFua3MaYAoEQmFuaxIOCgJp'
    'ZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVvcmRlchgDIAEoBVIFb3JkZXISHg'
    'oKYmFua1N0YXR1cxgEIAEoBVIKYmFua1N0YXR1cw==');

