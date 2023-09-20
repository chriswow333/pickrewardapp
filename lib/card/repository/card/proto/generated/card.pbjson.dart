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

@$core.Deprecated('Use cardIDProtoDescriptor instead')
const CardIDProto$json = {
  '1': 'CardIDProto',
  '2': [
    {'1': 'cardID', '3': 1, '4': 1, '5': 9, '10': 'cardID'},
  ],
};

/// Descriptor for `CardIDProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardIDProtoDescriptor = $convert.base64Decode(
    'CgtDYXJkSURQcm90bxIWCgZjYXJkSUQYASABKAlSBmNhcmRJRA==');

@$core.Deprecated('Use cardContentReplyDescriptor instead')
const CardContentReply$json = {
  '1': 'CardContentReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.Reply', '10': 'reply'},
    {'1': 'card', '3': 2, '4': 1, '5': 11, '6': '.card.CardProto', '10': 'card'},
    {'1': 'cardRewards', '3': 3, '4': 3, '5': 11, '6': '.card.CardRewardProto', '10': 'cardRewards'},
  ],
};

/// Descriptor for `CardContentReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardContentReplyDescriptor = $convert.base64Decode(
    'ChBDYXJkQ29udGVudFJlcGx5EiEKBXJlcGx5GAEgASgLMgsuY2FyZC5SZXBseVIFcmVwbHkSIw'
    'oEY2FyZBgCIAEoCzIPLmNhcmQuQ2FyZFByb3RvUgRjYXJkEjcKC2NhcmRSZXdhcmRzGAMgAygL'
    'MhUuY2FyZC5DYXJkUmV3YXJkUHJvdG9SC2NhcmRSZXdhcmRz');

@$core.Deprecated('Use cardRewardsReplyDescriptor instead')
const CardRewardsReply$json = {
  '1': 'CardRewardsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.Reply', '10': 'reply'},
    {'1': 'cardRewards', '3': 2, '4': 3, '5': 11, '6': '.card.CardRewardProto', '10': 'cardRewards'},
  ],
};

/// Descriptor for `CardRewardsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardsReplyDescriptor = $convert.base64Decode(
    'ChBDYXJkUmV3YXJkc1JlcGx5EiEKBXJlcGx5GAEgASgLMgsuY2FyZC5SZXBseVIFcmVwbHkSNw'
    'oLY2FyZFJld2FyZHMYAiADKAsyFS5jYXJkLkNhcmRSZXdhcmRQcm90b1ILY2FyZFJld2FyZHM=');

