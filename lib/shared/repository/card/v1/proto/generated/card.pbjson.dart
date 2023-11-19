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
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.card_v1.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIkCgVlcnJvchgCIAEoCzIOLmNhcmRfdj'
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
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card_v1.Reply', '10': 'reply'},
    {'1': 'banks', '3': 2, '4': 3, '5': 11, '6': '.card_v1.BanksReply.Bank', '10': 'banks'},
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
    'CgpCYW5rc1JlcGx5EiQKBXJlcGx5GAEgASgLMg4uY2FyZF92MS5SZXBseVIFcmVwbHkSLgoFYm'
    'Fua3MYAiADKAsyGC5jYXJkX3YxLkJhbmtzUmVwbHkuQmFua1IFYmFua3MadgoEQmFuaxIOCgJp'
    'ZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVpbWFnZRgDIAEoCVIFaW1hZ2USFA'
    'oFb3JkZXIYBCABKAVSBW9yZGVyEh4KCmJhbmtTdGF0dXMYBSABKAVSCmJhbmtTdGF0dXM=');

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
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card_v1.Reply', '10': 'reply'},
    {'1': 'cards', '3': 2, '4': 3, '5': 11, '6': '.card_v1.CardsReply.Card', '10': 'cards'},
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
    'CgpDYXJkc1JlcGx5EiQKBXJlcGx5GAEgASgLMg4uY2FyZF92MS5SZXBseVIFcmVwbHkSLgoFY2'
    'FyZHMYAiADKAsyGC5jYXJkX3YxLkNhcmRzUmVwbHkuQ2FyZFIFY2FyZHMajAIKBENhcmQSDgoC'
    'aWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIgoMZGVzY3JpcHRpb25zGAMgAygJUg'
    'xkZXNjcmlwdGlvbnMSFAoFaW1hZ2UYBCABKAlSBWltYWdlEh4KCmNyZWF0ZURhdGUYBSABKANS'
    'CmNyZWF0ZURhdGUSHgoKdXBkYXRlRGF0ZRgGIAEoA1IKdXBkYXRlRGF0ZRIYCgdsaW5rVVJMGA'
    'cgASgJUgdsaW5rVVJMEhYKBmJhbmtJRBgIIAEoCVIGYmFua0lEEhQKBW9yZGVyGAkgASgFUgVv'
    'cmRlchIeCgpjYXJkU3RhdHVzGAogASgFUgpjYXJkU3RhdHVz');

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
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card_v1.Reply', '10': 'reply'},
    {'1': 'cardRewards', '3': 2, '4': 3, '5': 11, '6': '.card_v1.CardRewardsReply.CardReward', '10': 'cardRewards'},
  ],
  '3': [CardRewardsReply_Reward$json, CardRewardsReply_Description$json, CardRewardsReply_Task$json, CardRewardsReply_CardReward$json],
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
const CardRewardsReply_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'shortName', '3': 2, '4': 1, '5': 9, '10': 'shortName'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
    {'1': 'descriptions', '3': 4, '4': 3, '5': 11, '6': '.card_v1.CardRewardsReply.Description', '10': 'descriptions'},
  ],
};

@$core.Deprecated('Use cardRewardsReplyDescriptor instead')
const CardRewardsReply_CardReward$json = {
  '1': 'CardReward',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'cardID', '3': 2, '4': 1, '5': 9, '10': 'cardID'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'descriptions', '3': 4, '4': 3, '5': 11, '6': '.card_v1.CardRewardsReply.Description', '10': 'descriptions'},
    {'1': 'createDate', '3': 5, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 6, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'startDate', '3': 7, '4': 1, '5': 3, '10': 'startDate'},
    {'1': 'endDate', '3': 8, '4': 1, '5': 3, '10': 'endDate'},
    {'1': 'cardRewardType', '3': 9, '4': 1, '5': 5, '10': 'cardRewardType'},
    {'1': 'reward', '3': 10, '4': 1, '5': 11, '6': '.card_v1.CardRewardsReply.Reward', '10': 'reward'},
    {'1': 'order', '3': 11, '4': 1, '5': 5, '10': 'order'},
    {'1': 'tasks', '3': 12, '4': 3, '5': 11, '6': '.card_v1.CardRewardsReply.Task', '10': 'tasks'},
  ],
};

