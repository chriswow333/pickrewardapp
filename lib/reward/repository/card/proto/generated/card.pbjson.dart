//
//  Generated code. Do not modify.
//  source: card.proto
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

@$core.Deprecated('Use bandIDProtoDescriptor instead')
const BandIDProto$json = {
  '1': 'BandIDProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `BandIDProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bandIDProtoDescriptor = $convert.base64Decode(
    'CgtCYW5kSURQcm90bxIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use cardProtoDescriptor instead')
const CardProto$json = {
  '1': 'CardProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'descriptions', '3': 3, '4': 3, '5': 9, '10': 'descriptions'},
    {'1': 'image', '3': 4, '4': 1, '5': 9, '10': 'image'},
    {'1': 'createDate', '3': 5, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 6, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'linkURL', '3': 7, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'bankID', '3': 8, '4': 1, '5': 9, '10': 'bankID'},
    {'1': 'order', '3': 9, '4': 1, '5': 5, '10': 'order'},
    {'1': 'cardStatus', '3': 10, '4': 1, '5': 5, '10': 'cardStatus'},
  ],
};

/// Descriptor for `CardProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardProtoDescriptor = $convert.base64Decode(
    'CglDYXJkUHJvdG8SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIgoMZGVzY3'
    'JpcHRpb25zGAMgAygJUgxkZXNjcmlwdGlvbnMSFAoFaW1hZ2UYBCABKAlSBWltYWdlEh4KCmNy'
    'ZWF0ZURhdGUYBSABKANSCmNyZWF0ZURhdGUSHgoKdXBkYXRlRGF0ZRgGIAEoA1IKdXBkYXRlRG'
    'F0ZRIYCgdsaW5rVVJMGAcgASgJUgdsaW5rVVJMEhYKBmJhbmtJRBgIIAEoCVIGYmFua0lEEhQK'
    'BW9yZGVyGAkgASgFUgVvcmRlchIeCgpjYXJkU3RhdHVzGAogASgFUgpjYXJkU3RhdHVz');

@$core.Deprecated('Use cardsProtoReplyDescriptor instead')
const CardsProtoReply$json = {
  '1': 'CardsProtoReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.Reply', '10': 'reply'},
    {'1': 'cards', '3': 2, '4': 3, '5': 11, '6': '.card.CardProto', '10': 'cards'},
  ],
};

/// Descriptor for `CardsProtoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardsProtoReplyDescriptor = $convert.base64Decode(
    'Cg9DYXJkc1Byb3RvUmVwbHkSIQoFcmVwbHkYASABKAsyCy5jYXJkLlJlcGx5UgVyZXBseRIlCg'
    'VjYXJkcxgCIAMoCzIPLmNhcmQuQ2FyZFByb3RvUgVjYXJkcw==');

@$core.Deprecated('Use banksProtoReplyDescriptor instead')
const BanksProtoReply$json = {
  '1': 'BanksProtoReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.Reply', '10': 'reply'},
    {'1': 'banks', '3': 2, '4': 3, '5': 11, '6': '.card.BankProto', '10': 'banks'},
  ],
};

/// Descriptor for `BanksProtoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banksProtoReplyDescriptor = $convert.base64Decode(
    'Cg9CYW5rc1Byb3RvUmVwbHkSIQoFcmVwbHkYASABKAsyCy5jYXJkLlJlcGx5UgVyZXBseRIlCg'
    'ViYW5rcxgCIAMoCzIPLmNhcmQuQmFua1Byb3RvUgViYW5rcw==');

@$core.Deprecated('Use bankProtoDescriptor instead')
const BankProto$json = {
  '1': 'BankProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'order', '3': 4, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `BankProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bankProtoDescriptor = $convert.base64Decode(
    'CglCYW5rUHJvdG8SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFaW1hZ2'
    'UYAyABKAlSBWltYWdlEhQKBW9yZGVyGAQgASgFUgVvcmRlcg==');

@$core.Deprecated('Use replyDescriptor instead')
const Reply$json = {
  '1': 'Reply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.card.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIhCgVlcnJvchgCIAEoCzILLmNhcmQuRX'
    'Jyb3JSBWVycm9y');

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

