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

@$core.Deprecated('Use evaluationsReplyDescriptor instead')
const EvaluationsReply$json = {
  '1': 'EvaluationsReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.evaluation.Reply', '10': 'reply'},
    {'1': 'evaluation', '3': 2, '4': 3, '5': 11, '6': '.evaluation.EvaluationProto', '10': 'evaluation'},
  ],
};

/// Descriptor for `EvaluationsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationsReplyDescriptor = $convert.base64Decode(
    'ChBFdmFsdWF0aW9uc1JlcGx5EicKBXJlcGx5GAEgASgLMhEuZXZhbHVhdGlvbi5SZXBseVIFcm'
    'VwbHkSOwoKZXZhbHVhdGlvbhgCIAMoCzIbLmV2YWx1YXRpb24uRXZhbHVhdGlvblByb3RvUgpl'
    'dmFsdWF0aW9u');

@$core.Deprecated('Use evaluationReplyDescriptor instead')
const EvaluationReply$json = {
  '1': 'EvaluationReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.evaluation.Reply', '10': 'reply'},
    {'1': 'evaluation', '3': 2, '4': 1, '5': 11, '6': '.evaluation.EvaluationProto', '10': 'evaluation'},
  ],
};

/// Descriptor for `EvaluationReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationReplyDescriptor = $convert.base64Decode(
    'Cg9FdmFsdWF0aW9uUmVwbHkSJwoFcmVwbHkYASABKAsyES5ldmFsdWF0aW9uLlJlcGx5UgVyZX'
    'BseRI7CgpldmFsdWF0aW9uGAIgASgLMhsuZXZhbHVhdGlvbi5FdmFsdWF0aW9uUHJvdG9SCmV2'
    'YWx1YXRpb24=');

@$core.Deprecated('Use evaluationProtoDescriptor instead')
const EvaluationProto$json = {
  '1': 'EvaluationProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'createDate', '3': 2, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 3, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'startDate', '3': 4, '4': 1, '5': 3, '10': 'startDate'},
    {'1': 'endDate', '3': 5, '4': 1, '5': 3, '10': 'endDate'},
    {'1': 'currency', '3': 6, '4': 1, '5': 5, '10': 'currency'},
    {'1': 'rewardType', '3': 7, '4': 1, '5': 5, '10': 'rewardType'},
    {'1': 'ownerID', '3': 8, '4': 1, '5': 9, '10': 'ownerID'},
    {'1': 'payload', '3': 9, '4': 1, '5': 11, '6': '.evaluation.PayloadProto', '10': 'payload'},
  ],
};

/// Descriptor for `EvaluationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationProtoDescriptor = $convert.base64Decode(
    'Cg9FdmFsdWF0aW9uUHJvdG8SDgoCaWQYASABKAlSAmlkEh4KCmNyZWF0ZURhdGUYAiABKANSCm'
    'NyZWF0ZURhdGUSHgoKdXBkYXRlRGF0ZRgDIAEoA1IKdXBkYXRlRGF0ZRIcCglzdGFydERhdGUY'
    'BCABKANSCXN0YXJ0RGF0ZRIYCgdlbmREYXRlGAUgASgDUgdlbmREYXRlEhoKCGN1cnJlbmN5GA'
    'YgASgFUghjdXJyZW5jeRIeCgpyZXdhcmRUeXBlGAcgASgFUgpyZXdhcmRUeXBlEhgKB293bmVy'
    'SUQYCCABKAlSB293bmVySUQSMgoHcGF5bG9hZBgJIAEoCzIYLmV2YWx1YXRpb24uUGF5bG9hZF'
    'Byb3RvUgdwYXlsb2Fk');

@$core.Deprecated('Use payloadProtoDescriptor instead')
const PayloadProto$json = {
  '1': 'PayloadProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'payloadOperator', '3': 2, '4': 1, '5': 5, '10': 'payloadOperator'},
    {'1': 'payloadType', '3': 3, '4': 1, '5': 5, '10': 'payloadType'},
    {'1': 'feedback', '3': 4, '4': 1, '5': 11, '6': '.evaluation.FeedbackProto', '10': 'feedback'},
    {'1': 'payloads', '3': 5, '4': 3, '5': 11, '6': '.evaluation.PayloadProto', '10': 'payloads'},
    {'1': 'container', '3': 6, '4': 1, '5': 11, '6': '.evaluation.ContainerProto', '10': 'container'},
  ],
};