/// Descriptor for `CardRewardsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardsReplyDescriptor = $convert.base64Decode(
    'ChBDYXJkUmV3YXJkc1JlcGx5EiQKBXJlcGx5GAEgASgLMg4uY2FyZF92MS5SZXBseVIFcmVwbH'
    'kSRgoLY2FyZFJld2FyZHMYAiADKAsyJC5jYXJkX3YxLkNhcmRSZXdhcmRzUmVwbHkuQ2FyZFJl'
    'd2FyZFILY2FyZFJld2FyZHMajAEKBlJld2FyZBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIA'
    'EoCVIEbmFtZRIeCgpyZXdhcmRUeXBlGAMgASgFUgpyZXdhcmRUeXBlEh4KCmNyZWF0ZURhdGUY'
    'BCABKANSCmNyZWF0ZURhdGUSHgoKdXBkYXRlRGF0ZRgFIAEoA1IKdXBkYXRlRGF0ZRpLCgtEZX'
    'NjcmlwdGlvbhISCgRuYW1lGAEgASgJUgRuYW1lEhQKBW9yZGVyGAIgASgFUgVvcmRlchISCgRk'
    'ZXNjGAMgAygJUgRkZXNjGpkBCgRUYXNrEhIKBG5hbWUYASABKAlSBG5hbWUSHAoJc2hvcnROYW'
    '1lGAIgASgJUglzaG9ydE5hbWUSFAoFb3JkZXIYAyABKAVSBW9yZGVyEkkKDGRlc2NyaXB0aW9u'
    'cxgEIAMoCzIlLmNhcmRfdjEuQ2FyZFJld2FyZHNSZXBseS5EZXNjcmlwdGlvblIMZGVzY3JpcH'
    'Rpb25zGrkDCgpDYXJkUmV3YXJkEg4KAmlkGAEgASgJUgJpZBIWCgZjYXJkSUQYAiABKAlSBmNh'
    'cmRJRBISCgRuYW1lGAMgASgJUgRuYW1lEkkKDGRlc2NyaXB0aW9ucxgEIAMoCzIlLmNhcmRfdj'
    'EuQ2FyZFJld2FyZHNSZXBseS5EZXNjcmlwdGlvblIMZGVzY3JpcHRpb25zEh4KCmNyZWF0ZURh'
    'dGUYBSABKANSCmNyZWF0ZURhdGUSHgoKdXBkYXRlRGF0ZRgGIAEoA1IKdXBkYXRlRGF0ZRIcCg'
    'lzdGFydERhdGUYByABKANSCXN0YXJ0RGF0ZRIYCgdlbmREYXRlGAggASgDUgdlbmREYXRlEiYK'
    'DmNhcmRSZXdhcmRUeXBlGAkgASgFUg5jYXJkUmV3YXJkVHlwZRI4CgZyZXdhcmQYCiABKAsyIC'
    '5jYXJkX3YxLkNhcmRSZXdhcmRzUmVwbHkuUmV3YXJkUgZyZXdhcmQSFAoFb3JkZXIYCyABKAVS'
    'BW9yZGVyEjQKBXRhc2tzGAwgAygLMh4uY2FyZF92MS5DYXJkUmV3YXJkc1JlcGx5LlRhc2tSBX'
    'Rhc2tz');

@$core.Deprecated('Use eventReqDescriptor instead')
const EventReq$json = {
  '1': 'EventReq',
  '2': [
    {'1': 'eventDate', '3': 1, '4': 1, '5': 3, '10': 'eventDate'},
    {'1': 'cost', '3': 2, '4': 1, '5': 5, '10': 'cost'},
    {'1': 'channelEvent', '3': 3, '4': 1, '5': 11, '6': '.card_v1.EventReq.ChannelEvent', '10': 'channelEvent'},
    {'1': 'payEvent', '3': 4, '4': 1, '5': 11, '6': '.card_v1.EventReq.PayEvent', '10': 'payEvent'},
    {'1': 'cardEvent', '3': 5, '4': 1, '5': 11, '6': '.card_v1.EventReq.CardEvent', '10': 'cardEvent'},
  ],
  '3': [EventReq_ChannelWithLabelEvent$json, EventReq_ChannelEvent$json, EventReq_CardEvent$json, EventReq_PayEvent$json],
};

@$core.Deprecated('Use eventReqDescriptor instead')
const EventReq_ChannelWithLabelEvent$json = {
  '1': 'ChannelWithLabelEvent',
  '2': [
    {'1': 'channelID', '3': 1, '4': 1, '5': 9, '10': 'channelID'},
    {'1': 'channelLabels', '3': 2, '4': 3, '5': 5, '10': 'channelLabels'},
  ],
};

