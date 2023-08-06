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
    {'1': 'cardRewardTypeEvaluationResp', '3': 10, '4': 1, '5': 11, '6': '.card.CardRewardTypeEvaluationRespProto', '10': 'cardRewardTypeEvaluationResp'},
    {'1': 'cardRewardTypeEvaluation', '3': 11, '4': 1, '5': 11, '6': '.card.CardRewardTypeEvaluationProto', '10': 'cardRewardTypeEvaluation'},
    {'1': 'order', '3': 12, '4': 1, '5': 5, '10': 'order'},
  ],
};

/// Descriptor for `CardRewardProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardProtoDescriptor = $convert.base64Decode(
    'Cg9DYXJkUmV3YXJkUHJvdG8SDgoCaWQYASABKAlSAmlkEhYKBmNhcmRJRBgCIAEoCVIGY2FyZE'
    'lEEhIKBG5hbWUYAyABKAlSBG5hbWUSWAoWY2FyZFJld2FyZERlc2NyaXB0aW9ucxgEIAMoCzIg'
    'LmNhcmQuQ2FyZFJld2FyZERlc2NyaXB0aW9uUHJvdG9SFmNhcmRSZXdhcmREZXNjcmlwdGlvbn'
    'MSHgoKY3JlYXRlRGF0ZRgFIAEoA1IKY3JlYXRlRGF0ZRIeCgp1cGRhdGVEYXRlGAYgASgDUgp1'
    'cGRhdGVEYXRlEhwKCXN0YXJ0RGF0ZRgHIAEoA1IJc3RhcnREYXRlEhgKB2VuZERhdGUYCCABKA'
    'NSB2VuZERhdGUSJgoOY2FyZFJld2FyZFR5cGUYCSABKAVSDmNhcmRSZXdhcmRUeXBlEmsKHGNh'
    'cmRSZXdhcmRUeXBlRXZhbHVhdGlvblJlc3AYCiABKAsyJy5jYXJkLkNhcmRSZXdhcmRUeXBlRX'
    'ZhbHVhdGlvblJlc3BQcm90b1IcY2FyZFJld2FyZFR5cGVFdmFsdWF0aW9uUmVzcBJfChhjYXJk'
    'UmV3YXJkVHlwZUV2YWx1YXRpb24YCyABKAsyIy5jYXJkLkNhcmRSZXdhcmRUeXBlRXZhbHVhdG'
    'lvblByb3RvUhhjYXJkUmV3YXJkVHlwZUV2YWx1YXRpb24SFAoFb3JkZXIYDCABKAVSBW9yZGVy');

@$core.Deprecated('Use cardRewardTypeEvaluationRespProtoDescriptor instead')
const CardRewardTypeEvaluationRespProto$json = {
  '1': 'CardRewardTypeEvaluationRespProto',
  '2': [
    {'1': 'reward', '3': 1, '4': 1, '5': 11, '6': '.card.RewardProto', '10': 'reward'},
    {'1': 'currency', '3': 2, '4': 1, '5': 11, '6': '.card.CurrencyProto', '10': 'currency'},
    {'1': 'point', '3': 3, '4': 1, '5': 11, '6': '.card.PointProto', '10': 'point'},
  ],
};

/// Descriptor for `CardRewardTypeEvaluationRespProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardTypeEvaluationRespProtoDescriptor = $convert.base64Decode(
    'CiFDYXJkUmV3YXJkVHlwZUV2YWx1YXRpb25SZXNwUHJvdG8SKQoGcmV3YXJkGAEgASgLMhEuY2'
    'FyZC5SZXdhcmRQcm90b1IGcmV3YXJkEi8KCGN1cnJlbmN5GAIgASgLMhMuY2FyZC5DdXJyZW5j'
    'eVByb3RvUghjdXJyZW5jeRImCgVwb2ludBgDIAEoCzIQLmNhcmQuUG9pbnRQcm90b1IFcG9pbn'
    'Q=');

@$core.Deprecated('Use rewardProtoDescriptor instead')
const RewardProto$json = {
  '1': 'RewardProto',
  '2': [
    {'1': 'rewardType', '3': 1, '4': 1, '5': 5, '10': 'rewardType'},
    {'1': 'rewardName', '3': 2, '4': 1, '5': 9, '10': 'rewardName'},
  ],
};