/// Descriptor for `PayloadProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payloadProtoDescriptor = $convert.base64Decode(
    'CgxQYXlsb2FkUHJvdG8SDgoCaWQYASABKAlSAmlkEigKD3BheWxvYWRPcGVyYXRvchgCIAEoBV'
    'IPcGF5bG9hZE9wZXJhdG9yEiAKC3BheWxvYWRUeXBlGAMgASgFUgtwYXlsb2FkVHlwZRI1Cghm'
    'ZWVkYmFjaxgEIAEoCzIZLmV2YWx1YXRpb24uRmVlZGJhY2tQcm90b1IIZmVlZGJhY2sSNAoIcG'
    'F5bG9hZHMYBSADKAsyGC5ldmFsdWF0aW9uLlBheWxvYWRQcm90b1IIcGF5bG9hZHMSOAoJY29u'
    'dGFpbmVyGAYgASgLMhouZXZhbHVhdGlvbi5Db250YWluZXJQcm90b1IJY29udGFpbmVy');

@$core.Deprecated('Use feedbackProtoDescriptor instead')
const FeedbackProto$json = {
  '1': 'FeedbackProto',
  '2': [
    {'1': 'feedbackType', '3': 1, '4': 1, '5': 5, '10': 'feedbackType'},
    {'1': 'calculateType', '3': 2, '4': 1, '5': 5, '10': 'calculateType'},
    {'1': 'minCost', '3': 3, '4': 1, '5': 5, '10': 'minCost'},
    {'1': 'fixed', '3': 4, '4': 1, '5': 5, '10': 'fixed'},
    {'1': 'percentage', '3': 5, '4': 1, '5': 2, '10': 'percentage'},
    {'1': 'returnMax', '3': 6, '4': 1, '5': 2, '10': 'returnMax'},
  ],
};

/// Descriptor for `FeedbackProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedbackProtoDescriptor = $convert.base64Decode(
    'Cg1GZWVkYmFja1Byb3RvEiIKDGZlZWRiYWNrVHlwZRgBIAEoBVIMZmVlZGJhY2tUeXBlEiQKDW'
    'NhbGN1bGF0ZVR5cGUYAiABKAVSDWNhbGN1bGF0ZVR5cGUSGAoHbWluQ29zdBgDIAEoBVIHbWlu'
    'Q29zdBIUCgVmaXhlZBgEIAEoBVIFZml4ZWQSHgoKcGVyY2VudGFnZRgFIAEoAlIKcGVyY2VudG'
    'FnZRIcCglyZXR1cm5NYXgYBiABKAJSCXJldHVybk1heA==');

@$core.Deprecated('Use containerProtoDescriptor instead')
const ContainerProto$json = {
  '1': 'ContainerProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'containerOperator', '3': 2, '4': 1, '5': 5, '10': 'containerOperator'},
    {'1': 'containerType', '3': 3, '4': 1, '5': 5, '10': 'containerType'},
    {'1': 'constraint', '3': 4, '4': 1, '5': 11, '6': '.evaluation.ConstraintProto', '10': 'constraint'},
    {'1': 'containers', '3': 5, '4': 3, '5': 11, '6': '.evaluation.ContainerProto', '10': 'containers'},
    {'1': 'taskIDs', '3': 6, '4': 3, '5': 9, '10': 'taskIDs'},
    {'1': 'channelIDs', '3': 7, '4': 3, '5': 9, '10': 'channelIDs'},
    {'1': 'payIDs', '3': 8, '4': 3, '5': 9, '10': 'payIDs'},
    {'1': 'labels', '3': 9, '4': 3, '5': 5, '10': 'labels'},
  ],
};

/// Descriptor for `ContainerProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerProtoDescriptor = $convert.base64Decode(
    'Cg5Db250YWluZXJQcm90bxIOCgJpZBgBIAEoCVICaWQSLAoRY29udGFpbmVyT3BlcmF0b3IYAi'
    'ABKAVSEWNvbnRhaW5lck9wZXJhdG9yEiQKDWNvbnRhaW5lclR5cGUYAyABKAVSDWNvbnRhaW5l'
    'clR5cGUSOwoKY29uc3RyYWludBgEIAEoCzIbLmV2YWx1YXRpb24uQ29uc3RyYWludFByb3RvUg'
    'pjb25zdHJhaW50EjoKCmNvbnRhaW5lcnMYBSADKAsyGi5ldmFsdWF0aW9uLkNvbnRhaW5lclBy'
    'b3RvUgpjb250YWluZXJzEhgKB3Rhc2tJRHMYBiADKAlSB3Rhc2tJRHMSHgoKY2hhbm5lbElEcx'
    'gHIAMoCVIKY2hhbm5lbElEcxIWCgZwYXlJRHMYCCADKAlSBnBheUlEcxIWCgZsYWJlbHMYCSAD'
    'KAVSBmxhYmVscw==');

