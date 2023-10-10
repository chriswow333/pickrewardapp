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
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.evaluation.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxInCgVlcnJvchgCIAEoCzIRLmV2YWx1YX'
    'Rpb24uRXJyb3JSBWVycm9y');

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
    {'1': 'channelIDs', '3': 2, '4': 3, '5': 9, '10': 'channelIDs'},
    {'1': 'taskIDs', '3': 3, '4': 3, '5': 9, '10': 'taskIDs'},
    {'1': 'payIDs', '3': 4, '4': 3, '5': 9, '10': 'payIDs'},
    {'1': 'labels', '3': 5, '4': 3, '5': 5, '10': 'labels'},
    {'1': 'eventDate', '3': 6, '4': 1, '5': 3, '10': 'eventDate'},
    {'1': 'cost', '3': 7, '4': 1, '5': 5, '10': 'cost'},
    {'1': 'rewardType', '3': 8, '4': 1, '5': 5, '10': 'rewardType'},
  ],
};

/// Descriptor for `EventReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventReqDescriptor = $convert.base64Decode(
    'CghFdmVudFJlcRIYCgdvd25lcklEGAEgASgJUgdvd25lcklEEh4KCmNoYW5uZWxJRHMYAiADKA'
    'lSCmNoYW5uZWxJRHMSGAoHdGFza0lEcxgDIAMoCVIHdGFza0lEcxIWCgZwYXlJRHMYBCADKAlS'
    'BnBheUlEcxIWCgZsYWJlbHMYBSADKAVSBmxhYmVscxIcCglldmVudERhdGUYBiABKANSCWV2ZW'
    '50RGF0ZRISCgRjb3N0GAcgASgFUgRjb3N0Eh4KCnJld2FyZFR5cGUYCCABKAVSCnJld2FyZFR5'
    'cGU=');

@$core.Deprecated('Use evaluationEventResultRespReplyDescriptor instead')
const EvaluationEventResultRespReply$json = {
  '1': 'EvaluationEventResultRespReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.evaluation.Reply', '10': 'reply'},
    {'1': 'evaluationEventResultResp', '3': 2, '4': 1, '5': 11, '6': '.evaluation.EvaluationEventResultRespReply.EvaluationEventResultResp', '10': 'evaluationEventResultResp'},
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
    {'1': 'feedbackEventResultResp', '3': 2, '4': 1, '5': 11, '6': '.evaluation.EvaluationEventResultRespReply.FeedbackEventResultResp', '10': 'feedbackEventResultResp'},
  ],
};

/// Descriptor for `EvaluationEventResultRespReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationEventResultRespReplyDescriptor = $convert.base64Decode(
    'Ch5FdmFsdWF0aW9uRXZlbnRSZXN1bHRSZXNwUmVwbHkSJwoFcmVwbHkYASABKAsyES5ldmFsdW'
    'F0aW9uLlJlcGx5UgVyZXBseRKCAQoZZXZhbHVhdGlvbkV2ZW50UmVzdWx0UmVzcBgCIAEoCzJE'
    'LmV2YWx1YXRpb24uRXZhbHVhdGlvbkV2ZW50UmVzdWx0UmVzcFJlcGx5LkV2YWx1YXRpb25Fdm'
    'VudFJlc3VsdFJlc3BSGWV2YWx1YXRpb25FdmVudFJlc3VsdFJlc3Aa9QEKF0ZlZWRiYWNrRXZl'
    'bnRSZXN1bHRSZXNwEh4KCnJld2FyZFR5cGUYASABKAVSCnJld2FyZFR5cGUSJAoNY2FsY3VsYX'
    'RlVHlwZRgCIAEoBVINY2FsY3VsYXRlVHlwZRISCgRjb3N0GAMgASgFUgRjb3N0EhwKCWdldFJl'
    'dHVybhgEIAEoAVIJZ2V0UmV0dXJuEiQKDWdldFBlcmNlbnRhZ2UYBSABKAFSDWdldFBlcmNlbn'
    'RhZ2USPAoZZmVlZGJhY2tFdmVudFJlc3VsdFN0YXR1cxgGIAEoBVIZZmVlZGJhY2tFdmVudFJl'
    'c3VsdFN0YXR1cxqpAQoZRXZhbHVhdGlvbkV2ZW50UmVzdWx0UmVzcBIOCgJpZBgBIAEoCVICaW'
    'QSfAoXZmVlZGJhY2tFdmVudFJlc3VsdFJlc3AYAiABKAsyQi5ldmFsdWF0aW9uLkV2YWx1YXRp'
    'b25FdmVudFJlc3VsdFJlc3BSZXBseS5GZWVkYmFja0V2ZW50UmVzdWx0UmVzcFIXZmVlZGJhY2'
    'tFdmVudFJlc3VsdFJlc3A=');

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
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.evaluation.Reply', '10': 'reply'},
    {'1': 'evaluationResp', '3': 2, '4': 1, '5': 11, '6': '.evaluation.EvaluationResp', '10': 'evaluationResp'},
  ],
};