@$core.Deprecated('Use cardRewardProtoDescriptor instead')
const CardRewardProto$json = {
  '1': 'CardRewardProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'cardID', '3': 2, '4': 1, '5': 9, '10': 'cardID'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'cardRewardDescriptions', '3': 4, '4': 3, '5': 11, '6': '.card.CardRewardDescriptionProto', '10': 'cardRewardDescriptions'},
    {'1': 'createDate', '3': 5, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 6, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'startDate', '3': 7, '4': 1, '5': 3, '10': 'startDate'},
    {'1': 'endDate', '3': 8, '4': 1, '5': 3, '10': 'endDate'},
    {'1': 'cardRewardType', '3': 9, '4': 1, '5': 5, '10': 'cardRewardType'},
    {'1': 'rewardID', '3': 10, '4': 1, '5': 9, '10': 'rewardID'},
    {'1': 'reward', '3': 11, '4': 1, '5': 11, '6': '.card.RewardProto', '10': 'reward'},
    {'1': 'evaluationResp', '3': 12, '4': 1, '5': 11, '6': '.card.EvaluationRespProto', '10': 'evaluationResp'},
    {'1': 'order', '3': 13, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `CardRewardProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardProtoDescriptor = $convert.base64Decode(
    'Cg9DYXJkUmV3YXJkUHJvdG8SDgoCaWQYASABKAlSAmlkEhYKBmNhcmRJRBgCIAEoCVIGY2FyZE'
    'lEEhIKBG5hbWUYAyABKAlSBG5hbWUSWAoWY2FyZFJld2FyZERlc2NyaXB0aW9ucxgEIAMoCzIg'
    'LmNhcmQuQ2FyZFJld2FyZERlc2NyaXB0aW9uUHJvdG9SFmNhcmRSZXdhcmREZXNjcmlwdGlvbn'
    'MSHgoKY3JlYXRlRGF0ZRgFIAEoA1IKY3JlYXRlRGF0ZRIeCgp1cGRhdGVEYXRlGAYgASgDUgp1'
    'cGRhdGVEYXRlEhwKCXN0YXJ0RGF0ZRgHIAEoA1IJc3RhcnREYXRlEhgKB2VuZERhdGUYCCABKA'
    'NSB2VuZERhdGUSJgoOY2FyZFJld2FyZFR5cGUYCSABKAVSDmNhcmRSZXdhcmRUeXBlEhoKCHJl'
    'd2FyZElEGAogASgJUghyZXdhcmRJRBIpCgZyZXdhcmQYCyABKAsyES5jYXJkLlJld2FyZFByb3'
    'RvUgZyZXdhcmQSQQoOZXZhbHVhdGlvblJlc3AYDCABKAsyGS5jYXJkLkV2YWx1YXRpb25SZXNw'
    'UHJvdG9SDmV2YWx1YXRpb25SZXNwEhQKBW9yZGVyGA0gASgFUgVvcmRlcg==');

@$core.Deprecated('Use evaluationRespProtoDescriptor instead')
const EvaluationRespProto$json = {
  '1': 'EvaluationRespProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'channelCategoryTypes', '3': 2, '4': 3, '5': 11, '6': '.card.ChannelCategoryTypeProto', '10': 'channelCategoryTypes'},
    {'1': 'channelEvaluationResps', '3': 3, '4': 3, '5': 11, '6': '.card.ChannelEvaluationRespProto', '10': 'channelEvaluationResps'},
    {'1': 'payEvaluationResp', '3': 4, '4': 1, '5': 11, '6': '.card.PayEvaluationRespProto', '10': 'payEvaluationResp'},
    {'1': 'taskEvaluationResp', '3': 5, '4': 1, '5': 11, '6': '.card.TaskEvaluationRespProto', '10': 'taskEvaluationResp'},
    {'1': 'constraintsEvaluationResp', '3': 6, '4': 1, '5': 11, '6': '.card.ConstraintsEvaluationRespProto', '10': 'constraintsEvaluationResp'},
    {'1': 'labelEvaluationResp', '3': 7, '4': 1, '5': 11, '6': '.card.LabelEvaluationRespProto', '10': 'labelEvaluationResp'},
  ],
};

/// Descriptor for `EvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationRespProtoDescriptor = $convert.base64Decode(
    'ChNFdmFsdWF0aW9uUmVzcFByb3RvEg4KAmlkGAEgASgJUgJpZBJSChRjaGFubmVsQ2F0ZWdvcn'
    'lUeXBlcxgCIAMoCzIeLmNhcmQuQ2hhbm5lbENhdGVnb3J5VHlwZVByb3RvUhRjaGFubmVsQ2F0'
    'ZWdvcnlUeXBlcxJYChZjaGFubmVsRXZhbHVhdGlvblJlc3BzGAMgAygLMiAuY2FyZC5DaGFubm'
    'VsRXZhbHVhdGlvblJlc3BQcm90b1IWY2hhbm5lbEV2YWx1YXRpb25SZXNwcxJKChFwYXlFdmFs'
    'dWF0aW9uUmVzcBgEIAEoCzIcLmNhcmQuUGF5RXZhbHVhdGlvblJlc3BQcm90b1IRcGF5RXZhbH'
    'VhdGlvblJlc3ASTQoSdGFza0V2YWx1YXRpb25SZXNwGAUgASgLMh0uY2FyZC5UYXNrRXZhbHVh'
    'dGlvblJlc3BQcm90b1ISdGFza0V2YWx1YXRpb25SZXNwEmIKGWNvbnN0cmFpbnRzRXZhbHVhdG'
    'lvblJlc3AYBiABKAsyJC5jYXJkLkNvbnN0cmFpbnRzRXZhbHVhdGlvblJlc3BQcm90b1IZY29u'
    'c3RyYWludHNFdmFsdWF0aW9uUmVzcBJQChNsYWJlbEV2YWx1YXRpb25SZXNwGAcgASgLMh4uY2'
    'FyZC5MYWJlbEV2YWx1YXRpb25SZXNwUHJvdG9SE2xhYmVsRXZhbHVhdGlvblJlc3A=');

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

@$core.Deprecated('Use channelEvaluationRespProtoDescriptor instead')
const ChannelEvaluationRespProto$json = {
  '1': 'ChannelEvaluationRespProto',
  '2': [
    {'1': 'channelCategoryType', '3': 1, '4': 1, '5': 5, '10': 'channelCategoryType'},
    {'1': 'matches', '3': 2, '4': 3, '5': 11, '6': '.card.ChannelProto', '10': 'matches'},
    {'1': 'misMatches', '3': 3, '4': 3, '5': 11, '6': '.card.ChannelProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `ChannelEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelEvaluationRespProtoDescriptor = $convert.base64Decode(
    'ChpDaGFubmVsRXZhbHVhdGlvblJlc3BQcm90bxIwChNjaGFubmVsQ2F0ZWdvcnlUeXBlGAEgAS'
    'gFUhNjaGFubmVsQ2F0ZWdvcnlUeXBlEiwKB21hdGNoZXMYAiADKAsyEi5jYXJkLkNoYW5uZWxQ'
    'cm90b1IHbWF0Y2hlcxIyCgptaXNNYXRjaGVzGAMgAygLMhIuY2FyZC5DaGFubmVsUHJvdG9SCm'
    '1pc01hdGNoZXM=');

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
    {'1': 'channelLabels', '3': 9, '4': 3, '5': 11, '6': '.card.ChannelLabelProto', '10': 'channelLabels'},
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
    'ZGF0ZURhdGUYCCABKANSCnVwZGF0ZURhdGUSPQoNY2hhbm5lbExhYmVscxgJIAMoCzIXLmNhcm'
    'QuQ2hhbm5lbExhYmVsUHJvdG9SDWNoYW5uZWxMYWJlbHMSFAoFb3JkZXIYCiABKAVSBW9yZGVy'
    'EiQKDWNoYW5uZWxTdGF0dXMYCyABKAVSDWNoYW5uZWxTdGF0dXM=');

@$core.Deprecated('Use payEvaluationRespProtoDescriptor instead')
const PayEvaluationRespProto$json = {
  '1': 'PayEvaluationRespProto',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.card.PayProto', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.card.PayProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `PayEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payEvaluationRespProtoDescriptor = $convert.base64Decode(
    'ChZQYXlFdmFsdWF0aW9uUmVzcFByb3RvEigKB21hdGNoZXMYASADKAsyDi5jYXJkLlBheVByb3'
    'RvUgdtYXRjaGVzEi4KCm1pc01hdGNoZXMYAiADKAsyDi5jYXJkLlBheVByb3RvUgptaXNNYXRj'
    'aGVz');

@$core.Deprecated('Use payProtoDescriptor instead')
const PayProto$json = {
  '1': 'PayProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'descriptions', '3': 4, '4': 3, '5': 9, '10': 'descriptions'},
    {'1': 'linkURL', '3': 5, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'createDate', '3': 6, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 7, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'order', '3': 8, '4': 1, '5': 5, '10': 'order'},
    {'1': 'payStatus', '3': 9, '4': 1, '5': 5, '10': 'payStatus'},
  ],
};

/// Descriptor for `PayProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payProtoDescriptor = $convert.base64Decode(
    'CghQYXlQcm90bxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVpbWFnZR'
    'gDIAEoCVIFaW1hZ2USIgoMZGVzY3JpcHRpb25zGAQgAygJUgxkZXNjcmlwdGlvbnMSGAoHbGlu'
    'a1VSTBgFIAEoCVIHbGlua1VSTBIeCgpjcmVhdGVEYXRlGAYgASgDUgpjcmVhdGVEYXRlEh4KCn'
    'VwZGF0ZURhdGUYByABKANSCnVwZGF0ZURhdGUSFAoFb3JkZXIYCCABKAVSBW9yZGVyEhwKCXBh'
    'eVN0YXR1cxgJIAEoBVIJcGF5U3RhdHVz');

@$core.Deprecated('Use taskEvaluationRespProtoDescriptor instead')
const TaskEvaluationRespProto$json = {
  '1': 'TaskEvaluationRespProto',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.card.TaskProto', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.card.TaskProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `TaskEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskEvaluationRespProtoDescriptor = $convert.base64Decode(
    'ChdUYXNrRXZhbHVhdGlvblJlc3BQcm90bxIpCgdtYXRjaGVzGAEgAygLMg8uY2FyZC5UYXNrUH'
    'JvdG9SB21hdGNoZXMSLwoKbWlzTWF0Y2hlcxgCIAMoCzIPLmNhcmQuVGFza1Byb3RvUgptaXNN'
    'YXRjaGVz');

@$core.Deprecated('Use taskProtoDescriptor instead')
const TaskProto$json = {
  '1': 'TaskProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'descriptions', '3': 3, '4': 3, '5': 11, '6': '.card.TaskDescriptionProto', '10': 'descriptions'},
    {'1': 'taskOwner', '3': 4, '4': 1, '5': 5, '10': 'taskOwner'},
    {'1': 'taskOwnerID', '3': 5, '4': 1, '5': 9, '10': 'taskOwnerID'},
    {'1': 'createDate', '3': 6, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 7, '4': 1, '5': 3, '10': 'updateDate'},
  ],
};