@$core.Deprecated('Use constraintProtoDescriptor instead')
const ConstraintProto$json = {
  '1': 'ConstraintProto',
  '2': [
    {'1': 'constraintType', '3': 1, '4': 1, '5': 5, '10': 'constraintType'},
    {'1': 'weekDays', '3': 2, '4': 3, '5': 5, '10': 'weekDays'},
  ],
};

/// Descriptor for `ConstraintProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constraintProtoDescriptor = $convert.base64Decode(
    'Cg9Db25zdHJhaW50UHJvdG8SJgoOY29uc3RyYWludFR5cGUYASABKAVSDmNvbnN0cmFpbnRUeX'
    'BlEhoKCHdlZWtEYXlzGAIgAygFUgh3ZWVrRGF5cw==');

@$core.Deprecated('Use evaluationIDProtoDescriptor instead')
const EvaluationIDProto$json = {
  '1': 'EvaluationIDProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `EvaluationIDProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationIDProtoDescriptor = $convert.base64Decode(
    'ChFFdmFsdWF0aW9uSURQcm90bxIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode(
    'CgxFbXB0eVJlcXVlc3Q=');

@$core.Deprecated('Use evaluationRespReplyDescriptor instead')
const EvaluationRespReply$json = {
  '1': 'EvaluationRespReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.evaluation.Reply', '10': 'reply'},
    {'1': 'evaluationResp', '3': 2, '4': 1, '5': 11, '6': '.evaluation.EvaluationRespProto', '10': 'evaluationResp'},
  ],
};

/// Descriptor for `EvaluationRespReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationRespReplyDescriptor = $convert.base64Decode(
    'ChNFdmFsdWF0aW9uUmVzcFJlcGx5EicKBXJlcGx5GAEgASgLMhEuZXZhbHVhdGlvbi5SZXBseV'
    'IFcmVwbHkSRwoOZXZhbHVhdGlvblJlc3AYAiABKAsyHy5ldmFsdWF0aW9uLkV2YWx1YXRpb25S'
    'ZXNwUHJvdG9SDmV2YWx1YXRpb25SZXNw');

@$core.Deprecated('Use evaluationRespProtoDescriptor instead')
const EvaluationRespProto$json = {
  '1': 'EvaluationRespProto',
  '2': [
    {'1': 'channelCategoryTypes', '3': 1, '4': 3, '5': 11, '6': '.evaluation.ChannelCategoryTypeProto', '10': 'channelCategoryTypes'},
    {'1': 'channelEvaluationResps', '3': 2, '4': 3, '5': 11, '6': '.evaluation.ChannelEvaluationRespProto', '10': 'channelEvaluationResps'},
    {'1': 'payEvaluationResp', '3': 3, '4': 1, '5': 11, '6': '.evaluation.PayEvaluationRespProto', '10': 'payEvaluationResp'},
    {'1': 'taskEvaluationResp', '3': 4, '4': 1, '5': 11, '6': '.evaluation.TaskEvaluationRespProto', '10': 'taskEvaluationResp'},
    {'1': 'constraintsEvaluationResp', '3': 5, '4': 1, '5': 11, '6': '.evaluation.ConstraintsEvaluationRespProto', '10': 'constraintsEvaluationResp'},
    {'1': 'labelEvaluationResp', '3': 6, '4': 1, '5': 11, '6': '.evaluation.LabelEvaluationRespProto', '10': 'labelEvaluationResp'},
  ],
};

