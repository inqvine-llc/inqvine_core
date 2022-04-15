///
//  Generated code. Do not modify.
//  source: proto/application_status.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

// Dart imports:
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use applicationStatusDescriptor instead')
const ApplicationStatus$json = const {
  '1': 'ApplicationStatus',
  '2': const [
    const {'1': 'is_online', '3': 1, '4': 1, '5': 8, '10': 'isOnline'},
    const {'1': 'downtime_reason', '3': 2, '4': 3, '5': 11, '6': '.ApplicationStatus.DowntimeReasonEntry', '10': 'downtimeReason'},
    const {'1': 'planned_downtime_start', '3': 3, '4': 1, '5': 3, '10': 'plannedDowntimeStart'},
    const {'1': 'planned_downtime_finish', '3': 4, '4': 1, '5': 3, '10': 'plannedDowntimeFinish'},
  ],
  '3': const [ApplicationStatus_DowntimeReasonEntry$json],
};

@$core.Deprecated('Use applicationStatusDescriptor instead')
const ApplicationStatus_DowntimeReasonEntry$json = const {
  '1': 'DowntimeReasonEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ApplicationStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationStatusDescriptor = $convert.base64Decode('ChFBcHBsaWNhdGlvblN0YXR1cxIbCglpc19vbmxpbmUYASABKAhSCGlzT25saW5lEk8KD2Rvd250aW1lX3JlYXNvbhgCIAMoCzImLkFwcGxpY2F0aW9uU3RhdHVzLkRvd250aW1lUmVhc29uRW50cnlSDmRvd250aW1lUmVhc29uEjQKFnBsYW5uZWRfZG93bnRpbWVfc3RhcnQYAyABKANSFHBsYW5uZWREb3dudGltZVN0YXJ0EjYKF3BsYW5uZWRfZG93bnRpbWVfZmluaXNoGAQgASgDUhVwbGFubmVkRG93bnRpbWVGaW5pc2gaQQoTRG93bnRpbWVSZWFzb25FbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