@$core.Deprecated('Use eventReqDescriptor instead')
const EventReq_ChannelEvent$json = {
  '1': 'ChannelEvent',
  '2': [
    {'1': 'channelsWithLabelEvents', '3': 1, '4': 3, '5': 11, '6': '.card_v1.EventReq.ChannelWithLabelEvent', '10': 'channelsWithLabelEvents'},
    {'1': 'channelLabels', '3': 2, '4': 3, '5': 5, '10': 'channelLabels'},
  ],
};

@$core.Deprecated('Use eventReqDescriptor instead')
const EventReq_CardEvent$json = {
  '1': 'CardEvent',
  '2': [
    {'1': 'rewardType', '3': 1, '4': 1, '5': 5, '10': 'rewardType'},
    {'1': 'cardRewardTaskLabelPass', '3': 2, '4': 1, '5': 8, '10': 'cardRewardTaskLabelPass'},
    {'1': 'cardRewardTaskLabels', '3': 3, '4': 3, '5': 5, '10': 'cardRewardTaskLabels'},
  ],
};

@$core.Deprecated('Use eventReqDescriptor instead')
const EventReq_PayEvent$json = {
  '1': 'PayEvent',
  '2': [
    {'1': 'pass', '3': 1, '4': 1, '5': 8, '10': 'pass'},
    {'1': 'payIDs', '3': 2, '4': 3, '5': 9, '10': 'payIDs'},
  ],
};

/// Descriptor for `EventReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventReqDescriptor = $convert.base64Decode(
    'CghFdmVudFJlcRIcCglldmVudERhdGUYASABKANSCWV2ZW50RGF0ZRISCgRjb3N0GAIgASgFUg'
    'Rjb3N0EkIKDGNoYW5uZWxFdmVudBgDIAEoCzIeLmNhcmRfdjEuRXZlbnRSZXEuQ2hhbm5lbEV2'
    'ZW50UgxjaGFubmVsRXZlbnQSNgoIcGF5RXZlbnQYBCABKAsyGi5jYXJkX3YxLkV2ZW50UmVxLl'
    'BheUV2ZW50UghwYXlFdmVudBI5CgljYXJkRXZlbnQYBSABKAsyGy5jYXJkX3YxLkV2ZW50UmVx'
    'LkNhcmRFdmVudFIJY2FyZEV2ZW50GlsKFUNoYW5uZWxXaXRoTGFiZWxFdmVudBIcCgljaGFubm'
    'VsSUQYASABKAlSCWNoYW5uZWxJRBIkCg1jaGFubmVsTGFiZWxzGAIgAygFUg1jaGFubmVsTGFi'
    'ZWxzGpcBCgxDaGFubmVsRXZlbnQSYQoXY2hhbm5lbHNXaXRoTGFiZWxFdmVudHMYASADKAsyJy'
    '5jYXJkX3YxLkV2ZW50UmVxLkNoYW5uZWxXaXRoTGFiZWxFdmVudFIXY2hhbm5lbHNXaXRoTGFi'
    'ZWxFdmVudHMSJAoNY2hhbm5lbExhYmVscxgCIAMoBVINY2hhbm5lbExhYmVscxqZAQoJQ2FyZE'
    'V2ZW50Eh4KCnJld2FyZFR5cGUYASABKAVSCnJld2FyZFR5cGUSOAoXY2FyZFJld2FyZFRhc2tM'
    'YWJlbFBhc3MYAiABKAhSF2NhcmRSZXdhcmRUYXNrTGFiZWxQYXNzEjIKFGNhcmRSZXdhcmRUYX'
    'NrTGFiZWxzGAMgAygFUhRjYXJkUmV3YXJkVGFza0xhYmVscxo2CghQYXlFdmVudBISCgRwYXNz'
    'GAEgASgIUgRwYXNzEhYKBnBheUlEcxgCIAMoCVIGcGF5SURz');

@$core.Deprecated('Use evaluateCardRewardsReplyDescriptor instead')
const EvaluateCardRewardsReply$json = {
  '1': 'EvaluateCardRewardsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card_v1.Reply', '10': 'reply'},
    {'1': 'cardRewardEventResults', '3': 2, '4': 3, '5': 11, '6': '.card_v1.EvaluateCardRewardsReply.CardRewardEventResult', '10': 'cardRewardEventResults'},
  ],
  '3': [EvaluateCardRewardsReply_CardRewardEventResult$json],
};

@$core.Deprecated('Use evaluateCardRewardsReplyDescriptor instead')
const EvaluateCardRewardsReply_CardRewardEventResult$json = {
  '1': 'CardRewardEventResult',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'cardRewardEvaluationEventResult', '3': 2, '4': 1, '5': 11, '6': '.card_v1.CardRewardEvaluationEventResult', '10': 'cardRewardEvaluationEventResult'},
    {'1': 'evaluationEventResultResp', '3': 3, '4': 1, '5': 11, '6': '.card_v1.EvaluationEventResultResp', '10': 'evaluationEventResultResp'},
  ],
};