/// Descriptor for `EvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluationRespProtoDescriptor = $convert.base64Decode(
    'ChNFdmFsdWF0aW9uUmVzcFByb3RvElgKFGNoYW5uZWxDYXRlZ29yeVR5cGVzGAEgAygLMiQuZX'
    'ZhbHVhdGlvbi5DaGFubmVsQ2F0ZWdvcnlUeXBlUHJvdG9SFGNoYW5uZWxDYXRlZ29yeVR5cGVz'
    'El4KFmNoYW5uZWxFdmFsdWF0aW9uUmVzcHMYAiADKAsyJi5ldmFsdWF0aW9uLkNoYW5uZWxFdm'
    'FsdWF0aW9uUmVzcFByb3RvUhZjaGFubmVsRXZhbHVhdGlvblJlc3BzElAKEXBheUV2YWx1YXRp'
    'b25SZXNwGAMgASgLMiIuZXZhbHVhdGlvbi5QYXlFdmFsdWF0aW9uUmVzcFByb3RvUhFwYXlFdm'
    'FsdWF0aW9uUmVzcBJTChJ0YXNrRXZhbHVhdGlvblJlc3AYBCABKAsyIy5ldmFsdWF0aW9uLlRh'
    'c2tFdmFsdWF0aW9uUmVzcFByb3RvUhJ0YXNrRXZhbHVhdGlvblJlc3ASaAoZY29uc3RyYWludH'
    'NFdmFsdWF0aW9uUmVzcBgFIAEoCzIqLmV2YWx1YXRpb24uQ29uc3RyYWludHNFdmFsdWF0aW9u'
    'UmVzcFByb3RvUhljb25zdHJhaW50c0V2YWx1YXRpb25SZXNwElYKE2xhYmVsRXZhbHVhdGlvbl'
    'Jlc3AYBiABKAsyJC5ldmFsdWF0aW9uLkxhYmVsRXZhbHVhdGlvblJlc3BQcm90b1ITbGFiZWxF'
    'dmFsdWF0aW9uUmVzcA==');

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
    {'1': 'matches', '3': 2, '4': 3, '5': 11, '6': '.evaluation.ChannelProto', '10': 'matches'},
    {'1': 'misMatches', '3': 3, '4': 3, '5': 11, '6': '.evaluation.ChannelProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `ChannelEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelEvaluationRespProtoDescriptor = $convert.base64Decode(
    'ChpDaGFubmVsRXZhbHVhdGlvblJlc3BQcm90bxIwChNjaGFubmVsQ2F0ZWdvcnlUeXBlGAEgAS'
    'gFUhNjaGFubmVsQ2F0ZWdvcnlUeXBlEjIKB21hdGNoZXMYAiADKAsyGC5ldmFsdWF0aW9uLkNo'
    'YW5uZWxQcm90b1IHbWF0Y2hlcxI4CgptaXNNYXRjaGVzGAMgAygLMhguZXZhbHVhdGlvbi5DaG'
    'FubmVsUHJvdG9SCm1pc01hdGNoZXM=');

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
    {'1': 'channelLabels', '3': 9, '4': 3, '5': 11, '6': '.evaluation.ChannelLabelProto', '10': 'channelLabels'},
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
    'ZGF0ZURhdGUYCCABKANSCnVwZGF0ZURhdGUSQwoNY2hhbm5lbExhYmVscxgJIAMoCzIdLmV2YW'
    'x1YXRpb24uQ2hhbm5lbExhYmVsUHJvdG9SDWNoYW5uZWxMYWJlbHMSFAoFb3JkZXIYCiABKAVS'
    'BW9yZGVyEiQKDWNoYW5uZWxTdGF0dXMYCyABKAVSDWNoYW5uZWxTdGF0dXM=');

@$core.Deprecated('Use channelLabelProtoDescriptor instead')
const ChannelLabelProto$json = {
  '1': 'ChannelLabelProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'order', '3': 3, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `ChannelLabelProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelLabelProtoDescriptor = $convert.base64Decode(
    'ChFDaGFubmVsTGFiZWxQcm90bxIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'IUCgVvcmRlchgDIAEoBVIFb3JkZXI=');

@$core.Deprecated('Use payEvaluationRespProtoDescriptor instead')
const PayEvaluationRespProto$json = {
  '1': 'PayEvaluationRespProto',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.evaluation.PayProto', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.evaluation.PayProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `PayEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payEvaluationRespProtoDescriptor = $convert.base64Decode(
    'ChZQYXlFdmFsdWF0aW9uUmVzcFByb3RvEi4KB21hdGNoZXMYASADKAsyFC5ldmFsdWF0aW9uLl'
    'BheVByb3RvUgdtYXRjaGVzEjQKCm1pc01hdGNoZXMYAiADKAsyFC5ldmFsdWF0aW9uLlBheVBy'
    'b3RvUgptaXNNYXRjaGVz');

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
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.evaluation.TaskProto', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.evaluation.TaskProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `TaskEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskEvaluationRespProtoDescriptor = $convert.base64Decode(
    'ChdUYXNrRXZhbHVhdGlvblJlc3BQcm90bxIvCgdtYXRjaGVzGAEgAygLMhUuZXZhbHVhdGlvbi'
    '5UYXNrUHJvdG9SB21hdGNoZXMSNQoKbWlzTWF0Y2hlcxgCIAMoCzIVLmV2YWx1YXRpb24uVGFz'
    'a1Byb3RvUgptaXNNYXRjaGVz');

