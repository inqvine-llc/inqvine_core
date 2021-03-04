///
//  Generated code. Do not modify.
//  source: proto/application.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use applicationDescriptor instead')
const Application$json = const {
  '1': 'Application',
  '2': const [
    const {'1': 'application_name', '3': 1, '4': 1, '5': 9, '10': 'applicationName'},
    const {'1': 'application_version', '3': 2, '4': 1, '5': 9, '10': 'applicationVersion'},
    const {'1': 'application_build_number', '3': 3, '4': 1, '5': 9, '10': 'applicationBuildNumber'},
    const {'1': 'application_type', '3': 4, '4': 1, '5': 14, '6': '.Application.ApplicationType', '10': 'applicationType'},
  ],
  '4': const [Application_ApplicationType$json],
};

@$core.Deprecated('Use applicationDescriptor instead')
const Application_ApplicationType$json = const {
  '1': 'ApplicationType',
  '2': const [
    const {'1': 'development', '2': 0},
    const {'1': 'uat', '2': 1},
    const {'1': 'alpha', '2': 2},
    const {'1': 'beta', '2': 3},
    const {'1': 'production', '2': 4},
  ],
};

/// Descriptor for `Application`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationDescriptor = $convert.base64Decode('CgtBcHBsaWNhdGlvbhIpChBhcHBsaWNhdGlvbl9uYW1lGAEgASgJUg9hcHBsaWNhdGlvbk5hbWUSLwoTYXBwbGljYXRpb25fdmVyc2lvbhgCIAEoCVISYXBwbGljYXRpb25WZXJzaW9uEjgKGGFwcGxpY2F0aW9uX2J1aWxkX251bWJlchgDIAEoCVIWYXBwbGljYXRpb25CdWlsZE51bWJlchJHChBhcHBsaWNhdGlvbl90eXBlGAQgASgOMhwuQXBwbGljYXRpb24uQXBwbGljYXRpb25UeXBlUg9hcHBsaWNhdGlvblR5cGUiUAoPQXBwbGljYXRpb25UeXBlEg8KC2RldmVsb3BtZW50EAASBwoDdWF0EAESCQoFYWxwaGEQAhIICgRiZXRhEAMSDgoKcHJvZHVjdGlvbhAE');
