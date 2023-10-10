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

@$core.Deprecated('Use allBanksReqDescriptor instead')
const AllBanksReq$json = {
  '1': 'AllBanksReq',
  '2': [
    {'1': 'limit', '3': 1, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'offset', '3': 2, '4': 1, '5': 5, '10': 'offset'},
  ],
};

/// Descriptor for `AllBanksReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allBanksReqDescriptor = $convert.base64Decode(
    'CgtBbGxCYW5rc1JlcRIUCgVsaW1pdBgBIAEoBVIFbGltaXQSFgoGb2Zmc2V0GAIgASgFUgZvZm'
    'ZzZXQ=');

@$core.Deprecated('Use banksReplyDescriptor instead')
const BanksReply$json = {
  '1': 'BanksReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.Reply', '10': 'reply'},
    {'1': 'banks', '3': 2, '4': 3, '5': 11, '6': '.card.BanksReply.Bank', '10': 'banks'},
  ],
  '3': [BanksReply_Bank$json],
};

@$core.Deprecated('Use banksReplyDescriptor instead')
const BanksReply_Bank$json = {
  '1': 'Bank',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'order', '3': 4, '4': 1, '5': 5, '10': 'order'},
    {'1': 'bankStatus', '3': 5, '4': 1, '5': 5, '10': 'bankStatus'},
  ],
};

/// Descriptor for `BanksReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banksReplyDescriptor = $convert.base64Decode(
    'CgpCYW5rc1JlcGx5EiEKBXJlcGx5GAEgASgLMgsuY2FyZC5SZXBseVIFcmVwbHkSKwoFYmFua3'
    'MYAiADKAsyFS5jYXJkLkJhbmtzUmVwbHkuQmFua1IFYmFua3MadgoEQmFuaxIOCgJpZBgBIAEo'
    'CVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVpbWFnZRgDIAEoCVIFaW1hZ2USFAoFb3JkZX'
    'IYBCABKAVSBW9yZGVyEh4KCmJhbmtTdGF0dXMYBSABKAVSCmJhbmtTdGF0dXM=');

@$core.Deprecated('Use cardsByBankIDReqDescriptor instead')
const CardsByBankIDReq$json = {
  '1': 'CardsByBankIDReq',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'limit', '3': 2, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'offset', '3': 3, '4': 1, '5': 5, '10': 'offset'},
  ],
};

/// Descriptor for `CardsByBankIDReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardsByBankIDReqDescriptor = $convert.base64Decode(
    'ChBDYXJkc0J5QmFua0lEUmVxEg4KAmlkGAEgASgJUgJpZBIUCgVsaW1pdBgCIAEoBVIFbGltaX'
    'QSFgoGb2Zmc2V0GAMgASgFUgZvZmZzZXQ=');

@$core.Deprecated('Use cardsReplyDescriptor instead')
const CardsReply$json = {
  '1': 'CardsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.Reply', '10': 'reply'},
    {'1': 'cards', '3': 2, '4': 3, '5': 11, '6': '.card.CardsReply.Card', '10': 'cards'},
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
    {'1': 'image', '3': 4, '4': 1, '5': 9, '10': 'image'},
    {'1': 'createDate', '3': 5, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 6, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'linkURL', '3': 7, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'bankID', '3': 8, '4': 1, '5': 9, '10': 'bankID'},
    {'1': 'order', '3': 9, '4': 1, '5': 5, '10': 'order'},
    {'1': 'cardStatus', '3': 10, '4': 1, '5': 5, '10': 'cardStatus'},
  ],
};

/// Descriptor for `CardsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardsReplyDescriptor = $convert.base64Decode(
    'CgpDYXJkc1JlcGx5EiEKBXJlcGx5GAEgASgLMgsuY2FyZC5SZXBseVIFcmVwbHkSKwoFY2FyZH'
    'MYAiADKAsyFS5jYXJkLkNhcmRzUmVwbHkuQ2FyZFIFY2FyZHMajAIKBENhcmQSDgoCaWQYASAB'
    'KAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIgoMZGVzY3JpcHRpb25zGAMgAygJUgxkZXNjcm'
    'lwdGlvbnMSFAoFaW1hZ2UYBCABKAlSBWltYWdlEh4KCmNyZWF0ZURhdGUYBSABKANSCmNyZWF0'
    'ZURhdGUSHgoKdXBkYXRlRGF0ZRgGIAEoA1IKdXBkYXRlRGF0ZRIYCgdsaW5rVVJMGAcgASgJUg'
    'dsaW5rVVJMEhYKBmJhbmtJRBgIIAEoCVIGYmFua0lEEhQKBW9yZGVyGAkgASgFUgVvcmRlchIe'
    'CgpjYXJkU3RhdHVzGAogASgFUgpjYXJkU3RhdHVz');

