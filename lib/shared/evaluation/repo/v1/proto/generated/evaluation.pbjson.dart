//
//  Generated code. Do not modify.
//  source: evaluation.proto
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
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.evaluation_v1.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIqCgVlcnJvchgCIAEoCzIULmV2YWx1YX'
    'Rpb25fdjEuRXJyb3JSBWVycm9y');

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

@$core.Deprecated('Use eventReqDescriptor instead')
const EventReq$json = {
  '1': 'EventReq',
  '2': [
    {'1': 'ownerID', '3': 1, '4': 1, '5': 9, '10': 'ownerID'},
    {'1': 'eventDate', '3': 2, '4': 1, '5': 3, '10': 'eventDate'},
    {'1': 'cost', '3': 3, '4': 1, '5': 5, '10': 'cost'},
    {'1': 'channelEvent', '3': 4, '4': 1, '5': 11, '6': '.evaluation_v1.EventReq.ChannelEvent', '10': 'channelEvent'},
    {'1': 'payEvent', '3': 5, '4': 1, '5': 11, '6': '.evaluation_v1.EventReq.PayEvent', '10': 'payEvent'},
    {'1': 'cardEvent', '3': 6, '4': 1, '5': 11, '6': '.evaluation_v1.EventReq.CardEvent', '10': 'cardEvent'},
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
    {'1': 'channelsWithLabelEvents', '3': 1, '4': 3, '5': 11, '6': '.evaluation_v1.EventReq.ChannelWithLabelEvent', '10': 'channelsWithLabelEvents'},
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
    'CghFdmVudFJlcRIYCgdvd25lcklEGAEgASgJUgdvd25lcklEEhwKCWV2ZW50RGF0ZRgCIAEoA1'
    'IJZXZlbnREYXRlEhIKBGNvc3QYAyABKAVSBGNvc3QSSAoMY2hhbm5lbEV2ZW50GAQgASgLMiQu'
    'ZXZhbHVhdGlvbl92MS5FdmVudFJlcS5DaGFubmVsRXZlbnRSDGNoYW5uZWxFdmVudBI8CghwYX'
    'lFdmVudBgFIAEoCzIgLmV2YWx1YXRpb25fdjEuRXZlbnRSZXEuUGF5RXZlbnRSCHBheUV2ZW50'
    'Ej8KCWNhcmRFdmVudBgGIAEoCzIhLmV2YWx1YXRpb25fdjEuRXZlbnRSZXEuQ2FyZEV2ZW50Ug'
    'ljYXJkRXZlbnQaWwoVQ2hhbm5lbFdpdGhMYWJlbEV2ZW50EhwKCWNoYW5uZWxJRBgBIAEoCVIJ'
    'Y2hhbm5lbElEEiQKDWNoYW5uZWxMYWJlbHMYAiADKAVSDWNoYW5uZWxMYWJlbHManQEKDENoYW'
    '5uZWxFdmVudBJnChdjaGFubmVsc1dpdGhMYWJlbEV2ZW50cxgBIAMoCzItLmV2YWx1YXRpb25f'
    'djEuRXZlbnRSZXEuQ2hhbm5lbFdpdGhMYWJlbEV2ZW50UhdjaGFubmVsc1dpdGhMYWJlbEV2ZW'
    '50cxIkCg1jaGFubmVsTGFiZWxzGAIgAygFUg1jaGFubmVsTGFiZWxzGpkBCglDYXJkRXZlbnQS'
    'HgoKcmV3YXJkVHlwZRgBIAEoBVIKcmV3YXJkVHlwZRI4ChdjYXJkUmV3YXJkVGFza0xhYmVsUG'
    'FzcxgCIAEoCFIXY2FyZFJld2FyZFRhc2tMYWJlbFBhc3MSMgoUY2FyZFJld2FyZFRhc2tMYWJl'
    'bHMYAyADKAVSFGNhcmRSZXdhcmRUYXNrTGFiZWxzGjYKCFBheUV2ZW50EhIKBHBhc3MYASABKA'
    'hSBHBhc3MSFgoGcGF5SURzGAIgAygJUgZwYXlJRHM=');

@$core.Deprecated('Use evaluationEventResultRespReplyDescriptor instead')
const EvaluationEventResultRespReply$json = {
  '1': 'EvaluationEventResultRespReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.evaluation_v1.Reply', '10': 'reply'},
    {'1': 'evaluationEventResultResp', '3': 2, '4': 1, '5': 11, '6': '.evaluation_v1.EvaluationEventResultRespReply.EvaluationEventResultResp', '10': 'evaluationEventResultResp'},
  ],
  '3': [EvaluationEventResultRespReply_FeedbackEventResultResp$json, EvaluationEventResultRespReply_EvaluationEventResultResp$json],
};