@$core.Deprecated('Use taskProtoDescriptor instead')
const TaskProto$json = {
  '1': 'TaskProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'descriptions', '3': 3, '4': 3, '5': 11, '6': '.evaluation.TaskDescriptionProto', '10': 'descriptions'},
    {'1': 'taskOwner', '3': 4, '4': 1, '5': 5, '10': 'taskOwner'},
    {'1': 'taskOwnerID', '3': 5, '4': 1, '5': 9, '10': 'taskOwnerID'},
    {'1': 'createDate', '3': 6, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 7, '4': 1, '5': 3, '10': 'updateDate'},
  ],
};

/// Descriptor for `TaskProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskProtoDescriptor = $convert.base64Decode(
    'CglUYXNrUHJvdG8SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSRAoMZGVzY3'
    'JpcHRpb25zGAMgAygLMiAuZXZhbHVhdGlvbi5UYXNrRGVzY3JpcHRpb25Qcm90b1IMZGVzY3Jp'
    'cHRpb25zEhwKCXRhc2tPd25lchgEIAEoBVIJdGFza093bmVyEiAKC3Rhc2tPd25lcklEGAUgAS'
    'gJUgt0YXNrT3duZXJJRBIeCgpjcmVhdGVEYXRlGAYgASgDUgpjcmVhdGVEYXRlEh4KCnVwZGF0'
    'ZURhdGUYByABKANSCnVwZGF0ZURhdGU=');

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
    {'1': 'constraintEvaluationResps', '3': 1, '4': 3, '5': 11, '6': '.evaluation.ConstraintEvaluationRespProto', '10': 'constraintEvaluationResps'},
  ],
};

/// Descriptor for `ConstraintsEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constraintsEvaluationRespProtoDescriptor = $convert.base64Decode(
    'Ch5Db25zdHJhaW50c0V2YWx1YXRpb25SZXNwUHJvdG8SZwoZY29uc3RyYWludEV2YWx1YXRpb2'
    '5SZXNwcxgBIAMoCzIpLmV2YWx1YXRpb24uQ29uc3RyYWludEV2YWx1YXRpb25SZXNwUHJvdG9S'
    'GWNvbnN0cmFpbnRFdmFsdWF0aW9uUmVzcHM=');

@$core.Deprecated('Use constraintEvaluationRespProtoDescriptor instead')
const ConstraintEvaluationRespProto$json = {
  '1': 'ConstraintEvaluationRespProto',
  '2': [
    {'1': 'constraintType', '3': 1, '4': 1, '5': 5, '10': 'constraintType'},
    {'1': 'contraint', '3': 2, '4': 1, '5': 11, '6': '.evaluation.ConstraintProto', '10': 'contraint'},
  ],
};

/// Descriptor for `ConstraintEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constraintEvaluationRespProtoDescriptor = $convert.base64Decode(
    'Ch1Db25zdHJhaW50RXZhbHVhdGlvblJlc3BQcm90bxImCg5jb25zdHJhaW50VHlwZRgBIAEoBV'
    'IOY29uc3RyYWludFR5cGUSOQoJY29udHJhaW50GAIgASgLMhsuZXZhbHVhdGlvbi5Db25zdHJh'
    'aW50UHJvdG9SCWNvbnRyYWludA==');

@$core.Deprecated('Use labelEvaluationRespProtoDescriptor instead')
const LabelEvaluationRespProto$json = {
  '1': 'LabelEvaluationRespProto',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.evaluation.LabelProto', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.evaluation.LabelProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `LabelEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelEvaluationRespProtoDescriptor = $convert.base64Decode(
    'ChhMYWJlbEV2YWx1YXRpb25SZXNwUHJvdG8SMAoHbWF0Y2hlcxgBIAMoCzIWLmV2YWx1YXRpb2'
    '4uTGFiZWxQcm90b1IHbWF0Y2hlcxI2CgptaXNNYXRjaGVzGAIgAygLMhYuZXZhbHVhdGlvbi5M'
    'YWJlbFByb3RvUgptaXNNYXRjaGVz');

@$core.Deprecated('Use labelProtoDescriptor instead')
const LabelProto$json = {
  '1': 'LabelProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `LabelProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelProtoDescriptor = $convert.base64Decode(
    'CgpMYWJlbFByb3RvEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');

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

