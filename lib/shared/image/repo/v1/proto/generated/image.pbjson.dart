//
//  Generated code. Do not modify.
//  source: image.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use imageReqDescriptor instead')
const ImageReq$json = {
  '1': 'ImageReq',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ImageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageReqDescriptor = $convert.base64Decode(
    'CghJbWFnZVJlcRISCgR0eXBlGAEgASgJUgR0eXBlEg4KAmlkGAIgASgJUgJpZA==');

@$core.Deprecated('Use replyDescriptor instead')
const Reply$json = {
  '1': 'Reply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.image.v1.Error', '10': 'error'},
  ],
};

/// Descriptor for `Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyDescriptor = $convert.base64Decode(
    'CgVSZXBseRIWCgZzdGF0dXMYASABKAVSBnN0YXR1cxIlCgVlcnJvchgCIAEoCzIPLmltYWdlLn'
    'YxLkVycm9yUgVlcnJvcg==');

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

@$core.Deprecated('Use imageReplyDescriptor instead')
const ImageReply$json = {
  '1': 'ImageReply',
  '2': [
    {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.image.v1.Reply', '10': 'reply'},
    {'1': 'image', '3': 2, '4': 1, '5': 11, '6': '.image.v1.ImageReply.Image', '10': 'image'},
  ],
  '3': [ImageReply_Image$json],
};

@$core.Deprecated('Use imageReplyDescriptor instead')
const ImageReply_Image$json = {
  '1': 'Image',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `ImageReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageReplyDescriptor = $convert.base64Decode(
    'CgpJbWFnZVJlcGx5EiUKBXJlcGx5GAEgASgLMg8uaW1hZ2UudjEuUmVwbHlSBXJlcGx5EjAKBW'
    'ltYWdlGAIgASgLMhouaW1hZ2UudjEuSW1hZ2VSZXBseS5JbWFnZVIFaW1hZ2UaGwoFSW1hZ2US'
    'EgoEZGF0YRgBIAEoDFIEZGF0YQ==');