/// Descriptor for `EvaluateCardRewardsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluateCardRewardsReplyDescriptor = $convert.base64Decode(
    'ChhFdmFsdWF0ZUNhcmRSZXdhcmRzUmVwbHkSJAoFcmVwbHkYASABKAsyDi5jYXJkX3YxLlJlcG'
    'x5UgVyZXBseRJvChZjYXJkUmV3YXJkRXZlbnRSZXN1bHRzGAIgAygLMjcuY2FyZF92MS5FdmFs'
    'dWF0ZUNhcmRSZXdhcmRzUmVwbHkuQ2FyZFJld2FyZEV2ZW50UmVzdWx0UhZjYXJkUmV3YXJkRX'
    'ZlbnRSZXN1bHRzGv0BChVDYXJkUmV3YXJkRXZlbnRSZXN1bHQSDgoCaWQYASABKAlSAmlkEnIK'
    'H2NhcmRSZXdhcmRFdmFsdWF0aW9uRXZlbnRSZXN1bHQYAiABKAsyKC5jYXJkX3YxLkNhcmRSZX'
    'dhcmRFdmFsdWF0aW9uRXZlbnRSZXN1bHRSH2NhcmRSZXdhcmRFdmFsdWF0aW9uRXZlbnRSZXN1'
    'bHQSYAoZZXZhbHVhdGlvbkV2ZW50UmVzdWx0UmVzcBgDIAEoCzIiLmNhcmRfdjEuRXZhbHVhdG'
    'lvbkV2ZW50UmVzdWx0UmVzcFIZZXZhbHVhdGlvbkV2ZW50UmVzdWx0UmVzcA==');

@$core.Deprecated('Use cardRewardEvaluationEventResultDescriptor instead')
const CardRewardEvaluationEventResult$json = {
  '1': 'CardRewardEvaluationEventResult',
  '2': [
    {'1': 'cardID', '3': 1, '4': 1, '5': 9, '10': 'cardID'},
    {'1': 'cardName', '3': 2, '4': 1, '5': 9, '10': 'cardName'},
    {'1': 'cardDesc', '3': 3, '4': 3, '5': 9, '10': 'cardDesc'},
    {'1': 'cardImage', '3': 4, '4': 1, '5': 9, '10': 'cardImage'},
    {'1': 'updateDate', '3': 5, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'linkURL', '3': 6, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'bankID', '3': 7, '4': 1, '5': 9, '10': 'bankID'},
    {'1': 'bankName', '3': 8, '4': 1, '5': 9, '10': 'bankName'},
    {'1': 'cardRewardStartDate', '3': 9, '4': 1, '5': 3, '10': 'cardRewardStartDate'},
    {'1': 'cardRewardEndDate', '3': 10, '4': 1, '5': 3, '10': 'cardRewardEndDate'},
    {'1': 'cardRewardName', '3': 11, '4': 1, '5': 9, '10': 'cardRewardName'},
    {'1': 'cardRewardTaskShortNames', '3': 12, '4': 3, '5': 9, '10': 'cardRewardTaskShortNames'},
    {'1': 'reward', '3': 13, '4': 1, '5': 11, '6': '.card_v1.CardRewardEvaluationEventResult.Reward', '10': 'reward'},
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
    'c2MSHAoJY2FyZEltYWdlGAQgASgJUgljYXJkSW1hZ2USHgoKdXBkYXRlRGF0ZRgFIAEoA1IKdX'
    'BkYXRlRGF0ZRIYCgdsaW5rVVJMGAYgASgJUgdsaW5rVVJMEhYKBmJhbmtJRBgHIAEoCVIGYmFu'
    'a0lEEhoKCGJhbmtOYW1lGAggASgJUghiYW5rTmFtZRIwChNjYXJkUmV3YXJkU3RhcnREYXRlGA'
    'kgASgDUhNjYXJkUmV3YXJkU3RhcnREYXRlEiwKEWNhcmRSZXdhcmRFbmREYXRlGAogASgDUhFj'
    'YXJkUmV3YXJkRW5kRGF0ZRImCg5jYXJkUmV3YXJkTmFtZRgLIAEoCVIOY2FyZFJld2FyZE5hbW'
    'USOgoYY2FyZFJld2FyZFRhc2tTaG9ydE5hbWVzGAwgAygJUhhjYXJkUmV3YXJkVGFza1Nob3J0'
    'TmFtZXMSRwoGcmV3YXJkGA0gASgLMi8uY2FyZF92MS5DYXJkUmV3YXJkRXZhbHVhdGlvbkV2ZW'
    '50UmVzdWx0LlJld2FyZFIGcmV3YXJkGowBCgZSZXdhcmQSDgoCaWQYASABKAlSAmlkEhIKBG5h'
    'bWUYAiABKAlSBG5hbWUSHgoKcmV3YXJkVHlwZRgDIAEoBVIKcmV3YXJkVHlwZRIeCgpjcmVhdG'
    'VEYXRlGAQgASgDUgpjcmVhdGVEYXRlEh4KCnVwZGF0ZURhdGUYBSABKANSCnVwZGF0ZURhdGU=');

@$core.Deprecated('Use evaluationEventResultRespDescriptor instead')
const EvaluationEventResultResp$json = {
  '1': 'EvaluationEventResultResp',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'feedbackEventResultResp', '3': 2, '4': 1, '5': 11, '6': '.card_v1.EvaluationEventResultResp.FeedbackEventResultResp', '10': 'feedbackEventResultResp'},
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
    'ChlFdmFsdWF0aW9uRXZlbnRSZXN1bHRSZXNwEg4KAmlkGAEgASgJUgJpZBJ0ChdmZWVkYmFja0'
    'V2ZW50UmVzdWx0UmVzcBgCIAEoCzI6LmNhcmRfdjEuRXZhbHVhdGlvbkV2ZW50UmVzdWx0UmVz'
    'cC5GZWVkYmFja0V2ZW50UmVzdWx0UmVzcFIXZmVlZGJhY2tFdmVudFJlc3VsdFJlc3Aa9QEKF0'
    'ZlZWRiYWNrRXZlbnRSZXN1bHRSZXNwEh4KCnJld2FyZFR5cGUYASABKAVSCnJld2FyZFR5cGUS'
    'JAoNY2FsY3VsYXRlVHlwZRgCIAEoBVINY2FsY3VsYXRlVHlwZRISCgRjb3N0GAMgASgFUgRjb3'
    'N0EhwKCWdldFJldHVybhgEIAEoAVIJZ2V0UmV0dXJuEiQKDWdldFBlcmNlbnRhZ2UYBSABKAFS'
    'DWdldFBlcmNlbnRhZ2USPAoZZmVlZGJhY2tFdmVudFJlc3VsdFN0YXR1cxgGIAEoBVIZZmVlZG'
    'JhY2tFdmVudFJlc3VsdFN0YXR1cw==');

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