@$core.Deprecated('Use evaluationEventResultRespReplyDescriptor instead')
const EvaluationEventResultRespReply_FeedbackEventResultResp$json = {
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

@$core.Deprecated('Use evaluationEventResultRespReplyDescriptor instead')
const EvaluationEventResultRespReply_EvaluationEventResultResp$json = {
  '1': 'EvaluationEventResultResp',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'feedbackEventResultResp', '3': 2, '4': 1, '5': 11, '6': '.evaluation_v1.EvaluationEventResultRespReply.FeedbackEventResultResp', '10': 'feedbackEventResultResp'},
  ],
};

/// Descriptor for `EvaluationEventResultRespReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationEventResultRespReplyDescriptor = $convert.base64Decode(
    'Ch5FdmFsdWF0aW9uRXZlbnRSZXN1bHRSZXNwUmVwbHkSKgoFcmVwbHkYASABKAsyFC5ldmFsdW'
    'F0aW9uX3YxLlJlcGx5UgVyZXBseRKFAQoZZXZhbHVhdGlvbkV2ZW50UmVzdWx0UmVzcBgCIAEo'
    'CzJHLmV2YWx1YXRpb25fdjEuRXZhbHVhdGlvbkV2ZW50UmVzdWx0UmVzcFJlcGx5LkV2YWx1YX'
    'Rpb25FdmVudFJlc3VsdFJlc3BSGWV2YWx1YXRpb25FdmVudFJlc3VsdFJlc3Aa9QEKF0ZlZWRi'
    'YWNrRXZlbnRSZXN1bHRSZXNwEh4KCnJld2FyZFR5cGUYASABKAVSCnJld2FyZFR5cGUSJAoNY2'
    'FsY3VsYXRlVHlwZRgCIAEoBVINY2FsY3VsYXRlVHlwZRISCgRjb3N0GAMgASgFUgRjb3N0EhwK'
    'CWdldFJldHVybhgEIAEoAVIJZ2V0UmV0dXJuEiQKDWdldFBlcmNlbnRhZ2UYBSABKAFSDWdldF'
    'BlcmNlbnRhZ2USPAoZZmVlZGJhY2tFdmVudFJlc3VsdFN0YXR1cxgGIAEoBVIZZmVlZGJhY2tF'
    'dmVudFJlc3VsdFN0YXR1cxqsAQoZRXZhbHVhdGlvbkV2ZW50UmVzdWx0UmVzcBIOCgJpZBgBIA'
    'EoCVICaWQSfwoXZmVlZGJhY2tFdmVudFJlc3VsdFJlc3AYAiABKAsyRS5ldmFsdWF0aW9uX3Yx'
    'LkV2YWx1YXRpb25FdmVudFJlc3VsdFJlc3BSZXBseS5GZWVkYmFja0V2ZW50UmVzdWx0UmVzcF'
    'IXZmVlZGJhY2tFdmVudFJlc3VsdFJlc3A=');

@$core.Deprecated('Use ownerIDReqDescriptor instead')
const OwnerIDReq$json = {
  '1': 'OwnerIDReq',
  '2': [
    {'1': 'ownerID', '3': 1, '4': 1, '5': 9, '10': 'ownerID'},
  ],
};

/// Descriptor for `OwnerIDReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ownerIDReqDescriptor = $convert.base64Decode(
    'CgpPd25lcklEUmVxEhgKB293bmVySUQYASABKAlSB293bmVySUQ=');

