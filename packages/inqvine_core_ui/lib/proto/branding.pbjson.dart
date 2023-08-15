//
//  Generated code. Do not modify.
//  source: proto/branding.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use inqvineBrandingDescriptor instead')
const InqvineBranding$json = {
  '1': 'InqvineBranding',
  '2': [
    {'1': 'logo_url', '3': 1, '4': 1, '5': 9, '10': 'logoUrl'},
    {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'google_font_family', '3': 3, '4': 1, '5': 9, '10': 'googleFontFamily'},
    {'1': 'primary_color_hex', '3': 4, '4': 1, '5': 3, '10': 'primaryColorHex'},
    {'1': 'primary_color_highlight_hex', '3': 5, '4': 1, '5': 3, '10': 'primaryColorHighlightHex'},
    {'1': 'secondary_color_hex', '3': 6, '4': 1, '5': 3, '10': 'secondaryColorHex'},
    {'1': 'secondary_color_highlight_hex', '3': 7, '4': 1, '5': 3, '10': 'secondaryColorHighlightHex'},
    {'1': 'error_color_hex', '3': 8, '4': 1, '5': 3, '10': 'errorColorHex'},
    {'1': 'error_color_highlight_hex', '3': 9, '4': 1, '5': 3, '10': 'errorColorHighlightHex'},
    {'1': 'brightness', '3': 10, '4': 1, '5': 14, '6': '.InqvineBranding.BrandingBrightness', '10': 'brightness'},
    {'1': 'border_type', '3': 11, '4': 1, '5': 14, '6': '.InqvineBranding.BrandingBorderType', '10': 'borderType'},
  ],
  '4': [InqvineBranding_BrandingBrightness$json, InqvineBranding_BrandingBorderType$json],
};

@$core.Deprecated('Use inqvineBrandingDescriptor instead')
const InqvineBranding_BrandingBrightness$json = {
  '1': 'BrandingBrightness',
  '2': [
    {'1': 'automatic', '2': 0},
    {'1': 'light', '2': 1},
    {'1': 'dark', '2': 2},
  ],
};

@$core.Deprecated('Use inqvineBrandingDescriptor instead')
const InqvineBranding_BrandingBorderType$json = {
  '1': 'BrandingBorderType',
  '2': [
    {'1': 'rounded', '2': 0},
    {'1': 'square', '2': 1},
    {'1': 'rounded_square', '2': 2},
    {'1': 'soft_square', '2': 3},
  ],
};

/// Descriptor for `InqvineBranding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inqvineBrandingDescriptor = $convert.base64Decode(
    'Cg9JbnF2aW5lQnJhbmRpbmcSGQoIbG9nb191cmwYASABKAlSB2xvZ29VcmwSIQoMZGlzcGxheV'
    '9uYW1lGAIgASgJUgtkaXNwbGF5TmFtZRIsChJnb29nbGVfZm9udF9mYW1pbHkYAyABKAlSEGdv'
    'b2dsZUZvbnRGYW1pbHkSKgoRcHJpbWFyeV9jb2xvcl9oZXgYBCABKANSD3ByaW1hcnlDb2xvck'
    'hleBI9ChtwcmltYXJ5X2NvbG9yX2hpZ2hsaWdodF9oZXgYBSABKANSGHByaW1hcnlDb2xvckhp'
    'Z2hsaWdodEhleBIuChNzZWNvbmRhcnlfY29sb3JfaGV4GAYgASgDUhFzZWNvbmRhcnlDb2xvck'
    'hleBJBCh1zZWNvbmRhcnlfY29sb3JfaGlnaGxpZ2h0X2hleBgHIAEoA1Iac2Vjb25kYXJ5Q29s'
    'b3JIaWdobGlnaHRIZXgSJgoPZXJyb3JfY29sb3JfaGV4GAggASgDUg1lcnJvckNvbG9ySGV4Ej'
    'kKGWVycm9yX2NvbG9yX2hpZ2hsaWdodF9oZXgYCSABKANSFmVycm9yQ29sb3JIaWdobGlnaHRI'
    'ZXgSQwoKYnJpZ2h0bmVzcxgKIAEoDjIjLklucXZpbmVCcmFuZGluZy5CcmFuZGluZ0JyaWdodG'
    '5lc3NSCmJyaWdodG5lc3MSRAoLYm9yZGVyX3R5cGUYCyABKA4yIy5JbnF2aW5lQnJhbmRpbmcu'
    'QnJhbmRpbmdCb3JkZXJUeXBlUgpib3JkZXJUeXBlIjgKEkJyYW5kaW5nQnJpZ2h0bmVzcxINCg'
    'lhdXRvbWF0aWMQABIJCgVsaWdodBABEggKBGRhcmsQAiJSChJCcmFuZGluZ0JvcmRlclR5cGUS'
    'CwoHcm91bmRlZBAAEgoKBnNxdWFyZRABEhIKDnJvdW5kZWRfc3F1YXJlEAISDwoLc29mdF9zcX'
    'VhcmUQAw==');