/// Descriptor for `TaskProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskProtoDescriptor = $convert.base64Decode(
    'CglUYXNrUHJvdG8SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSPgoMZGVzY3'
    'JpcHRpb25zGAMgAygLMhouY2FyZC5UYXNrRGVzY3JpcHRpb25Qcm90b1IMZGVzY3JpcHRpb25z'
    'EhwKCXRhc2tPd25lchgEIAEoBVIJdGFza093bmVyEiAKC3Rhc2tPd25lcklEGAUgASgJUgt0YX'
    'NrT3duZXJJRBIeCgpjcmVhdGVEYXRlGAYgASgDUgpjcmVhdGVEYXRlEh4KCnVwZGF0ZURhdGUY'
    'ByABKANSCnVwZGF0ZURhdGU=');

@$core.Deprecated('Use taskDescriptionProtoDescriptor instead')
const TaskDescriptionProto$json = {
  '1': 'TaskDescriptionProto',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 2, '4': 3, '5': 9, '10': 'desc'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `TaskDescriptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskDescriptionProtoDescriptor = $convert.base64Decode(
    'ChRUYXNrRGVzY3JpcHRpb25Qcm90bxISCgRuYW1lGAEgASgJUgRuYW1lEhIKBGRlc2MYAiADKA'
    'lSBGRlc2MSFAoFb3JkZXIYAyABKAVSBW9yZGVy');

@$core.Deprecated('Use constraintsEvaluationRespProtoDescriptor instead')
const ConstraintsEvaluationRespProto$json = {
  '1': 'ConstraintsEvaluationRespProto',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.card.ConstraintProto', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.card.ConstraintProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `ConstraintsEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constraintsEvaluationRespProtoDescriptor = $convert.base64Decode(
    'Ch5Db25zdHJhaW50c0V2YWx1YXRpb25SZXNwUHJvdG8SLwoHbWF0Y2hlcxgBIAMoCzIVLmNhcm'
    'QuQ29uc3RyYWludFByb3RvUgdtYXRjaGVzEjUKCm1pc01hdGNoZXMYAiADKAsyFS5jYXJkLkNv'
    'bnN0cmFpbnRQcm90b1IKbWlzTWF0Y2hlcw==');

@$core.Deprecated('Use constraintProtoDescriptor instead')
const ConstraintProto$json = {
  '1': 'ConstraintProto',
  '2': [
    {'1': 'constraintType', '3': 1, '4': 1, '5': 5, '10': 'constraintType'},
    {'1': 'constraintName', '3': 2, '4': 1, '5': 9, '10': 'constraintName'},
    {'1': 'weekDays', '3': 3, '4': 3, '5': 5, '10': 'weekDays'},
  ],
};

/// Descriptor for `ConstraintProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constraintProtoDescriptor = $convert.base64Decode(
    'Cg9Db25zdHJhaW50UHJvdG8SJgoOY29uc3RyYWludFR5cGUYASABKAVSDmNvbnN0cmFpbnRUeX'
    'BlEiYKDmNvbnN0cmFpbnROYW1lGAIgASgJUg5jb25zdHJhaW50TmFtZRIaCgh3ZWVrRGF5cxgD'
    'IAMoBVIId2Vla0RheXM=');