/// Descriptor for `RewardProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rewardProtoDescriptor = $convert.base64Decode(
    'CgtSZXdhcmRQcm90bxIeCgpyZXdhcmRUeXBlGAEgASgFUgpyZXdhcmRUeXBlEh4KCnJld2FyZE'
    '5hbWUYAiABKAlSCnJld2FyZE5hbWU=');

@$core.Deprecated('Use currencyProtoDescriptor instead')
const CurrencyProto$json = {
  '1': 'CurrencyProto',
  '2': [
    {'1': 'currencyType', '3': 1, '4': 1, '5': 5, '10': 'currencyType'},
    {'1': 'currencyName', '3': 2, '4': 1, '5': 9, '10': 'currencyName'},
  ],
};

/// Descriptor for `CurrencyProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List currencyProtoDescriptor = $convert.base64Decode(
    'Cg1DdXJyZW5jeVByb3RvEiIKDGN1cnJlbmN5VHlwZRgBIAEoBVIMY3VycmVuY3lUeXBlEiIKDG'
    'N1cnJlbmN5TmFtZRgCIAEoCVIMY3VycmVuY3lOYW1l');

@$core.Deprecated('Use pointProtoDescriptor instead')
const PointProto$json = {
  '1': 'PointProto',
  '2': [
    {'1': 'pointType', '3': 1, '4': 1, '5': 5, '10': 'pointType'},
    {'1': 'pointName', '3': 2, '4': 1, '5': 9, '10': 'pointName'},
  ],
};

/// Descriptor for `PointProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointProtoDescriptor = $convert.base64Decode(
    'CgpQb2ludFByb3RvEhwKCXBvaW50VHlwZRgBIAEoBVIJcG9pbnRUeXBlEhwKCXBvaW50TmFtZR'
    'gCIAEoCVIJcG9pbnROYW1l');

@$core.Deprecated('Use cardRewardTypeEvaluationProtoDescriptor instead')
const CardRewardTypeEvaluationProto$json = {
  '1': 'CardRewardTypeEvaluationProto',
  '2': [
    {'1': 'rewardType', '3': 1, '4': 1, '5': 5, '10': 'rewardType'},
    {'1': 'currencyType', '3': 2, '4': 1, '5': 5, '10': 'currencyType'},
    {'1': 'pointType', '3': 3, '4': 1, '5': 5, '10': 'pointType'},
  ],
};

/// Descriptor for `CardRewardTypeEvaluationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardTypeEvaluationProtoDescriptor = $convert.base64Decode(
    'Ch1DYXJkUmV3YXJkVHlwZUV2YWx1YXRpb25Qcm90bxIeCgpyZXdhcmRUeXBlGAEgASgFUgpyZX'
    'dhcmRUeXBlEiIKDGN1cnJlbmN5VHlwZRgCIAEoBVIMY3VycmVuY3lUeXBlEhwKCXBvaW50VHlw'
    'ZRgDIAEoBVIJcG9pbnRUeXBl');

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
    {'1': 'currencyType', '3': 8, '4': 1, '5': 5, '10': 'currencyType'},
    {'1': 'rewardType', '3': 9, '4': 1, '5': 5, '10': 'rewardType'},
    {'1': 'pointType', '3': 10, '4': 1, '5': 5, '10': 'pointType'},
  ],
};

