//
//  Generated code. Do not modify.
//  source: proto/application.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use applicationDescriptor instead')
const Application$json = {
  '1': 'Application',
  '2': [
    {'1': 'application_name', '3': 1, '4': 1, '5': 9, '10': 'applicationName'},
    {'1': 'application_version', '3': 2, '4': 1, '5': 9, '10': 'applicationVersion'},
    {'1': 'application_build_number', '3': 3, '4': 1, '5': 9, '10': 'applicationBuildNumber'},
    {'1': 'application_type', '3': 4, '4': 1, '5': 14, '6': '.Application.ApplicationType', '10': 'applicationType'},
  ],
  '4': [Application_ApplicationType$json],
};

@$core.Deprecated('Use applicationDescriptor instead')
const Application_ApplicationType$json = {
  '1': 'ApplicationType',
  '2': [
    {'1': 'development', '2': 0},
    {'1': 'uat', '2': 1},
    {'1': 'alpha', '2': 2},
    {'1': 'beta', '2': 3},
    {'1': 'production', '2': 4},
  ],
};

/// Descriptor for `Application`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationDescriptor = $convert.base64Decode(
    'CgtBcHBsaWNhdGlvbhIpChBhcHBsaWNhdGlvbl9uYW1lGAEgASgJUg9hcHBsaWNhdGlvbk5hbW'
    'USLwoTYXBwbGljYXRpb25fdmVyc2lvbhgCIAEoCVISYXBwbGljYXRpb25WZXJzaW9uEjgKGGFw'
    'cGxpY2F0aW9uX2J1aWxkX251bWJlchgDIAEoCVIWYXBwbGljYXRpb25CdWlsZE51bWJlchJHCh'
    'BhcHBsaWNhdGlvbl90eXBlGAQgASgOMhwuQXBwbGljYXRpb24uQXBwbGljYXRpb25UeXBlUg9h'
    'cHBsaWNhdGlvblR5cGUiUAoPQXBwbGljYXRpb25UeXBlEg8KC2RldmVsb3BtZW50EAASBwoDdW'
    'F0EAESCQoFYWxwaGEQAhIICgRiZXRhEAMSDgoKcHJvZHVjdGlvbhAE');