@$core.Deprecated('Use labelEvaluationRespProtoDescriptor instead')
const LabelEvaluationRespProto$json = {
  '1': 'LabelEvaluationRespProto',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.card.LabelProto', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.card.LabelProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `LabelEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelEvaluationRespProtoDescriptor = $convert.base64Decode(
    'ChhMYWJlbEV2YWx1YXRpb25SZXNwUHJvdG8SKgoHbWF0Y2hlcxgBIAMoCzIQLmNhcmQuTGFiZW'
    'xQcm90b1IHbWF0Y2hlcxIwCgptaXNNYXRjaGVzGAIgAygLMhAuY2FyZC5MYWJlbFByb3RvUgpt'
    'aXNNYXRjaGVz');

@$core.Deprecated('Use labelProtoDescriptor instead')
const LabelProto$json = {
  '1': 'LabelProto',
  '2': [
    {'1': 'labelType', '3': 1, '4': 1, '5': 5, '10': 'labelType'},
    {'1': 'labelName', '3': 2, '4': 1, '5': 9, '10': 'labelName'},
  ],
};

/// Descriptor for `LabelProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelProtoDescriptor = $convert.base64Decode(
    'CgpMYWJlbFByb3RvEhwKCWxhYmVsVHlwZRgBIAEoBVIJbGFiZWxUeXBlEhwKCWxhYmVsTmFtZR'
    'gCIAEoCVIJbGFiZWxOYW1l');

@$core.Deprecated('Use rewardProtoDescriptor instead')
const RewardProto$json = {
  '1': 'RewardProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'rewardType', '3': 3, '4': 1, '5': 5, '10': 'rewardType'},
    {'1': 'createDate', '3': 4, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 5, '4': 1, '5': 3, '10': 'updateDate'},
  ],
};

/// Descriptor for `RewardProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rewardProtoDescriptor = $convert.base64Decode(
    'CgtSZXdhcmRQcm90bxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIeCgpyZX'
    'dhcmRUeXBlGAMgASgFUgpyZXdhcmRUeXBlEh4KCmNyZWF0ZURhdGUYBCABKANSCmNyZWF0ZURh'
    'dGUSHgoKdXBkYXRlRGF0ZRgFIAEoA1IKdXBkYXRlRGF0ZQ==');