/// Descriptor for `EventProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventProtoDescriptor = $convert.base64Decode(
    'CgpFdmVudFByb3RvEiIKDGV2YWx1YXRpb25JRBgBIAEoCVIMZXZhbHVhdGlvbklEEhgKB3Rhc2'
    'tJRHMYAiADKAlSB3Rhc2tJRHMSFgoGcGF5SURzGAMgAygJUgZwYXlJRHMSHgoKY2hhbm5lbElE'
    'cxgEIAMoCVIKY2hhbm5lbElEcxIWCgZsYWJlbHMYBSADKAVSBmxhYmVscxIcCglldmVudERhdG'
    'UYBiABKANSCWV2ZW50RGF0ZRISCgRjb3N0GAcgASgFUgRjb3N0EiIKDGN1cnJlbmN5VHlwZRgI'
    'IAEoBVIMY3VycmVuY3lUeXBlEh4KCnJld2FyZFR5cGUYCSABKAVSCnJld2FyZFR5cGUSHAoJcG'
    '9pbnRUeXBlGAogASgFUglwb2ludFR5cGU=');

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
    {'1': 'cardImage', '3': 3, '4': 1, '5': 9, '10': 'cardImage'},
    {'1': 'bankID', '3': 4, '4': 1, '5': 9, '10': 'bankID'},
    {'1': 'bankName', '3': 5, '4': 1, '5': 9, '10': 'bankName'},
    {'1': 'cardRewardStartDate', '3': 6, '4': 1, '5': 3, '10': 'cardRewardStartDate'},
    {'1': 'cardRewardEndDate', '3': 7, '4': 1, '5': 3, '10': 'cardRewardEndDate'},
    {'1': 'cardRewardTypeEvaluationResp', '3': 8, '4': 1, '5': 11, '6': '.card.CardRewardTypeEvaluationRespProto', '10': 'cardRewardTypeEvaluationResp'},
  ],
};

/// Descriptor for `CardRewardEvaluationEventResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardEvaluationEventResultProtoDescriptor = $convert.base64Decode(
    'CiRDYXJkUmV3YXJkRXZhbHVhdGlvbkV2ZW50UmVzdWx0UHJvdG8SFgoGY2FyZElEGAEgASgJUg'
    'ZjYXJkSUQSGgoIY2FyZE5hbWUYAiABKAlSCGNhcmROYW1lEhwKCWNhcmRJbWFnZRgDIAEoCVIJ'
    'Y2FyZEltYWdlEhYKBmJhbmtJRBgEIAEoCVIGYmFua0lEEhoKCGJhbmtOYW1lGAUgASgJUghiYW'
    '5rTmFtZRIwChNjYXJkUmV3YXJkU3RhcnREYXRlGAYgASgDUhNjYXJkUmV3YXJkU3RhcnREYXRl'
    'EiwKEWNhcmRSZXdhcmRFbmREYXRlGAcgASgDUhFjYXJkUmV3YXJkRW5kRGF0ZRJrChxjYXJkUm'
    'V3YXJkVHlwZUV2YWx1YXRpb25SZXNwGAggASgLMicuY2FyZC5DYXJkUmV3YXJkVHlwZUV2YWx1'
    'YXRpb25SZXNwUHJvdG9SHGNhcmRSZXdhcmRUeXBlRXZhbHVhdGlvblJlc3A=');

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
    {'1': 'feedbackType', '3': 1, '4': 1, '5': 5, '10': 'feedbackType'},
    {'1': 'cost', '3': 2, '4': 1, '5': 5, '10': 'cost'},
    {'1': 'getReturn', '3': 3, '4': 1, '5': 1, '10': 'getReturn'},
    {'1': 'getPercentage', '3': 4, '4': 1, '5': 1, '10': 'getPercentage'},
    {'1': 'feedbackEventResultStatus', '3': 5, '4': 1, '5': 5, '10': 'feedbackEventResultStatus'},
  ],
};

/// Descriptor for `FeedbackEventResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedbackEventResultProtoDescriptor = $convert.base64Decode(
    'ChhGZWVkYmFja0V2ZW50UmVzdWx0UHJvdG8SIgoMZmVlZGJhY2tUeXBlGAEgASgFUgxmZWVkYm'
    'Fja1R5cGUSEgoEY29zdBgCIAEoBVIEY29zdBIcCglnZXRSZXR1cm4YAyABKAFSCWdldFJldHVy'
    'bhIkCg1nZXRQZXJjZW50YWdlGAQgASgBUg1nZXRQZXJjZW50YWdlEjwKGWZlZWRiYWNrRXZlbn'
    'RSZXN1bHRTdGF0dXMYBSABKAVSGWZlZWRiYWNrRXZlbnRSZXN1bHRTdGF0dXM=');

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
    {'1': 'feedbackType', '3': 1, '4': 1, '5': 5, '10': 'feedbackType'},
    {'1': 'cost', '3': 2, '4': 1, '5': 5, '10': 'cost'},
    {'1': 'getReturn', '3': 3, '4': 1, '5': 1, '10': 'getReturn'},
    {'1': 'getPercentage', '3': 4, '4': 1, '5': 1, '10': 'getPercentage'},
    {'1': 'feedbackEventStatus', '3': 5, '4': 1, '5': 5, '10': 'feedbackEventStatus'},
  ],
};

