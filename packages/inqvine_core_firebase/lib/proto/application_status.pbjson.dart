///
//  Generated code. Do not modify.
//  source: proto/application_status.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use applicationStatusDescriptor instead')
const ApplicationStatus$json = const {
  '1': 'ApplicationStatus',
  '2': const [
    const {'1': 'is_application_online', '3': 1, '4': 1, '5': 8, '10': 'isApplicationOnline'},
    const {'1': 'application_downtime_reason', '3': 2, '4': 3, '5': 11, '6': '.ApplicationStatus.ApplicationDowntimeReasonEntry', '10': 'applicationDowntimeReason'},
  ],
  '3': const [ApplicationStatus_ApplicationDowntimeReasonEntry$json],
};

@$core.Deprecated('Use applicationStatusDescriptor instead')
const ApplicationStatus_ApplicationDowntimeReasonEntry$json = const {
  '1': 'ApplicationDowntimeReasonEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ApplicationStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationStatusDescriptor = $convert.base64Decode('ChFBcHBsaWNhdGlvblN0YXR1cxIyChVpc19hcHBsaWNhdGlvbl9vbmxpbmUYASABKAhSE2lzQXBwbGljYXRpb25PbmxpbmUScQobYXBwbGljYXRpb25fZG93bnRpbWVfcmVhc29uGAIgAygLMjEuQXBwbGljYXRpb25TdGF0dXMuQXBwbGljYXRpb25Eb3dudGltZVJlYXNvbkVudHJ5UhlhcHBsaWNhdGlvbkRvd250aW1lUmVhc29uGkwKHkFwcGxpY2F0aW9uRG93bnRpbWVSZWFzb25FbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