@$core.Deprecated('Use cardRewardDescriptionProtoDescriptor instead')
const CardRewardDescriptionProto$json = {
  '1': 'CardRewardDescriptionProto',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 2, '4': 1, '5': 5, '10': 'order'},
    {'1': 'desc', '3': 3, '4': 3, '5': 9, '10': 'desc'},
  ],
};

/// Descriptor for `CardRewardDescriptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardDescriptionProtoDescriptor = $convert.base64Decode(
    'ChpDYXJkUmV3YXJkRGVzY3JpcHRpb25Qcm90bxISCgRuYW1lGAEgASgJUgRuYW1lEhQKBW9yZG'
    'VyGAIgASgFUgVvcmRlchISCgRkZXNjGAMgAygJUgRkZXNj');

@$core.Deprecated('Use cardEventProtoDescriptor instead')
const CardEventProto$json = {
  '1': 'CardEventProto',
  '2': [
    {'1': 'event', '3': 1, '4': 1, '5': 11, '6': '.card.EventProto', '10': 'event'},
  ],
};

/// Descriptor for `CardEventProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardEventProtoDescriptor = $convert.base64Decode(
    'Cg5DYXJkRXZlbnRQcm90bxImCgVldmVudBgBIAEoCzIQLmNhcmQuRXZlbnRQcm90b1IFZXZlbn'
    'Q=');

@$core.Deprecated('Use eventProtoDescriptor instead')
const EventProto$json = {
  '1': 'EventProto',
  '2': [
    {'1': 'evaluationID', '3': 1, '4': 1, '5': 9, '10': 'evaluationID'},
    {'1': 'taskIDs', '3': 2, '4': 3, '5': 9, '10': 'taskIDs'},
    {'1': 'payIDs', '3': 3, '4': 3, '5': 9, '10': 'payIDs'},
    {'1': 'channelIDs', '3': 4, '4': 3, '5': 9, '10': 'channelIDs'},
    {'1': 'labels', '3': 5, '4': 3, '5': 5, '10': 'labels'},
    {'1': 'eventDate', '3': 6, '4': 1, '5': 3, '10': 'eventDate'},
    {'1': 'cost', '3': 7, '4': 1, '5': 5, '10': 'cost'},
    {'1': 'rewardType', '3': 8, '4': 1, '5': 5, '10': 'rewardType'},
  ],
};

/// Descriptor for `EventProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventProtoDescriptor = $convert.base64Decode(
    'CgpFdmVudFByb3RvEiIKDGV2YWx1YXRpb25JRBgBIAEoCVIMZXZhbHVhdGlvbklEEhgKB3Rhc2'
    'tJRHMYAiADKAlSB3Rhc2tJRHMSFgoGcGF5SURzGAMgAygJUgZwYXlJRHMSHgoKY2hhbm5lbElE'
    'cxgEIAMoCVIKY2hhbm5lbElEcxIWCgZsYWJlbHMYBSADKAVSBmxhYmVscxIcCglldmVudERhdG'
    'UYBiABKANSCWV2ZW50RGF0ZRISCgRjb3N0GAcgASgFUgRjb3N0Eh4KCnJld2FyZFR5cGUYCCAB'
    'KAVSCnJld2FyZFR5cGU=');

@$core.Deprecated('Use evaluateCardRewardsProtoReplyDescriptor instead')
const EvaluateCardRewardsProtoReply$json = {
  '1': 'EvaluateCardRewardsProtoReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.Reply', '10': 'reply'},
    {'1': 'cardRewardEventResults', '3': 2, '4': 3, '5': 11, '6': '.card.CardRewardEventResultProto', '10': 'cardRewardEventResults'},
  ],
};

/// Descriptor for `EvaluateCardRewardsProtoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluateCardRewardsProtoReplyDescriptor = $convert.base64Decode(
    'Ch1FdmFsdWF0ZUNhcmRSZXdhcmRzUHJvdG9SZXBseRIhCgVyZXBseRgBIAEoCzILLmNhcmQuUm'
    'VwbHlSBXJlcGx5ElgKFmNhcmRSZXdhcmRFdmVudFJlc3VsdHMYAiADKAsyIC5jYXJkLkNhcmRS'
    'ZXdhcmRFdmVudFJlc3VsdFByb3RvUhZjYXJkUmV3YXJkRXZlbnRSZXN1bHRz');

@$core.Deprecated('Use cardRewardEventResultProtoDescriptor instead')
const CardRewardEventResultProto$json = {
  '1': 'CardRewardEventResultProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'cardRewardEvaluationEventResult', '3': 2, '4': 1, '5': 11, '6': '.card.CardRewardEvaluationEventResultProto', '10': 'cardRewardEvaluationEventResult'},
    {'1': 'rewardEventResult', '3': 3, '4': 1, '5': 11, '6': '.card.EvaluationEventResultRespProto', '10': 'rewardEventResult'},
  ],
};