/// Descriptor for `FeedbackEventProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedbackEventProtoDescriptor = $convert.base64Decode(
    'ChJGZWVkYmFja0V2ZW50UHJvdG8SIgoMZmVlZGJhY2tUeXBlGAEgASgFUgxmZWVkYmFja1R5cG'
    'USEgoEY29zdBgCIAEoBVIEY29zdBIcCglnZXRSZXR1cm4YAyABKAFSCWdldFJldHVybhIkCg1n'
    'ZXRQZXJjZW50YWdlGAQgASgBUg1nZXRQZXJjZW50YWdlEjAKE2ZlZWRiYWNrRXZlbnRTdGF0dX'
    'MYBSABKAVSE2ZlZWRiYWNrRXZlbnRTdGF0dXM=');

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

@$core.Deprecated('Use rewardIDProtoDescriptor instead')
const RewardIDProto$json = {
  '1': 'RewardIDProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `RewardIDProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rewardIDProtoDescriptor = $convert.base64Decode(
    'Cg1SZXdhcmRJRFByb3RvEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use cardRewardFlattenReplyDescriptor instead')
const CardRewardFlattenReply$json = {
  '1': 'CardRewardFlattenReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.card.Reply', '10': 'reply'},
    {'1': 'cardRewardFlatten', '3': 2, '4': 1, '5': 11, '6': '.card.CardRewardFlatten', '10': 'cardRewardFlatten'},
  ],
};

/// Descriptor for `CardRewardFlattenReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardFlattenReplyDescriptor = $convert.base64Decode(
    'ChZDYXJkUmV3YXJkRmxhdHRlblJlcGx5EiEKBXJlcGx5GAEgASgLMgsuY2FyZC5SZXBseVIFcm'
    'VwbHkSRQoRY2FyZFJld2FyZEZsYXR0ZW4YAiABKAsyFy5jYXJkLkNhcmRSZXdhcmRGbGF0dGVu'
    'UhFjYXJkUmV3YXJkRmxhdHRlbg==');

@$core.Deprecated('Use cardRewardFlattenDescriptor instead')
const CardRewardFlatten$json = {
  '1': 'CardRewardFlatten',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'channels', '3': 2, '4': 3, '5': 11, '6': '.card.CardRewardChannelFlatten', '10': 'channels'},
    {'1': 'pays', '3': 3, '4': 1, '5': 11, '6': '.card.CardRewardPayFlatten', '10': 'pays'},
    {'1': 'tasks', '3': 4, '4': 1, '5': 11, '6': '.card.CardRewardTasksFlatten', '10': 'tasks'},
    {'1': 'constraints', '3': 5, '4': 3, '5': 11, '6': '.card.CardRewardConstraintFlatten', '10': 'constraints'},
    {'1': 'labels', '3': 6, '4': 1, '5': 11, '6': '.card.CardRewardLabelFlatten', '10': 'labels'},
  ],
};

/// Descriptor for `CardRewardFlatten`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardFlattenDescriptor = $convert.base64Decode(
    'ChFDYXJkUmV3YXJkRmxhdHRlbhIOCgJpZBgBIAEoCVICaWQSOgoIY2hhbm5lbHMYAiADKAsyHi'
    '5jYXJkLkNhcmRSZXdhcmRDaGFubmVsRmxhdHRlblIIY2hhbm5lbHMSLgoEcGF5cxgDIAEoCzIa'
    'LmNhcmQuQ2FyZFJld2FyZFBheUZsYXR0ZW5SBHBheXMSMgoFdGFza3MYBCABKAsyHC5jYXJkLk'
    'NhcmRSZXdhcmRUYXNrc0ZsYXR0ZW5SBXRhc2tzEkMKC2NvbnN0cmFpbnRzGAUgAygLMiEuY2Fy'
    'ZC5DYXJkUmV3YXJkQ29uc3RyYWludEZsYXR0ZW5SC2NvbnN0cmFpbnRzEjQKBmxhYmVscxgGIA'
    'EoCzIcLmNhcmQuQ2FyZFJld2FyZExhYmVsRmxhdHRlblIGbGFiZWxz');