@$core.Deprecated('Use searchCardReplyDescriptor instead')
const SearchCardReply$json = {
  '1': 'SearchCardReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card_v1.Reply', '10': 'reply'},
    {'1': 'cards', '3': 2, '4': 3, '5': 11, '6': '.card_v1.SearchCardReply.Card', '10': 'cards'},
  ],
  '3': [SearchCardReply_Card$json],
};

@$core.Deprecated('Use searchCardReplyDescriptor instead')
const SearchCardReply_Card$json = {
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

/// Descriptor for `SearchCardReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchCardReplyDescriptor = $convert.base64Decode(
    'Cg9TZWFyY2hDYXJkUmVwbHkSJAoFcmVwbHkYASABKAsyDi5jYXJkX3YxLlJlcGx5UgVyZXBseR'
    'IzCgVjYXJkcxgCIAMoCzIdLmNhcmRfdjEuU2VhcmNoQ2FyZFJlcGx5LkNhcmRSBWNhcmRzGowC'
    'CgRDYXJkEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiIKDGRlc2NyaXB0aW'
    '9ucxgDIAMoCVIMZGVzY3JpcHRpb25zEhQKBWltYWdlGAQgASgJUgVpbWFnZRIeCgpjcmVhdGVE'
    'YXRlGAUgASgDUgpjcmVhdGVEYXRlEh4KCnVwZGF0ZURhdGUYBiABKANSCnVwZGF0ZURhdGUSGA'
    'oHbGlua1VSTBgHIAEoCVIHbGlua1VSTBIWCgZiYW5rSUQYCCABKAlSBmJhbmtJRBIUCgVvcmRl'
    'chgJIAEoBVIFb3JkZXISHgoKY2FyZFN0YXR1cxgKIAEoBVIKY2FyZFN0YXR1cw==');

@$core.Deprecated('Use emptyReqDescriptor instead')
const EmptyReq$json = {
  '1': 'EmptyReq',
};

/// Descriptor for `EmptyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyReqDescriptor = $convert.base64Decode(
    'CghFbXB0eVJlcQ==');