@$core.Deprecated('Use evaluationRespReplyDescriptor instead')
const EvaluationRespReply$json = {
  '1': 'EvaluationRespReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.evaluation_v1.Reply', '10': 'reply'},
    {'1': 'evaluationResp', '3': 2, '4': 1, '5': 11, '6': '.evaluation_v1.EvaluationResp', '10': 'evaluationResp'},
  ],
};

/// Descriptor for `EvaluationRespReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationRespReplyDescriptor = $convert.base64Decode(
    'ChNFdmFsdWF0aW9uUmVzcFJlcGx5EioKBXJlcGx5GAEgASgLMhQuZXZhbHVhdGlvbl92MS5SZX'
    'BseVIFcmVwbHkSRQoOZXZhbHVhdGlvblJlc3AYAiABKAsyHS5ldmFsdWF0aW9uX3YxLkV2YWx1'
    'YXRpb25SZXNwUg5ldmFsdWF0aW9uUmVzcA==');

@$core.Deprecated('Use evaluationRespDescriptor instead')
const EvaluationResp$json = {
  '1': 'EvaluationResp',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'channelCategoryTypes', '3': 2, '4': 3, '5': 11, '6': '.evaluation_v1.ChannelCategoryType', '10': 'channelCategoryTypes'},
    {'1': 'channelEvaluationResps', '3': 3, '4': 3, '5': 11, '6': '.evaluation_v1.ChannelEvaluationResp', '10': 'channelEvaluationResps'},
    {'1': 'payEvaluationResp', '3': 4, '4': 1, '5': 11, '6': '.evaluation_v1.PayEvaluationResp', '10': 'payEvaluationResp'},
    {'1': 'taskEvaluationResp', '3': 5, '4': 1, '5': 11, '6': '.evaluation_v1.TaskEvaluationResp', '10': 'taskEvaluationResp'},
    {'1': 'constraintsEvaluationResp', '3': 6, '4': 1, '5': 11, '6': '.evaluation_v1.ConstraintsEvaluationResp', '10': 'constraintsEvaluationResp'},
    {'1': 'labelEvaluationResp', '3': 7, '4': 1, '5': 11, '6': '.evaluation_v1.LabelEvaluationResp', '10': 'labelEvaluationResp'},
  ],
};

/// Descriptor for `EvaluationResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationRespDescriptor = $convert.base64Decode(
    'Cg5FdmFsdWF0aW9uUmVzcBIOCgJpZBgBIAEoCVICaWQSVgoUY2hhbm5lbENhdGVnb3J5VHlwZX'
    'MYAiADKAsyIi5ldmFsdWF0aW9uX3YxLkNoYW5uZWxDYXRlZ29yeVR5cGVSFGNoYW5uZWxDYXRl'
    'Z29yeVR5cGVzElwKFmNoYW5uZWxFdmFsdWF0aW9uUmVzcHMYAyADKAsyJC5ldmFsdWF0aW9uX3'
    'YxLkNoYW5uZWxFdmFsdWF0aW9uUmVzcFIWY2hhbm5lbEV2YWx1YXRpb25SZXNwcxJOChFwYXlF'
    'dmFsdWF0aW9uUmVzcBgEIAEoCzIgLmV2YWx1YXRpb25fdjEuUGF5RXZhbHVhdGlvblJlc3BSEX'
    'BheUV2YWx1YXRpb25SZXNwElEKEnRhc2tFdmFsdWF0aW9uUmVzcBgFIAEoCzIhLmV2YWx1YXRp'
    'b25fdjEuVGFza0V2YWx1YXRpb25SZXNwUhJ0YXNrRXZhbHVhdGlvblJlc3ASZgoZY29uc3RyYW'
    'ludHNFdmFsdWF0aW9uUmVzcBgGIAEoCzIoLmV2YWx1YXRpb25fdjEuQ29uc3RyYWludHNFdmFs'
    'dWF0aW9uUmVzcFIZY29uc3RyYWludHNFdmFsdWF0aW9uUmVzcBJUChNsYWJlbEV2YWx1YXRpb2'
    '5SZXNwGAcgASgLMiIuZXZhbHVhdGlvbl92MS5MYWJlbEV2YWx1YXRpb25SZXNwUhNsYWJlbEV2'
    'YWx1YXRpb25SZXNw');