/// Descriptor for `CardRewardEventResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardEventResultProtoDescriptor = $convert.base64Decode(
    'ChpDYXJkUmV3YXJkRXZlbnRSZXN1bHRQcm90bxIOCgJpZBgBIAEoCVICaWQSdAofY2FyZFJld2'
    'FyZEV2YWx1YXRpb25FdmVudFJlc3VsdBgCIAEoCzIqLmNhcmQuQ2FyZFJld2FyZEV2YWx1YXRp'
    'b25FdmVudFJlc3VsdFByb3RvUh9jYXJkUmV3YXJkRXZhbHVhdGlvbkV2ZW50UmVzdWx0ElIKEX'
    'Jld2FyZEV2ZW50UmVzdWx0GAMgASgLMiQuY2FyZC5FdmFsdWF0aW9uRXZlbnRSZXN1bHRSZXNw'
    'UHJvdG9SEXJld2FyZEV2ZW50UmVzdWx0');

@$core.Deprecated('Use cardRewardEvaluationEventResultProtoDescriptor instead')
const CardRewardEvaluationEventResultProto$json = {
  '1': 'CardRewardEvaluationEventResultProto',
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
    {'1': 'reward', '3': 10, '4': 1, '5': 11, '6': '.card.RewardProto', '10': 'reward'},
  ],
};

/// Descriptor for `CardRewardEvaluationEventResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardEvaluationEventResultProtoDescriptor = $convert.base64Decode(
    'CiRDYXJkUmV3YXJkRXZhbHVhdGlvbkV2ZW50UmVzdWx0UHJvdG8SFgoGY2FyZElEGAEgASgJUg'
    'ZjYXJkSUQSGgoIY2FyZE5hbWUYAiABKAlSCGNhcmROYW1lEhoKCGNhcmREZXNjGAMgAygJUghj'
    'YXJkRGVzYxIcCgljYXJkSW1hZ2UYBCABKAlSCWNhcmRJbWFnZRIWCgZiYW5rSUQYBSABKAlSBm'
    'JhbmtJRBIaCghiYW5rTmFtZRgGIAEoCVIIYmFua05hbWUSMAoTY2FyZFJld2FyZFN0YXJ0RGF0'
    'ZRgHIAEoA1ITY2FyZFJld2FyZFN0YXJ0RGF0ZRIsChFjYXJkUmV3YXJkRW5kRGF0ZRgIIAEoA1'
    'IRY2FyZFJld2FyZEVuZERhdGUSJgoOY2FyZFJld2FyZE5hbWUYCSABKAlSDmNhcmRSZXdhcmRO'
    'YW1lEikKBnJld2FyZBgKIAEoCzIRLmNhcmQuUmV3YXJkUHJvdG9SBnJld2FyZA==');

@$core.Deprecated('Use evaluationEventResultRespProtoDescriptor instead')
const EvaluationEventResultRespProto$json = {
  '1': 'EvaluationEventResultRespProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'feedbackEventResultResp', '3': 2, '4': 1, '5': 11, '6': '.card.FeedbackEventResultProto', '10': 'feedbackEventResultResp'},
  ],
};

/// Descriptor for `EvaluationEventResultRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationEventResultRespProtoDescriptor = $convert.base64Decode(
    'Ch5FdmFsdWF0aW9uRXZlbnRSZXN1bHRSZXNwUHJvdG8SDgoCaWQYASABKAlSAmlkElgKF2ZlZW'
    'RiYWNrRXZlbnRSZXN1bHRSZXNwGAIgASgLMh4uY2FyZC5GZWVkYmFja0V2ZW50UmVzdWx0UHJv'
    'dG9SF2ZlZWRiYWNrRXZlbnRSZXN1bHRSZXNw');

@$core.Deprecated('Use feedbackEventResultProtoDescriptor instead')
const FeedbackEventResultProto$json = {
  '1': 'FeedbackEventResultProto',
  '2': [
    {'1': 'rewardType', '3': 1, '4': 1, '5': 5, '10': 'rewardType'},
    {'1': 'calculateType', '3': 2, '4': 1, '5': 5, '10': 'calculateType'},
    {'1': 'cost', '3': 3, '4': 1, '5': 5, '10': 'cost'},
    {'1': 'getReturn', '3': 4, '4': 1, '5': 1, '10': 'getReturn'},
    {'1': 'getPercentage', '3': 5, '4': 1, '5': 1, '10': 'getPercentage'},
    {'1': 'feedbackEventResultStatus', '3': 6, '4': 1, '5': 5, '10': 'feedbackEventResultStatus'},
  ],
};

