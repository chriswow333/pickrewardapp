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

@$core.Deprecated('Use replyDescriptor instead')
const Reply$json = {
  '1': 'Reply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.card.v1.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIkCgVlcnJvchgCIAEoCzIOLmNhcmQudj'
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

@$core.Deprecated('Use cardsByBankIDReqDescriptor instead')
const CardsByBankIDReq$json = {
  '1': 'CardsByBankIDReq',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CardsByBankIDReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardsByBankIDReqDescriptor = $convert.base64Decode(
    'ChBDYXJkc0J5QmFua0lEUmVxEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use cardIDReqDescriptor instead')
const CardIDReq$json = {
  '1': 'CardIDReq',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CardIDReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardIDReqDescriptor = $convert.base64Decode(
    'CglDYXJkSURSZXESDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use cardsReplyDescriptor instead')
const CardsReply$json = {
  '1': 'CardsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.v1.Reply', '10': 'reply'},
    {'1': 'cards', '3': 2, '4': 3, '5': 11, '6': '.card.v1.CardsReply.Card', '10': 'cards'},
  ],
  '3': [CardsReply_Card$json],
};

@$core.Deprecated('Use cardsReplyDescriptor instead')
const CardsReply_Card$json = {
  '1': 'Card',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'descriptions', '3': 3, '4': 3, '5': 9, '10': 'descriptions'},
    {'1': 'linkURL', '3': 4, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'bankID', '3': 5, '4': 1, '5': 9, '10': 'bankID'},
    {'1': 'order', '3': 6, '4': 1, '5': 5, '10': 'order'},
    {'1': 'cardStatus', '3': 7, '4': 1, '5': 5, '10': 'cardStatus'},
    {'1': 'createDate', '3': 8, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 9, '4': 1, '5': 3, '10': 'updateDate'},
  ],
};

/// Descriptor for `CardsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardsReplyDescriptor = $convert.base64Decode(
    'CgpDYXJkc1JlcGx5EiQKBXJlcGx5GAEgASgLMg4uY2FyZC52MS5SZXBseVIFcmVwbHkSLgoFY2'
    'FyZHMYAiADKAsyGC5jYXJkLnYxLkNhcmRzUmVwbHkuQ2FyZFIFY2FyZHMa9gEKBENhcmQSDgoC'
    'aWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIgoMZGVzY3JpcHRpb25zGAMgAygJUg'
    'xkZXNjcmlwdGlvbnMSGAoHbGlua1VSTBgEIAEoCVIHbGlua1VSTBIWCgZiYW5rSUQYBSABKAlS'
    'BmJhbmtJRBIUCgVvcmRlchgGIAEoBVIFb3JkZXISHgoKY2FyZFN0YXR1cxgHIAEoBVIKY2FyZF'
    'N0YXR1cxIeCgpjcmVhdGVEYXRlGAggASgDUgpjcmVhdGVEYXRlEh4KCnVwZGF0ZURhdGUYCSAB'
    'KANSCnVwZGF0ZURhdGU=');

@$core.Deprecated('Use cardReplyDescriptor instead')
const CardReply$json = {
  '1': 'CardReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.v1.Reply', '10': 'reply'},
    {'1': 'card', '3': 2, '4': 1, '5': 11, '6': '.card.v1.CardReply.Card', '10': 'card'},
  ],
  '3': [CardReply_Card$json],
};

@$core.Deprecated('Use cardReplyDescriptor instead')
const CardReply_Card$json = {
  '1': 'Card',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'descriptions', '3': 3, '4': 3, '5': 9, '10': 'descriptions'},
    {'1': 'linkURL', '3': 4, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'bankID', '3': 5, '4': 1, '5': 9, '10': 'bankID'},
    {'1': 'order', '3': 6, '4': 1, '5': 5, '10': 'order'},
    {'1': 'cardStatus', '3': 7, '4': 1, '5': 5, '10': 'cardStatus'},
    {'1': 'createDate', '3': 8, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 9, '4': 1, '5': 3, '10': 'updateDate'},
  ],
};

/// Descriptor for `CardReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardReplyDescriptor = $convert.base64Decode(
    'CglDYXJkUmVwbHkSJAoFcmVwbHkYASABKAsyDi5jYXJkLnYxLlJlcGx5UgVyZXBseRIrCgRjYX'
    'JkGAIgASgLMhcuY2FyZC52MS5DYXJkUmVwbHkuQ2FyZFIEY2FyZBr2AQoEQ2FyZBIOCgJpZBgB'
    'IAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIiCgxkZXNjcmlwdGlvbnMYAyADKAlSDGRlc2'
    'NyaXB0aW9ucxIYCgdsaW5rVVJMGAQgASgJUgdsaW5rVVJMEhYKBmJhbmtJRBgFIAEoCVIGYmFu'
    'a0lEEhQKBW9yZGVyGAYgASgFUgVvcmRlchIeCgpjYXJkU3RhdHVzGAcgASgFUgpjYXJkU3RhdH'
    'VzEh4KCmNyZWF0ZURhdGUYCCABKANSCmNyZWF0ZURhdGUSHgoKdXBkYXRlRGF0ZRgJIAEoA1IK'
    'dXBkYXRlRGF0ZQ==');

@$core.Deprecated('Use searchCardReqDescriptor instead')
const SearchCardReq$json = {
  '1': 'SearchCardReq',
  '2': [
    {'1': 'keyword', '3': 1, '4': 1, '5': 9, '10': 'keyword'},
  ],
};

/// Descriptor for `SearchCardReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchCardReqDescriptor = $convert.base64Decode(
    'Cg1TZWFyY2hDYXJkUmVxEhgKB2tleXdvcmQYASABKAlSB2tleXdvcmQ=');

@$core.Deprecated('Use emptyReqDescriptor instead')
const EmptyReq$json = {
  '1': 'EmptyReq',
};

/// Descriptor for `EmptyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyReqDescriptor = $convert.base64Decode(
    'CghFbXB0eVJlcQ==');