@$core.Deprecated('Use cardRewardsByCardIDReqDescriptor instead')
const CardRewardsByCardIDReq$json = {
  '1': 'CardRewardsByCardIDReq',
  '2': [
    {'1': 'cardID', '3': 1, '4': 1, '5': 9, '10': 'cardID'},
    {'1': 'limit', '3': 2, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'offset', '3': 3, '4': 1, '5': 5, '10': 'offset'},
  ],
};

/// Descriptor for `CardRewardsByCardIDReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardsByCardIDReqDescriptor = $convert.base64Decode(
    'ChZDYXJkUmV3YXJkc0J5Q2FyZElEUmVxEhYKBmNhcmRJRBgBIAEoCVIGY2FyZElEEhQKBWxpbW'
    'l0GAIgASgFUgVsaW1pdBIWCgZvZmZzZXQYAyABKAVSBm9mZnNldA==');

@$core.Deprecated('Use cardRewardsReplyDescriptor instead')
const CardRewardsReply$json = {
  '1': 'CardRewardsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.Reply', '10': 'reply'},
    {'1': 'cardRewards', '3': 2, '4': 3, '5': 11, '6': '.card.CardRewardsReply.CardReward', '10': 'cardRewards'},
  ],
  '3': [CardRewardsReply_Reward$json, CardRewardsReply_Description$json, CardRewardsReply_CardReward$json],
};

