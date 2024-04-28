//
//  Generated code. Do not modify.
//  source: cardreward.proto
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
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.card.reward.v1.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIrCgVlcnJvchgCIAEoCzIVLmNhcmQucm'
    'V3YXJkLnYxLkVycm9yUgVlcnJvcg==');

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

@$core.Deprecated('Use cardRewardIDReqDescriptor instead')
const CardRewardIDReq$json = {
  '1': 'CardRewardIDReq',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CardRewardIDReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardIDReqDescriptor = $convert.base64Decode(
    'Cg9DYXJkUmV3YXJkSURSZXESDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use cardRewardsReplyDescriptor instead')
const CardRewardsReply$json = {
  '1': 'CardRewardsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.reward.v1.Reply', '10': 'reply'},
    {'1': 'cardRewards', '3': 2, '4': 3, '5': 11, '6': '.card.reward.v1.CardRewardsReply.CardReward', '10': 'cardRewards'},
  ],
  '3': [CardRewardsReply_Description$json, CardRewardsReply_FeedbackType$json, CardRewardsReply_TaskLabel$json, CardRewardsReply_CardReward$json],
};

@$core.Deprecated('Use cardRewardsReplyDescriptor instead')
const CardRewardsReply_Description$json = {
  '1': 'Description',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 2, '4': 1, '5': 5, '10': 'order'},
    {'1': 'desc', '3': 3, '4': 3, '5': 9, '10': 'desc'},
  ],
};

@$core.Deprecated('Use cardRewardsReplyDescriptor instead')
const CardRewardsReply_FeedbackType$json = {
  '1': 'FeedbackType',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'feedbackType', '3': 3, '4': 1, '5': 5, '10': 'feedbackType'},
    {'1': 'createDate', '3': 4, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 5, '4': 1, '5': 3, '10': 'updateDate'},
  ],
};

@$core.Deprecated('Use cardRewardsReplyDescriptor instead')
const CardRewardsReply_TaskLabel$json = {
  '1': 'TaskLabel',
  '2': [
    {'1': 'Label', '3': 1, '4': 1, '5': 9, '10': 'Label'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'show', '3': 3, '4': 1, '5': 5, '10': 'show'},
    {'1': 'order', '3': 4, '4': 1, '5': 5, '10': 'order'},
  ],
};

@$core.Deprecated('Use cardRewardsReplyDescriptor instead')
const CardRewardsReply_CardReward$json = {
  '1': 'CardReward',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'cardID', '3': 2, '4': 1, '5': 9, '10': 'cardID'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'descriptions', '3': 4, '4': 3, '5': 11, '6': '.card.reward.v1.CardRewardsReply.Description', '10': 'descriptions'},
    {'1': 'startDate', '3': 5, '4': 1, '5': 3, '10': 'startDate'},
    {'1': 'endDate', '3': 6, '4': 1, '5': 3, '10': 'endDate'},
    {'1': 'cardRewardType', '3': 7, '4': 1, '5': 5, '10': 'cardRewardType'},
    {'1': 'feedbackType', '3': 8, '4': 1, '5': 11, '6': '.card.reward.v1.CardRewardsReply.FeedbackType', '10': 'feedbackType'},
    {'1': 'taskLabels', '3': 9, '4': 3, '5': 11, '6': '.card.reward.v1.CardRewardsReply.TaskLabel', '10': 'taskLabels'},
    {'1': 'order', '3': 10, '4': 1, '5': 5, '10': 'order'},
    {'1': 'cardRewardStatus', '3': 11, '4': 1, '5': 5, '10': 'cardRewardStatus'},
    {'1': 'createDate', '3': 12, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 13, '4': 1, '5': 3, '10': 'updateDate'},
  ],
};

/// Descriptor for `CardRewardsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardsReplyDescriptor = $convert.base64Decode(
    'ChBDYXJkUmV3YXJkc1JlcGx5EisKBXJlcGx5GAEgASgLMhUuY2FyZC5yZXdhcmQudjEuUmVwbH'
    'lSBXJlcGx5Ek0KC2NhcmRSZXdhcmRzGAIgAygLMisuY2FyZC5yZXdhcmQudjEuQ2FyZFJld2Fy'
    'ZHNSZXBseS5DYXJkUmV3YXJkUgtjYXJkUmV3YXJkcxpLCgtEZXNjcmlwdGlvbhISCgRuYW1lGA'
    'EgASgJUgRuYW1lEhQKBW9yZGVyGAIgASgFUgVvcmRlchISCgRkZXNjGAMgAygJUgRkZXNjGpYB'
    'CgxGZWVkYmFja1R5cGUSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIgoMZm'
    'VlZGJhY2tUeXBlGAMgASgFUgxmZWVkYmFja1R5cGUSHgoKY3JlYXRlRGF0ZRgEIAEoA1IKY3Jl'
    'YXRlRGF0ZRIeCgp1cGRhdGVEYXRlGAUgASgDUgp1cGRhdGVEYXRlGl8KCVRhc2tMYWJlbBIUCg'
    'VMYWJlbBgBIAEoCVIFTGFiZWwSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRzaG93GAMgASgFUgRz'
    'aG93EhQKBW9yZGVyGAQgASgFUgVvcmRlchqbBAoKQ2FyZFJld2FyZBIOCgJpZBgBIAEoCVICaW'
    'QSFgoGY2FyZElEGAIgASgJUgZjYXJkSUQSEgoEbmFtZRgDIAEoCVIEbmFtZRJQCgxkZXNjcmlw'
    'dGlvbnMYBCADKAsyLC5jYXJkLnJld2FyZC52MS5DYXJkUmV3YXJkc1JlcGx5LkRlc2NyaXB0aW'
    '9uUgxkZXNjcmlwdGlvbnMSHAoJc3RhcnREYXRlGAUgASgDUglzdGFydERhdGUSGAoHZW5kRGF0'
    'ZRgGIAEoA1IHZW5kRGF0ZRImCg5jYXJkUmV3YXJkVHlwZRgHIAEoBVIOY2FyZFJld2FyZFR5cG'
    'USUQoMZmVlZGJhY2tUeXBlGAggASgLMi0uY2FyZC5yZXdhcmQudjEuQ2FyZFJld2FyZHNSZXBs'
    'eS5GZWVkYmFja1R5cGVSDGZlZWRiYWNrVHlwZRJKCgp0YXNrTGFiZWxzGAkgAygLMiouY2FyZC'
    '5yZXdhcmQudjEuQ2FyZFJld2FyZHNSZXBseS5UYXNrTGFiZWxSCnRhc2tMYWJlbHMSFAoFb3Jk'
    'ZXIYCiABKAVSBW9yZGVyEioKEGNhcmRSZXdhcmRTdGF0dXMYCyABKAVSEGNhcmRSZXdhcmRTdG'
    'F0dXMSHgoKY3JlYXRlRGF0ZRgMIAEoA1IKY3JlYXRlRGF0ZRIeCgp1cGRhdGVEYXRlGA0gASgD'
    'Ugp1cGRhdGVEYXRl');