@$core.Deprecated('Use channelCategoryTypeDescriptor instead')
const ChannelCategoryType$json = {
  '1': 'ChannelCategoryType',
  '2': [
    {'1': 'categoryType', '3': 1, '4': 1, '5': 5, '10': 'categoryType'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `ChannelCategoryType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelCategoryTypeDescriptor = $convert.base64Decode(
    'ChNDaGFubmVsQ2F0ZWdvcnlUeXBlEiIKDGNhdGVnb3J5VHlwZRgBIAEoBVIMY2F0ZWdvcnlUeX'
    'BlEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFb3JkZXIYAyABKAVSBW9yZGVy');

@$core.Deprecated('Use channelEvaluationRespDescriptor instead')
const ChannelEvaluationResp$json = {
  '1': 'ChannelEvaluationResp',
  '2': [
    {'1': 'channelCategoryType', '3': 1, '4': 1, '5': 5, '10': 'channelCategoryType'},
    {'1': 'matches', '3': 2, '4': 3, '5': 11, '6': '.evaluation_v1.ChannelEvaluationResp.Channel', '10': 'matches'},
    {'1': 'misMatches', '3': 3, '4': 3, '5': 11, '6': '.evaluation_v1.ChannelEvaluationResp.Channel', '10': 'misMatches'},
  ],
  '3': [ChannelEvaluationResp_Channel$json],
};

@$core.Deprecated('Use channelEvaluationRespDescriptor instead')
const ChannelEvaluationResp_Channel$json = {
  '1': 'Channel',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'linkURL', '3': 4, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'descriptions', '3': 5, '4': 3, '5': 9, '10': 'descriptions'},
    {'1': 'channelCategoryType', '3': 6, '4': 1, '5': 5, '10': 'channelCategoryType'},
    {'1': 'createDate', '3': 7, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 8, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'order', '3': 9, '4': 1, '5': 5, '10': 'order'},
    {'1': 'channelStatus', '3': 10, '4': 1, '5': 5, '10': 'channelStatus'},
  ],
};

/// Descriptor for `ChannelEvaluationResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelEvaluationRespDescriptor = $convert.base64Decode(
    'ChVDaGFubmVsRXZhbHVhdGlvblJlc3ASMAoTY2hhbm5lbENhdGVnb3J5VHlwZRgBIAEoBVITY2'
    'hhbm5lbENhdGVnb3J5VHlwZRJGCgdtYXRjaGVzGAIgAygLMiwuZXZhbHVhdGlvbl92MS5DaGFu'
    'bmVsRXZhbHVhdGlvblJlc3AuQ2hhbm5lbFIHbWF0Y2hlcxJMCgptaXNNYXRjaGVzGAMgAygLMi'
    'wuZXZhbHVhdGlvbl92MS5DaGFubmVsRXZhbHVhdGlvblJlc3AuQ2hhbm5lbFIKbWlzTWF0Y2hl'
    'cxqvAgoHQ2hhbm5lbBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVpbW'
    'FnZRgDIAEoCVIFaW1hZ2USGAoHbGlua1VSTBgEIAEoCVIHbGlua1VSTBIiCgxkZXNjcmlwdGlv'
    'bnMYBSADKAlSDGRlc2NyaXB0aW9ucxIwChNjaGFubmVsQ2F0ZWdvcnlUeXBlGAYgASgFUhNjaG'
    'FubmVsQ2F0ZWdvcnlUeXBlEh4KCmNyZWF0ZURhdGUYByABKANSCmNyZWF0ZURhdGUSHgoKdXBk'
    'YXRlRGF0ZRgIIAEoA1IKdXBkYXRlRGF0ZRIUCgVvcmRlchgJIAEoBVIFb3JkZXISJAoNY2hhbm'
    '5lbFN0YXR1cxgKIAEoBVINY2hhbm5lbFN0YXR1cw==');

@$core.Deprecated('Use payEvaluationRespDescriptor instead')
const PayEvaluationResp$json = {
  '1': 'PayEvaluationResp',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.evaluation_v1.PayEvaluationResp.Pay', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.evaluation_v1.PayEvaluationResp.Pay', '10': 'misMatches'},
  ],
  '3': [PayEvaluationResp_Pay$json],
};

@$core.Deprecated('Use payEvaluationRespDescriptor instead')
const PayEvaluationResp_Pay$json = {
  '1': 'Pay',
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

/// Descriptor for `PayEvaluationResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payEvaluationRespDescriptor = $convert.base64Decode(
    'ChFQYXlFdmFsdWF0aW9uUmVzcBI+CgdtYXRjaGVzGAEgAygLMiQuZXZhbHVhdGlvbl92MS5QYX'
    'lFdmFsdWF0aW9uUmVzcC5QYXlSB21hdGNoZXMSRAoKbWlzTWF0Y2hlcxgCIAMoCzIkLmV2YWx1'
    'YXRpb25fdjEuUGF5RXZhbHVhdGlvblJlc3AuUGF5UgptaXNNYXRjaGVzGvEBCgNQYXkSDgoCaW'
    'QYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFaW1hZ2UYAyABKAlSBWltYWdlEiIK'
    'DGRlc2NyaXB0aW9ucxgEIAMoCVIMZGVzY3JpcHRpb25zEhgKB2xpbmtVUkwYBSABKAlSB2xpbm'
    'tVUkwSHgoKY3JlYXRlRGF0ZRgGIAEoA1IKY3JlYXRlRGF0ZRIeCgp1cGRhdGVEYXRlGAcgASgD'
    'Ugp1cGRhdGVEYXRlEhQKBW9yZGVyGAggASgFUgVvcmRlchIcCglwYXlTdGF0dXMYCSABKAVSCX'
    'BheVN0YXR1cw==');

@$core.Deprecated('Use taskEvaluationRespDescriptor instead')
const TaskEvaluationResp$json = {
  '1': 'TaskEvaluationResp',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.evaluation_v1.TaskEvaluationResp.Task', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.evaluation_v1.TaskEvaluationResp.Task', '10': 'misMatches'},
  ],
  '3': [TaskEvaluationResp_Task$json],
};