@$core.Deprecated('Use cardRewardsReplyDescriptor instead')
const CardRewardsReply_Reward$json = {
  '1': 'Reward',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'rewardType', '3': 3, '4': 1, '5': 5, '10': 'rewardType'},
    {'1': 'createDate', '3': 4, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 5, '4': 1, '5': 3, '10': 'updateDate'},
  ],
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
const CardRewardsReply_CardReward$json = {
  '1': 'CardReward',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'cardID', '3': 2, '4': 1, '5': 9, '10': 'cardID'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'descriptions', '3': 4, '4': 3, '5': 11, '6': '.card.CardRewardsReply.Description', '10': 'descriptions'},
    {'1': 'createDate', '3': 5, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 6, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'startDate', '3': 7, '4': 1, '5': 3, '10': 'startDate'},
    {'1': 'endDate', '3': 8, '4': 1, '5': 3, '10': 'endDate'},
    {'1': 'cardRewardType', '3': 9, '4': 1, '5': 5, '10': 'cardRewardType'},
    {'1': 'reward', '3': 10, '4': 1, '5': 11, '6': '.card.CardRewardsReply.Reward', '10': 'reward'},
    {'1': 'order', '3': 11, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `CardRewardsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardsReplyDescriptor = $convert.base64Decode(
    'ChBDYXJkUmV3YXJkc1JlcGx5EiEKBXJlcGx5GAEgASgLMgsuY2FyZC5SZXBseVIFcmVwbHkSQw'
    'oLY2FyZFJld2FyZHMYAiADKAsyIS5jYXJkLkNhcmRSZXdhcmRzUmVwbHkuQ2FyZFJld2FyZFIL'
    'Y2FyZFJld2FyZHMajAEKBlJld2FyZBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbm'
    'FtZRIeCgpyZXdhcmRUeXBlGAMgASgFUgpyZXdhcmRUeXBlEh4KCmNyZWF0ZURhdGUYBCABKANS'
    'CmNyZWF0ZURhdGUSHgoKdXBkYXRlRGF0ZRgFIAEoA1IKdXBkYXRlRGF0ZRpLCgtEZXNjcmlwdG'
    'lvbhISCgRuYW1lGAEgASgJUgRuYW1lEhQKBW9yZGVyGAIgASgFUgVvcmRlchISCgRkZXNjGAMg'
    'AygJUgRkZXNjGv0CCgpDYXJkUmV3YXJkEg4KAmlkGAEgASgJUgJpZBIWCgZjYXJkSUQYAiABKA'
    'lSBmNhcmRJRBISCgRuYW1lGAMgASgJUgRuYW1lEkYKDGRlc2NyaXB0aW9ucxgEIAMoCzIiLmNh'
    'cmQuQ2FyZFJld2FyZHNSZXBseS5EZXNjcmlwdGlvblIMZGVzY3JpcHRpb25zEh4KCmNyZWF0ZU'
    'RhdGUYBSABKANSCmNyZWF0ZURhdGUSHgoKdXBkYXRlRGF0ZRgGIAEoA1IKdXBkYXRlRGF0ZRIc'
    'CglzdGFydERhdGUYByABKANSCXN0YXJ0RGF0ZRIYCgdlbmREYXRlGAggASgDUgdlbmREYXRlEi'
    'YKDmNhcmRSZXdhcmRUeXBlGAkgASgFUg5jYXJkUmV3YXJkVHlwZRI1CgZyZXdhcmQYCiABKAsy'
    'HS5jYXJkLkNhcmRSZXdhcmRzUmVwbHkuUmV3YXJkUgZyZXdhcmQSFAoFb3JkZXIYCyABKAVSBW'
    '9yZGVy');

@$core.Deprecated('Use cardEventReqDescriptor instead')
const CardEventReq$json = {
  '1': 'CardEventReq',
  '2': [
    {'1': 'taskIDs', '3': 1, '4': 3, '5': 9, '10': 'taskIDs'},
    {'1': 'payIDs', '3': 2, '4': 3, '5': 9, '10': 'payIDs'},
    {'1': 'channelIDs', '3': 3, '4': 3, '5': 9, '10': 'channelIDs'},
    {'1': 'labels', '3': 4, '4': 3, '5': 5, '10': 'labels'},
    {'1': 'eventDate', '3': 5, '4': 1, '5': 3, '10': 'eventDate'},
    {'1': 'cost', '3': 6, '4': 1, '5': 5, '10': 'cost'},
    {'1': 'rewardType', '3': 7, '4': 1, '5': 5, '10': 'rewardType'},
  ],
};

/// Descriptor for `CardEventReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardEventReqDescriptor = $convert.base64Decode(
    'CgxDYXJkRXZlbnRSZXESGAoHdGFza0lEcxgBIAMoCVIHdGFza0lEcxIWCgZwYXlJRHMYAiADKA'
    'lSBnBheUlEcxIeCgpjaGFubmVsSURzGAMgAygJUgpjaGFubmVsSURzEhYKBmxhYmVscxgEIAMo'
    'BVIGbGFiZWxzEhwKCWV2ZW50RGF0ZRgFIAEoA1IJZXZlbnREYXRlEhIKBGNvc3QYBiABKAVSBG'
    'Nvc3QSHgoKcmV3YXJkVHlwZRgHIAEoBVIKcmV3YXJkVHlwZQ==');

@$core.Deprecated('Use evaluateCardRewardsReplyDescriptor instead')
const EvaluateCardRewardsReply$json = {
  '1': 'EvaluateCardRewardsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.Reply', '10': 'reply'},
    {'1': 'cardRewardEventResults', '3': 2, '4': 3, '5': 11, '6': '.card.EvaluateCardRewardsReply.CardRewardEventResult', '10': 'cardRewardEventResults'},
  ],
  '3': [EvaluateCardRewardsReply_CardRewardEventResult$json],
};

@$core.Deprecated('Use evaluateCardRewardsReplyDescriptor instead')
const EvaluateCardRewardsReply_CardRewardEventResult$json = {
  '1': 'CardRewardEventResult',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'cardRewardEvaluationEventResult', '3': 2, '4': 1, '5': 11, '6': '.card.CardRewardEvaluationEventResult', '10': 'cardRewardEvaluationEventResult'},
    {'1': 'evaluationEventResultResp', '3': 3, '4': 1, '5': 11, '6': '.card.EvaluationEventResultResp', '10': 'evaluationEventResultResp'},
  ],
};