/// Descriptor for `FeedbackEventResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedbackEventResultProtoDescriptor = $convert.base64Decode(
    'ChhGZWVkYmFja0V2ZW50UmVzdWx0UHJvdG8SHgoKcmV3YXJkVHlwZRgBIAEoBVIKcmV3YXJkVH'
    'lwZRIkCg1jYWxjdWxhdGVUeXBlGAIgASgFUg1jYWxjdWxhdGVUeXBlEhIKBGNvc3QYAyABKAVS'
    'BGNvc3QSHAoJZ2V0UmV0dXJuGAQgASgBUglnZXRSZXR1cm4SJAoNZ2V0UGVyY2VudGFnZRgFIA'
    'EoAVINZ2V0UGVyY2VudGFnZRI8ChlmZWVkYmFja0V2ZW50UmVzdWx0U3RhdHVzGAYgASgFUhlm'
    'ZWVkYmFja0V2ZW50UmVzdWx0U3RhdHVz');

@$core.Deprecated('Use rewardEventResultProtoDescriptor instead')
const RewardEventResultProto$json = {
  '1': 'RewardEventResultProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'rewardEventStatus', '3': 2, '4': 1, '5': 5, '10': 'rewardEventStatus'},
    {'1': 'payloadEvent', '3': 3, '4': 1, '5': 11, '6': '.card.PayloadEventProto', '10': 'payloadEvent'},
  ],
};

/// Descriptor for `RewardEventResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rewardEventResultProtoDescriptor = $convert.base64Decode(
    'ChZSZXdhcmRFdmVudFJlc3VsdFByb3RvEg4KAmlkGAEgASgJUgJpZBIsChFyZXdhcmRFdmVudF'
    'N0YXR1cxgCIAEoBVIRcmV3YXJkRXZlbnRTdGF0dXMSOwoMcGF5bG9hZEV2ZW50GAMgASgLMhcu'
    'Y2FyZC5QYXlsb2FkRXZlbnRQcm90b1IMcGF5bG9hZEV2ZW50');

@$core.Deprecated('Use payloadEventProtoDescriptor instead')
const PayloadEventProto$json = {
  '1': 'PayloadEventProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'pass', '3': 2, '4': 1, '5': 8, '10': 'pass'},
    {'1': 'feedbackEvent', '3': 3, '4': 1, '5': 11, '6': '.card.FeedbackEventProto', '10': 'feedbackEvent'},
    {'1': 'payloadEvents', '3': 4, '4': 3, '5': 11, '6': '.card.PayloadEventProto', '10': 'payloadEvents'},
    {'1': 'containerEvent', '3': 5, '4': 1, '5': 11, '6': '.card.ContainerEventProto', '10': 'containerEvent'},
  ],
};

/// Descriptor for `PayloadEventProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payloadEventProtoDescriptor = $convert.base64Decode(
    'ChFQYXlsb2FkRXZlbnRQcm90bxIOCgJpZBgBIAEoCVICaWQSEgoEcGFzcxgCIAEoCFIEcGFzcx'
    'I+Cg1mZWVkYmFja0V2ZW50GAMgASgLMhguY2FyZC5GZWVkYmFja0V2ZW50UHJvdG9SDWZlZWRi'
    'YWNrRXZlbnQSPQoNcGF5bG9hZEV2ZW50cxgEIAMoCzIXLmNhcmQuUGF5bG9hZEV2ZW50UHJvdG'
    '9SDXBheWxvYWRFdmVudHMSQQoOY29udGFpbmVyRXZlbnQYBSABKAsyGS5jYXJkLkNvbnRhaW5l'
    'ckV2ZW50UHJvdG9SDmNvbnRhaW5lckV2ZW50');

@$core.Deprecated('Use feedbackEventProtoDescriptor instead')
const FeedbackEventProto$json = {
  '1': 'FeedbackEventProto',
  '2': [
    {'1': 'rewardType', '3': 1, '4': 1, '5': 5, '10': 'rewardType'},
    {'1': 'cost', '3': 2, '4': 1, '5': 5, '10': 'cost'},
    {'1': 'getReturn', '3': 3, '4': 1, '5': 1, '10': 'getReturn'},
    {'1': 'getPercentage', '3': 4, '4': 1, '5': 1, '10': 'getPercentage'},
    {'1': 'feedbackEventStatus', '3': 5, '4': 1, '5': 5, '10': 'feedbackEventStatus'},
  ],
};

/// Descriptor for `FeedbackEventProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedbackEventProtoDescriptor = $convert.base64Decode(
    'ChJGZWVkYmFja0V2ZW50UHJvdG8SHgoKcmV3YXJkVHlwZRgBIAEoBVIKcmV3YXJkVHlwZRISCg'
    'Rjb3N0GAIgASgFUgRjb3N0EhwKCWdldFJldHVybhgDIAEoAVIJZ2V0UmV0dXJuEiQKDWdldFBl'
    'cmNlbnRhZ2UYBCABKAFSDWdldFBlcmNlbnRhZ2USMAoTZmVlZGJhY2tFdmVudFN0YXR1cxgFIA'
    'EoBVITZmVlZGJhY2tFdmVudFN0YXR1cw==');