@$core.Deprecated('Use taskEvaluationRespDescriptor instead')
const TaskEvaluationResp_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'descriptions', '3': 3, '4': 3, '5': 11, '6': '.evaluation_v1.TaskEvaluationResp.Task.TaskDescription', '10': 'descriptions'},
    {'1': 'taskOwner', '3': 4, '4': 1, '5': 5, '10': 'taskOwner'},
    {'1': 'taskOwnerID', '3': 5, '4': 1, '5': 9, '10': 'taskOwnerID'},
    {'1': 'createDate', '3': 6, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 7, '4': 1, '5': 3, '10': 'updateDate'},
  ],
  '3': [TaskEvaluationResp_Task_TaskDescription$json],
};

@$core.Deprecated('Use taskEvaluationRespDescriptor instead')
const TaskEvaluationResp_Task_TaskDescription$json = {
  '1': 'TaskDescription',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 2, '4': 3, '5': 9, '10': 'desc'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `TaskEvaluationResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskEvaluationRespDescriptor = $convert.base64Decode(
    'ChJUYXNrRXZhbHVhdGlvblJlc3ASQAoHbWF0Y2hlcxgBIAMoCzImLmV2YWx1YXRpb25fdjEuVG'
    'Fza0V2YWx1YXRpb25SZXNwLlRhc2tSB21hdGNoZXMSRgoKbWlzTWF0Y2hlcxgCIAMoCzImLmV2'
    'YWx1YXRpb25fdjEuVGFza0V2YWx1YXRpb25SZXNwLlRhc2tSCm1pc01hdGNoZXMa1wIKBFRhc2'
    'sSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSWgoMZGVzY3JpcHRpb25zGAMg'
    'AygLMjYuZXZhbHVhdGlvbl92MS5UYXNrRXZhbHVhdGlvblJlc3AuVGFzay5UYXNrRGVzY3JpcH'
    'Rpb25SDGRlc2NyaXB0aW9ucxIcCgl0YXNrT3duZXIYBCABKAVSCXRhc2tPd25lchIgCgt0YXNr'
    'T3duZXJJRBgFIAEoCVILdGFza093bmVySUQSHgoKY3JlYXRlRGF0ZRgGIAEoA1IKY3JlYXRlRG'
    'F0ZRIeCgp1cGRhdGVEYXRlGAcgASgDUgp1cGRhdGVEYXRlGk8KD1Rhc2tEZXNjcmlwdGlvbhIS'
    'CgRuYW1lGAEgASgJUgRuYW1lEhIKBGRlc2MYAiADKAlSBGRlc2MSFAoFb3JkZXIYAyABKAVSBW'
    '9yZGVy');

@$core.Deprecated('Use constraintsEvaluationRespDescriptor instead')
const ConstraintsEvaluationResp$json = {
  '1': 'ConstraintsEvaluationResp',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.evaluation_v1.ConstraintsEvaluationResp.Constraint', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.evaluation_v1.ConstraintsEvaluationResp.Constraint', '10': 'misMatches'},
  ],
  '3': [ConstraintsEvaluationResp_Constraint$json],
};

@$core.Deprecated('Use constraintsEvaluationRespDescriptor instead')
const ConstraintsEvaluationResp_Constraint$json = {
  '1': 'Constraint',
  '2': [
    {'1': 'constraintType', '3': 1, '4': 1, '5': 5, '10': 'constraintType'},
    {'1': 'constraintName', '3': 2, '4': 1, '5': 9, '10': 'constraintName'},
    {'1': 'weekDays', '3': 3, '4': 3, '5': 5, '10': 'weekDays'},
  ],
};

/// Descriptor for `ConstraintsEvaluationResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constraintsEvaluationRespDescriptor = $convert.base64Decode(
    'ChlDb25zdHJhaW50c0V2YWx1YXRpb25SZXNwEk0KB21hdGNoZXMYASADKAsyMy5ldmFsdWF0aW'
    '9uX3YxLkNvbnN0cmFpbnRzRXZhbHVhdGlvblJlc3AuQ29uc3RyYWludFIHbWF0Y2hlcxJTCgpt'
    'aXNNYXRjaGVzGAIgAygLMjMuZXZhbHVhdGlvbl92MS5Db25zdHJhaW50c0V2YWx1YXRpb25SZX'
    'NwLkNvbnN0cmFpbnRSCm1pc01hdGNoZXMaeAoKQ29uc3RyYWludBImCg5jb25zdHJhaW50VHlw'
    'ZRgBIAEoBVIOY29uc3RyYWludFR5cGUSJgoOY29uc3RyYWludE5hbWUYAiABKAlSDmNvbnN0cm'
    'FpbnROYW1lEhoKCHdlZWtEYXlzGAMgAygFUgh3ZWVrRGF5cw==');

@$core.Deprecated('Use labelEvaluationRespDescriptor instead')
const LabelEvaluationResp$json = {
  '1': 'LabelEvaluationResp',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.evaluation_v1.LabelEvaluationResp.Label', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.evaluation_v1.LabelEvaluationResp.Label', '10': 'misMatches'},
  ],
  '3': [LabelEvaluationResp_Label$json],
};