/// Descriptor for `EvaluateCardRewardsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluateCardRewardsReplyDescriptor = $convert.base64Decode(
    'ChhFdmFsdWF0ZUNhcmRSZXdhcmRzUmVwbHkSIQoFcmVwbHkYASABKAsyCy5jYXJkLlJlcGx5Ug'
    'VyZXBseRJsChZjYXJkUmV3YXJkRXZlbnRSZXN1bHRzGAIgAygLMjQuY2FyZC5FdmFsdWF0ZUNh'
    'cmRSZXdhcmRzUmVwbHkuQ2FyZFJld2FyZEV2ZW50UmVzdWx0UhZjYXJkUmV3YXJkRXZlbnRSZX'
    'N1bHRzGvcBChVDYXJkUmV3YXJkRXZlbnRSZXN1bHQSDgoCaWQYASABKAlSAmlkEm8KH2NhcmRS'
    'ZXdhcmRFdmFsdWF0aW9uRXZlbnRSZXN1bHQYAiABKAsyJS5jYXJkLkNhcmRSZXdhcmRFdmFsdW'
    'F0aW9uRXZlbnRSZXN1bHRSH2NhcmRSZXdhcmRFdmFsdWF0aW9uRXZlbnRSZXN1bHQSXQoZZXZh'
    'bHVhdGlvbkV2ZW50UmVzdWx0UmVzcBgDIAEoCzIfLmNhcmQuRXZhbHVhdGlvbkV2ZW50UmVzdW'
    'x0UmVzcFIZZXZhbHVhdGlvbkV2ZW50UmVzdWx0UmVzcA==');

@$core.Deprecated('Use cardRewardEvaluationEventResultDescriptor instead')
const CardRewardEvaluationEventResult$json = {
  '1': 'CardRewardEvaluationEventResult',
  '2': [
    {'1': 'cardID', '3': 1, '4': 1, '5': 9, '10': 'cardID'},
    {'1': 'cardName', '3': 2, '4': 1, '5': 9, '10': 'cardName'},
    {'1': 'cardDesc', '3': 3, '4': 3, '5': 9, '10': 'cardDesc'},
    {'1': 'cardImage', '3': 4, '4': 1, '5': 9, '10': 'cardImage'},
    {'1': 'bankID', '3': 5, '4': 1, '5': 9, '10': 'bankID'},
    {'1': 'bankName', '3': 6, '4': 1, '5': 9, '10': 'bankName'},
    {'1': 'cardRewardStartDate', '3': 7, '4': 1, '5': 3, '10': 'cardRewardStartDate'},
    {'1': 'cardRewardEndDate', '3': 8, '4': 1, '5': 3, '10': 'cardRewardEndDate'},
    {'1': 'cardRewardName', '3': 9, '4': 1, '5': 9, '10': 'cardRewardName'},
    {'1': 'reward', '3': 10, '4': 1, '5': 11, '6': '.card.CardRewardEvaluationEventResult.Reward', '10': 'reward'},
  ],
  '3': [CardRewardEvaluationEventResult_Reward$json],
};

@$core.Deprecated('Use cardRewardEvaluationEventResultDescriptor instead')
const CardRewardEvaluationEventResult_Reward$json = {
  '1': 'Reward',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'rewardType', '3': 3, '4': 1, '5': 5, '10': 'rewardType'},
    {'1': 'createDate', '3': 4, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 5, '4': 1, '5': 3, '10': 'updateDate'},
  ],
};