@$core.Deprecated('Use containerEventProtoDescriptor instead')
const ContainerEventProto$json = {
  '1': 'ContainerEventProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'pass', '3': 2, '4': 1, '5': 8, '10': 'pass'},
    {'1': 'containerEvents', '3': 3, '4': 3, '5': 11, '6': '.card.ContainerEventProto', '10': 'containerEvents'},
    {'1': 'matches', '3': 4, '4': 3, '5': 9, '10': 'matches'},
    {'1': 'misMatches', '3': 5, '4': 3, '5': 9, '10': 'misMatches'},
    {'1': 'cotraintEvent', '3': 6, '4': 1, '5': 11, '6': '.card.ConstraintEventReplyProto', '10': 'cotraintEvent'},
  ],
};

/// Descriptor for `ContainerEventProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerEventProtoDescriptor = $convert.base64Decode(
    'ChNDb250YWluZXJFdmVudFByb3RvEg4KAmlkGAEgASgJUgJpZBISCgRwYXNzGAIgASgIUgRwYX'
    'NzEkMKD2NvbnRhaW5lckV2ZW50cxgDIAMoCzIZLmNhcmQuQ29udGFpbmVyRXZlbnRQcm90b1IP'
    'Y29udGFpbmVyRXZlbnRzEhgKB21hdGNoZXMYBCADKAlSB21hdGNoZXMSHgoKbWlzTWF0Y2hlcx'
    'gFIAMoCVIKbWlzTWF0Y2hlcxJFCg1jb3RyYWludEV2ZW50GAYgASgLMh8uY2FyZC5Db25zdHJh'
    'aW50RXZlbnRSZXBseVByb3RvUg1jb3RyYWludEV2ZW50');

@$core.Deprecated('Use constraintEventReplyProtoDescriptor instead')
const ConstraintEventReplyProto$json = {
  '1': 'ConstraintEventReplyProto',
  '2': [
    {'1': 'pass', '3': 1, '4': 1, '5': 8, '10': 'pass'},
    {'1': 'constraintType', '3': 2, '4': 1, '5': 5, '10': 'constraintType'},
    {'1': 'matches', '3': 3, '4': 3, '5': 9, '10': 'matches'},
    {'1': 'misMatches', '3': 4, '4': 3, '5': 9, '10': 'misMatches'},
  ],
};

/// Descriptor for `ConstraintEventReplyProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constraintEventReplyProtoDescriptor = $convert.base64Decode(
    'ChlDb25zdHJhaW50RXZlbnRSZXBseVByb3RvEhIKBHBhc3MYASABKAhSBHBhc3MSJgoOY29uc3'
    'RyYWludFR5cGUYAiABKAVSDmNvbnN0cmFpbnRUeXBlEhgKB21hdGNoZXMYAyADKAlSB21hdGNo'
    'ZXMSHgoKbWlzTWF0Y2hlcxgEIAMoCVIKbWlzTWF0Y2hlcw==');

@$core.Deprecated('Use descriptionProtoDescriptor instead')
const DescriptionProto$json = {
  '1': 'DescriptionProto',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 2, '4': 3, '5': 9, '10': 'desc'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `DescriptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List descriptionProtoDescriptor = $convert.base64Decode(
    'ChBEZXNjcmlwdGlvblByb3RvEhIKBG5hbWUYASABKAlSBG5hbWUSEgoEZGVzYxgCIAMoCVIEZG'
    'VzYxIUCgVvcmRlchgDIAEoBVIFb3JkZXI=');

@$core.Deprecated('Use channelLabelProtoDescriptor instead')
const ChannelLabelProto$json = {
  '1': 'ChannelLabelProto',
  '2': [
    {'1': 'labelType', '3': 1, '4': 1, '5': 5, '10': 'labelType'},
    {'1': 'labelName', '3': 2, '4': 1, '5': 9, '10': 'labelName'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `ChannelLabelProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelLabelProtoDescriptor = $convert.base64Decode(
    'ChFDaGFubmVsTGFiZWxQcm90bxIcCglsYWJlbFR5cGUYASABKAVSCWxhYmVsVHlwZRIcCglsYW'
    'JlbE5hbWUYAiABKAlSCWxhYmVsTmFtZRIUCgVvcmRlchgDIAEoBVIFb3JkZXI=');

@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode(
    'CgxFbXB0eVJlcXVlc3Q=');

@$core.Deprecated('Use bankIDProtoDescriptor instead')
const BankIDProto$json = {
  '1': 'BankIDProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `BankIDProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bankIDProtoDescriptor = $convert.base64Decode(
    'CgtCYW5rSURQcm90bxIOCgJpZBgBIAEoCVICaWQ=');

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