/// Descriptor for `EvaluationRespReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationRespReplyDescriptor = $convert.base64Decode(
    'ChNFdmFsdWF0aW9uUmVzcFJlcGx5EicKBXJlcGx5GAEgASgLMhEuZXZhbHVhdGlvbi5SZXBseV'
    'IFcmVwbHkSQgoOZXZhbHVhdGlvblJlc3AYAiABKAsyGi5ldmFsdWF0aW9uLkV2YWx1YXRpb25S'
    'ZXNwUg5ldmFsdWF0aW9uUmVzcA==');

@$core.Deprecated('Use evaluationRespDescriptor instead')
const EvaluationResp$json = {
  '1': 'EvaluationResp',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'channelCategoryTypes', '3': 2, '4': 3, '5': 11, '6': '.evaluation.ChannelCategoryType', '10': 'channelCategoryTypes'},
    {'1': 'channelEvaluationResps', '3': 3, '4': 3, '5': 11, '6': '.evaluation.ChannelEvaluationResp', '10': 'channelEvaluationResps'},
    {'1': 'payEvaluationResp', '3': 4, '4': 1, '5': 11, '6': '.evaluation.PayEvaluationResp', '10': 'payEvaluationResp'},
    {'1': 'taskEvaluationResp', '3': 5, '4': 1, '5': 11, '6': '.evaluation.TaskEvaluationResp', '10': 'taskEvaluationResp'},
    {'1': 'constraintsEvaluationResp', '3': 6, '4': 1, '5': 11, '6': '.evaluation.ConstraintsEvaluationResp', '10': 'constraintsEvaluationResp'},
    {'1': 'labelEvaluationResp', '3': 7, '4': 1, '5': 11, '6': '.evaluation.LabelEvaluationResp', '10': 'labelEvaluationResp'},
  ],
};