/// Descriptor for `CardRewardEvaluationEventResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardEvaluationEventResultDescriptor = $convert.base64Decode(
    'Ch9DYXJkUmV3YXJkRXZhbHVhdGlvbkV2ZW50UmVzdWx0EhYKBmNhcmRJRBgBIAEoCVIGY2FyZE'
    'lEEhoKCGNhcmROYW1lGAIgASgJUghjYXJkTmFtZRIaCghjYXJkRGVzYxgDIAMoCVIIY2FyZERl'
    'c2MSHAoJY2FyZEltYWdlGAQgASgJUgljYXJkSW1hZ2USFgoGYmFua0lEGAUgASgJUgZiYW5rSU'
    'QSGgoIYmFua05hbWUYBiABKAlSCGJhbmtOYW1lEjAKE2NhcmRSZXdhcmRTdGFydERhdGUYByAB'
    'KANSE2NhcmRSZXdhcmRTdGFydERhdGUSLAoRY2FyZFJld2FyZEVuZERhdGUYCCABKANSEWNhcm'
    'RSZXdhcmRFbmREYXRlEiYKDmNhcmRSZXdhcmROYW1lGAkgASgJUg5jYXJkUmV3YXJkTmFtZRJE'
    'CgZyZXdhcmQYCiABKAsyLC5jYXJkLkNhcmRSZXdhcmRFdmFsdWF0aW9uRXZlbnRSZXN1bHQuUm'
    'V3YXJkUgZyZXdhcmQajAEKBlJld2FyZBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIE'
    'bmFtZRIeCgpyZXdhcmRUeXBlGAMgASgFUgpyZXdhcmRUeXBlEh4KCmNyZWF0ZURhdGUYBCABKA'
    'NSCmNyZWF0ZURhdGUSHgoKdXBkYXRlRGF0ZRgFIAEoA1IKdXBkYXRlRGF0ZQ==');

@$core.Deprecated('Use evaluationEventResultRespDescriptor instead')
const EvaluationEventResultResp$json = {
  '1': 'EvaluationEventResultResp',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'feedbackEventResultResp', '3': 2, '4': 1, '5': 11, '6': '.card.EvaluationEventResultResp.FeedbackEventResultResp', '10': 'feedbackEventResultResp'},
  ],
  '3': [EvaluationEventResultResp_FeedbackEventResultResp$json],
};

@$core.Deprecated('Use evaluationEventResultRespDescriptor instead')
const EvaluationEventResultResp_FeedbackEventResultResp$json = {
  '1': 'FeedbackEventResultResp',
  '2': [
    {'1': 'rewardType', '3': 1, '4': 1, '5': 5, '10': 'rewardType'},
    {'1': 'calculateType', '3': 2, '4': 1, '5': 5, '10': 'calculateType'},
    {'1': 'cost', '3': 3, '4': 1, '5': 5, '10': 'cost'},
    {'1': 'getReturn', '3': 4, '4': 1, '5': 1, '10': 'getReturn'},
    {'1': 'getPercentage', '3': 5, '4': 1, '5': 1, '10': 'getPercentage'},
    {'1': 'feedbackEventResultStatus', '3': 6, '4': 1, '5': 5, '10': 'feedbackEventResultStatus'},
  ],
};

/// Descriptor for `EvaluationEventResultResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationEventResultRespDescriptor = $convert.base64Decode(
    'ChlFdmFsdWF0aW9uRXZlbnRSZXN1bHRSZXNwEg4KAmlkGAEgASgJUgJpZBJxChdmZWVkYmFja0'
    'V2ZW50UmVzdWx0UmVzcBgCIAEoCzI3LmNhcmQuRXZhbHVhdGlvbkV2ZW50UmVzdWx0UmVzcC5G'
    'ZWVkYmFja0V2ZW50UmVzdWx0UmVzcFIXZmVlZGJhY2tFdmVudFJlc3VsdFJlc3Aa9QEKF0ZlZW'
    'RiYWNrRXZlbnRSZXN1bHRSZXNwEh4KCnJld2FyZFR5cGUYASABKAVSCnJld2FyZFR5cGUSJAoN'
    'Y2FsY3VsYXRlVHlwZRgCIAEoBVINY2FsY3VsYXRlVHlwZRISCgRjb3N0GAMgASgFUgRjb3N0Eh'
    'wKCWdldFJldHVybhgEIAEoAVIJZ2V0UmV0dXJuEiQKDWdldFBlcmNlbnRhZ2UYBSABKAFSDWdl'
    'dFBlcmNlbnRhZ2USPAoZZmVlZGJhY2tFdmVudFJlc3VsdFN0YXR1cxgGIAEoBVIZZmVlZGJhY2'
    'tFdmVudFJlc3VsdFN0YXR1cw==');

@$core.Deprecated('Use emptyReqDescriptor instead')
const EmptyReq$json = {
  '1': 'EmptyReq',
};

/// Descriptor for `EmptyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyReqDescriptor = $convert.base64Decode(
    'CghFbXB0eVJlcQ==');