@$core.Deprecated('Use cardRewardLabelFlattenDescriptor instead')
const CardRewardLabelFlatten$json = {
  '1': 'CardRewardLabelFlatten',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.card.LabelProto', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.card.LabelProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `CardRewardLabelFlatten`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardLabelFlattenDescriptor = $convert.base64Decode(
    'ChZDYXJkUmV3YXJkTGFiZWxGbGF0dGVuEioKB21hdGNoZXMYASADKAsyEC5jYXJkLkxhYmVsUH'
    'JvdG9SB21hdGNoZXMSMAoKbWlzTWF0Y2hlcxgCIAMoCzIQLmNhcmQuTGFiZWxQcm90b1IKbWlz'
    'TWF0Y2hlcw==');

@$core.Deprecated('Use labelProtoDescriptor instead')
const LabelProto$json = {
  '1': 'LabelProto',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `LabelProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelProtoDescriptor = $convert.base64Decode(
    'CgpMYWJlbFByb3RvEhIKBHR5cGUYASABKAVSBHR5cGUSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use cardRewardConstraintFlattenDescriptor instead')
const CardRewardConstraintFlatten$json = {
  '1': 'CardRewardConstraintFlatten',
  '2': [
    {'1': 'constraintType', '3': 1, '4': 1, '5': 5, '10': 'constraintType'},
    {'1': 'weekDays', '3': 2, '4': 3, '5': 5, '10': 'weekDays'},
  ],
};

/// Descriptor for `CardRewardConstraintFlatten`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardConstraintFlattenDescriptor = $convert.base64Decode(
    'ChtDYXJkUmV3YXJkQ29uc3RyYWludEZsYXR0ZW4SJgoOY29uc3RyYWludFR5cGUYASABKAVSDm'
    'NvbnN0cmFpbnRUeXBlEhoKCHdlZWtEYXlzGAIgAygFUgh3ZWVrRGF5cw==');

@$core.Deprecated('Use cardRewardTasksFlattenDescriptor instead')
const CardRewardTasksFlatten$json = {
  '1': 'CardRewardTasksFlatten',
  '2': [
    {'1': 'matches', '3': 2, '4': 3, '5': 11, '6': '.card.TaskProto', '10': 'matches'},
    {'1': 'misMatches', '3': 3, '4': 3, '5': 11, '6': '.card.TaskProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `CardRewardTasksFlatten`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardTasksFlattenDescriptor = $convert.base64Decode(
    'ChZDYXJkUmV3YXJkVGFza3NGbGF0dGVuEikKB21hdGNoZXMYAiADKAsyDy5jYXJkLlRhc2tQcm'
    '90b1IHbWF0Y2hlcxIvCgptaXNNYXRjaGVzGAMgAygLMg8uY2FyZC5UYXNrUHJvdG9SCm1pc01h'
    'dGNoZXM=');

@$core.Deprecated('Use taskProtoDescriptor instead')
const TaskProto$json = {
  '1': 'TaskProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'descriptions', '3': 3, '4': 3, '5': 11, '6': '.card.DescriptionProto', '10': 'descriptions'},
    {'1': 'taskOwner', '3': 4, '4': 1, '5': 5, '10': 'taskOwner'},
    {'1': 'taskOwnerID', '3': 5, '4': 1, '5': 9, '10': 'taskOwnerID'},
    {'1': 'createDate', '3': 6, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 7, '4': 1, '5': 3, '10': 'updateDate'},
  ],
};

/// Descriptor for `TaskProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskProtoDescriptor = $convert.base64Decode(
    'CglUYXNrUHJvdG8SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSOgoMZGVzY3'
    'JpcHRpb25zGAMgAygLMhYuY2FyZC5EZXNjcmlwdGlvblByb3RvUgxkZXNjcmlwdGlvbnMSHAoJ'
    'dGFza093bmVyGAQgASgFUgl0YXNrT3duZXISIAoLdGFza093bmVySUQYBSABKAlSC3Rhc2tPd2'
    '5lcklEEh4KCmNyZWF0ZURhdGUYBiABKANSCmNyZWF0ZURhdGUSHgoKdXBkYXRlRGF0ZRgHIAEo'
    'A1IKdXBkYXRlRGF0ZQ==');

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

@$core.Deprecated('Use cardRewardPayFlattenDescriptor instead')
const CardRewardPayFlatten$json = {
  '1': 'CardRewardPayFlatten',
  '2': [
    {'1': 'matches', '3': 1, '4': 3, '5': 11, '6': '.card.PayProto', '10': 'matches'},
    {'1': 'misMatches', '3': 2, '4': 3, '5': 11, '6': '.card.PayProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `CardRewardPayFlatten`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardPayFlattenDescriptor = $convert.base64Decode(
    'ChRDYXJkUmV3YXJkUGF5RmxhdHRlbhIoCgdtYXRjaGVzGAEgAygLMg4uY2FyZC5QYXlQcm90b1'
    'IHbWF0Y2hlcxIuCgptaXNNYXRjaGVzGAIgAygLMg4uY2FyZC5QYXlQcm90b1IKbWlzTWF0Y2hl'
    'cw==');

@$core.Deprecated('Use payProtoDescriptor instead')
const PayProto$json = {
  '1': 'PayProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'linkURL', '3': 4, '4': 1, '5': 9, '10': 'linkURL'},
    {'1': 'descriptions', '3': 5, '4': 3, '5': 9, '10': 'descriptions'},
    {'1': 'createDate', '3': 6, '4': 1, '5': 3, '10': 'createDate'},
    {'1': 'updateDate', '3': 7, '4': 1, '5': 3, '10': 'updateDate'},
    {'1': 'order', '3': 8, '4': 1, '5': 5, '10': 'order'},
    {'1': 'payStatus', '3': 9, '4': 1, '5': 5, '10': 'payStatus'},
  ],
};

/// Descriptor for `PayProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payProtoDescriptor = $convert.base64Decode(
    'CghQYXlQcm90bxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVpbWFnZR'
    'gDIAEoCVIFaW1hZ2USGAoHbGlua1VSTBgEIAEoCVIHbGlua1VSTBIiCgxkZXNjcmlwdGlvbnMY'
    'BSADKAlSDGRlc2NyaXB0aW9ucxIeCgpjcmVhdGVEYXRlGAYgASgDUgpjcmVhdGVEYXRlEh4KCn'
    'VwZGF0ZURhdGUYByABKANSCnVwZGF0ZURhdGUSFAoFb3JkZXIYCCABKAVSBW9yZGVyEhwKCXBh'
    'eVN0YXR1cxgJIAEoBVIJcGF5U3RhdHVz');

@$core.Deprecated('Use cardRewardChannelFlattenDescriptor instead')
const CardRewardChannelFlatten$json = {
  '1': 'CardRewardChannelFlatten',
  '2': [
    {'1': 'ChannelCategoryType', '3': 1, '4': 1, '5': 5, '10': 'ChannelCategoryType'},
    {'1': 'matches', '3': 2, '4': 3, '5': 11, '6': '.card.ChannelProto', '10': 'matches'},
    {'1': 'misMatches', '3': 3, '4': 3, '5': 11, '6': '.card.ChannelProto', '10': 'misMatches'},
  ],
};

/// Descriptor for `CardRewardChannelFlatten`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRewardChannelFlattenDescriptor = $convert.base64Decode(
    'ChhDYXJkUmV3YXJkQ2hhbm5lbEZsYXR0ZW4SMAoTQ2hhbm5lbENhdGVnb3J5VHlwZRgBIAEoBV'
    'ITQ2hhbm5lbENhdGVnb3J5VHlwZRIsCgdtYXRjaGVzGAIgAygLMhIuY2FyZC5DaGFubmVsUHJv'
    'dG9SB21hdGNoZXMSMgoKbWlzTWF0Y2hlcxgDIAMoCzISLmNhcmQuQ2hhbm5lbFByb3RvUgptaX'
    'NNYXRjaGVz');

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