/// Descriptor for `EvaluationResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationRespDescriptor = $convert.base64Decode(
    'Cg5FdmFsdWF0aW9uUmVzcBIOCgJpZBgBIAEoCVICaWQSUwoUY2hhbm5lbENhdGVnb3J5VHlwZX'
    'MYAiADKAsyHy5ldmFsdWF0aW9uLkNoYW5uZWxDYXRlZ29yeVR5cGVSFGNoYW5uZWxDYXRlZ29y'
    'eVR5cGVzElkKFmNoYW5uZWxFdmFsdWF0aW9uUmVzcHMYAyADKAsyIS5ldmFsdWF0aW9uLkNoYW'
    '5uZWxFdmFsdWF0aW9uUmVzcFIWY2hhbm5lbEV2YWx1YXRpb25SZXNwcxJLChFwYXlFdmFsdWF0'
    'aW9uUmVzcBgEIAEoCzIdLmV2YWx1YXRpb24uUGF5RXZhbHVhdGlvblJlc3BSEXBheUV2YWx1YX'
    'Rpb25SZXNwEk4KEnRhc2tFdmFsdWF0aW9uUmVzcBgFIAEoCzIeLmV2YWx1YXRpb24uVGFza0V2'
    'YWx1YXRpb25SZXNwUhJ0YXNrRXZhbHVhdGlvblJlc3ASYwoZY29uc3RyYWludHNFdmFsdWF0aW'
    '9uUmVzcBgGIAEoCzIlLmV2YWx1YXRpb24uQ29uc3RyYWludHNFdmFsdWF0aW9uUmVzcFIZY29u'
    'c3RyYWludHNFdmFsdWF0aW9uUmVzcBJRChNsYWJlbEV2YWx1YXRpb25SZXNwGAcgASgLMh8uZX'
    'ZhbHVhdGlvbi5MYWJlbEV2YWx1YXRpb25SZXNwUhNsYWJlbEV2YWx1YXRpb25SZXNw');

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
    {'1': 'matches', '3': 2, '4': 3, '5': 11, '6': '.evaluation.ChannelEvaluationResp.Channel', '10': 'matches'},
    {'1': 'misMatches', '3': 3, '4': 3, '5': 11, '6': '.evaluation.ChannelEvaluationResp.Channel', '10': 'misMatches'},
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
    'hhbm5lbENhdGVnb3J5VHlwZRJDCgdtYXRjaGVzGAIgAygLMikuZXZhbHVhdGlvbi5DaGFubmVs'
    'RXZhbHVhdGlvblJlc3AuQ2hhbm5lbFIHbWF0Y2hlcxJJCgptaXNNYXRjaGVzGAMgAygLMikuZX'
    'ZhbHVhdGlvbi5DaGFubmVsRXZhbHVhdGlvblJlc3AuQ2hhbm5lbFIKbWlzTWF0Y2hlcxqvAgoH'
    'Q2hhbm5lbBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVpbWFnZRgDIA'
    'EoCVIFaW1hZ2USGAoHbGlua1VSTBgEIAEoCVIHbGlua1VSTBIiCgxkZXNjcmlwdGlvbnMYBSAD'
    'KAlSDGRlc2NyaXB0aW9ucxIwChNjaGFubmVsQ2F0ZWdvcnlUeXBlGAYgASgFUhNjaGFubmVsQ2'
    'F0ZWdvcnlUeXBlEh4KCmNyZWF0ZURhdGUYByABKANSCmNyZWF0ZURhdGUSHgoKdXBkYXRlRGF0'
    'ZRgIIAEoA1IKdXBkYXRlRGF0ZRIUCgVvcmRlchgJIAEoBVIFb3JkZXISJAoNY2hhbm5lbFN0YX'
    'R1cxgKIAEoBVINY2hhbm5lbFN0YXR1cw==');

@$core.Deprecated('Use payEvaluationRespDescriptor instead')
const PayEvaluationResp$json = {
  '1': 'PayEvaluationResp',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.evaluation.PayEvaluationResp.Pay', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.evaluation.PayEvaluationResp.Pay', '10': 'misMatches'},
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
    'ChFQYXlFdmFsdWF0aW9uUmVzcBI7CgdtYXRjaGVzGAEgAygLMiEuZXZhbHVhdGlvbi5QYXlFdm'
    'FsdWF0aW9uUmVzcC5QYXlSB21hdGNoZXMSQQoKbWlzTWF0Y2hlcxgCIAMoCzIhLmV2YWx1YXRp'
    'b24uUGF5RXZhbHVhdGlvblJlc3AuUGF5UgptaXNNYXRjaGVzGvEBCgNQYXkSDgoCaWQYASABKA'
    'lSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFaW1hZ2UYAyABKAlSBWltYWdlEiIKDGRlc2Ny'
    'aXB0aW9ucxgEIAMoCVIMZGVzY3JpcHRpb25zEhgKB2xpbmtVUkwYBSABKAlSB2xpbmtVUkwSHg'
    'oKY3JlYXRlRGF0ZRgGIAEoA1IKY3JlYXRlRGF0ZRIeCgp1cGRhdGVEYXRlGAcgASgDUgp1cGRh'
    'dGVEYXRlEhQKBW9yZGVyGAggASgFUgVvcmRlchIcCglwYXlTdGF0dXMYCSABKAVSCXBheVN0YX'
    'R1cw==');

@$core.Deprecated('Use taskEvaluationRespDescriptor instead')
const TaskEvaluationResp$json = {
  '1': 'TaskEvaluationResp',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.evaluation.TaskEvaluationResp.Task', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.evaluation.TaskEvaluationResp.Task', '10': 'misMatches'},
  ],
  '3': [TaskEvaluationResp_Task$json],
};