@$core.Deprecated('Use labelEvaluationRespDescriptor instead')
const LabelEvaluationResp_Label$json = {
  '1': 'Label',
  '2': [
    {'1': 'labelType', '3': 1, '4': 1, '5': 5, '10': 'labelType'},
    {'1': 'labelName', '3': 2, '4': 1, '5': 9, '10': 'labelName'},
  ],
};

/// Descriptor for `LabelEvaluationResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelEvaluationRespDescriptor = $convert.base64Decode(
    'ChNMYWJlbEV2YWx1YXRpb25SZXNwEkIKB21hdGNoZXMYASADKAsyKC5ldmFsdWF0aW9uX3YxLk'
    'xhYmVsRXZhbHVhdGlvblJlc3AuTGFiZWxSB21hdGNoZXMSSAoKbWlzTWF0Y2hlcxgCIAMoCzIo'
    'LmV2YWx1YXRpb25fdjEuTGFiZWxFdmFsdWF0aW9uUmVzcC5MYWJlbFIKbWlzTWF0Y2hlcxpDCg'
    'VMYWJlbBIcCglsYWJlbFR5cGUYASABKAVSCWxhYmVsVHlwZRIcCglsYWJlbE5hbWUYAiABKAlS'
    'CWxhYmVsTmFtZQ==');