@$core.Deprecated('Use taskEvaluationRespDescriptor instead')
const TaskEvaluationResp_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'descriptions', '3': 3, '4': 3, '5': 11, '6': '.evaluation.TaskEvaluationResp.Task.TaskDescription', '10': 'descriptions'},
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
    'ChJUYXNrRXZhbHVhdGlvblJlc3ASPQoHbWF0Y2hlcxgBIAMoCzIjLmV2YWx1YXRpb24uVGFza0'
    'V2YWx1YXRpb25SZXNwLlRhc2tSB21hdGNoZXMSQwoKbWlzTWF0Y2hlcxgCIAMoCzIjLmV2YWx1'
    'YXRpb24uVGFza0V2YWx1YXRpb25SZXNwLlRhc2tSCm1pc01hdGNoZXMa1AIKBFRhc2sSDgoCaW'
    'QYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSVwoMZGVzY3JpcHRpb25zGAMgAygLMjMu'
    'ZXZhbHVhdGlvbi5UYXNrRXZhbHVhdGlvblJlc3AuVGFzay5UYXNrRGVzY3JpcHRpb25SDGRlc2'
    'NyaXB0aW9ucxIcCgl0YXNrT3duZXIYBCABKAVSCXRhc2tPd25lchIgCgt0YXNrT3duZXJJRBgF'
    'IAEoCVILdGFza093bmVySUQSHgoKY3JlYXRlRGF0ZRgGIAEoA1IKY3JlYXRlRGF0ZRIeCgp1cG'
    'RhdGVEYXRlGAcgASgDUgp1cGRhdGVEYXRlGk8KD1Rhc2tEZXNjcmlwdGlvbhISCgRuYW1lGAEg'
    'ASgJUgRuYW1lEhIKBGRlc2MYAiADKAlSBGRlc2MSFAoFb3JkZXIYAyABKAVSBW9yZGVy');

@$core.Deprecated('Use constraintsEvaluationRespDescriptor instead')
const ConstraintsEvaluationResp$json = {
  '1': 'ConstraintsEvaluationResp',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.evaluation.ConstraintsEvaluationResp.Constraint', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.evaluation.ConstraintsEvaluationResp.Constraint', '10': 'misMatches'},
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
    'ChlDb25zdHJhaW50c0V2YWx1YXRpb25SZXNwEkoKB21hdGNoZXMYASADKAsyMC5ldmFsdWF0aW'
    '9uLkNvbnN0cmFpbnRzRXZhbHVhdGlvblJlc3AuQ29uc3RyYWludFIHbWF0Y2hlcxJQCgptaXNN'
    'YXRjaGVzGAIgAygLMjAuZXZhbHVhdGlvbi5Db25zdHJhaW50c0V2YWx1YXRpb25SZXNwLkNvbn'
    'N0cmFpbnRSCm1pc01hdGNoZXMaeAoKQ29uc3RyYWludBImCg5jb25zdHJhaW50VHlwZRgBIAEo'
    'BVIOY29uc3RyYWludFR5cGUSJgoOY29uc3RyYWludE5hbWUYAiABKAlSDmNvbnN0cmFpbnROYW'
    '1lEhoKCHdlZWtEYXlzGAMgAygFUgh3ZWVrRGF5cw==');

@$core.Deprecated('Use labelEvaluationRespDescriptor instead')
const LabelEvaluationResp$json = {
  '1': 'LabelEvaluationResp',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.evaluation.LabelEvaluationResp.Label', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.evaluation.LabelEvaluationResp.Label', '10': 'misMatches'},
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
    'ChNMYWJlbEV2YWx1YXRpb25SZXNwEj8KB21hdGNoZXMYASADKAsyJS5ldmFsdWF0aW9uLkxhYm'
    'VsRXZhbHVhdGlvblJlc3AuTGFiZWxSB21hdGNoZXMSRQoKbWlzTWF0Y2hlcxgCIAMoCzIlLmV2'
    'YWx1YXRpb24uTGFiZWxFdmFsdWF0aW9uUmVzcC5MYWJlbFIKbWlzTWF0Y2hlcxpDCgVMYWJlbB'
    'IcCglsYWJlbFR5cGUYASABKAVSCWxhYmVsVHlwZRIcCglsYWJlbE5hbWUYAiABKAlSCWxhYmVs'
    'TmFtZQ==');

