///
//  Generated code. Do not modify.
//  source: proto/branding.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use inqvineBrandingDescriptor instead')
const InqvineBranding$json = const {
  '1': 'InqvineBranding',
  '2': const [
    const {'1': 'logo_url', '3': 1, '4': 1, '5': 9, '10': 'logoUrl'},
    const {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    const {'1': 'google_font_family', '3': 3, '4': 1, '5': 9, '10': 'googleFontFamily'},
    const {'1': 'primary_color_hex', '3': 4, '4': 1, '5': 3, '10': 'primaryColorHex'},
    const {'1': 'primary_color_highlight_hex', '3': 5, '4': 1, '5': 3, '10': 'primaryColorHighlightHex'},
    const {'1': 'secondary_color_hex', '3': 6, '4': 1, '5': 3, '10': 'secondaryColorHex'},
    const {'1': 'secondary_color_highlight_hex', '3': 7, '4': 1, '5': 3, '10': 'secondaryColorHighlightHex'},
    const {'1': 'error_color_hex', '3': 8, '4': 1, '5': 3, '10': 'errorColorHex'},
    const {'1': 'error_color_highlight_hex', '3': 9, '4': 1, '5': 3, '10': 'errorColorHighlightHex'},
    const {'1': 'brightness', '3': 10, '4': 1, '5': 14, '6': '.InqvineBranding.BrandingBrightness', '10': 'brightness'},
    const {'1': 'border_type', '3': 11, '4': 1, '5': 14, '6': '.InqvineBranding.BrandingBorderType', '10': 'borderType'},
  ],
  '4': const [InqvineBranding_BrandingBrightness$json, InqvineBranding_BrandingBorderType$json],
};

@$core.Deprecated('Use inqvineBrandingDescriptor instead')
const InqvineBranding_BrandingBrightness$json = const {
  '1': 'BrandingBrightness',
  '2': const [
    const {'1': 'automatic', '2': 0},
    const {'1': 'light', '2': 1},
    const {'1': 'dark', '2': 2},
  ],
};

@$core.Deprecated('Use inqvineBrandingDescriptor instead')
const InqvineBranding_BrandingBorderType$json = const {
  '1': 'BrandingBorderType',
  '2': const [
    const {'1': 'rounded', '2': 0},
    const {'1': 'square', '2': 1},
    const {'1': 'rounded_square', '2': 2},
    const {'1': 'soft_square', '2': 3},
  ],
};

/// Descriptor for `InqvineBranding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inqvineBrandingDescriptor = $convert.base64Decode('Cg9JbnF2aW5lQnJhbmRpbmcSGQoIbG9nb191cmwYASABKAlSB2xvZ29VcmwSIQoMZGlzcGxheV9uYW1lGAIgASgJUgtkaXNwbGF5TmFtZRIsChJnb29nbGVfZm9udF9mYW1pbHkYAyABKAlSEGdvb2dsZUZvbnRGYW1pbHkSKgoRcHJpbWFyeV9jb2xvcl9oZXgYBCABKANSD3ByaW1hcnlDb2xvckhleBI9ChtwcmltYXJ5X2NvbG9yX2hpZ2hsaWdodF9oZXgYBSABKANSGHByaW1hcnlDb2xvckhpZ2hsaWdodEhleBIuChNzZWNvbmRhcnlfY29sb3JfaGV4GAYgASgDUhFzZWNvbmRhcnlDb2xvckhleBJBCh1zZWNvbmRhcnlfY29sb3JfaGlnaGxpZ2h0X2hleBgHIAEoA1Iac2Vjb25kYXJ5Q29sb3JIaWdobGlnaHRIZXgSJgoPZXJyb3JfY29sb3JfaGV4GAggASgDUg1lcnJvckNvbG9ySGV4EjkKGWVycm9yX2NvbG9yX2hpZ2hsaWdodF9oZXgYCSABKANSFmVycm9yQ29sb3JIaWdobGlnaHRIZXgSQwoKYnJpZ2h0bmVzcxgKIAEoDjIjLklucXZpbmVCcmFuZGluZy5CcmFuZGluZ0JyaWdodG5lc3NSCmJyaWdodG5lc3MSRAoLYm9yZGVyX3R5cGUYCyABKA4yIy5JbnF2aW5lQnJhbmRpbmcuQnJhbmRpbmdCb3JkZXJUeXBlUgpib3JkZXJUeXBlIjgKEkJyYW5kaW5nQnJpZ2h0bmVzcxINCglhdXRvbWF0aWMQABIJCgVsaWdodBABEggKBGRhcmsQAiJSChJCcmFuZGluZ0JvcmRlclR5cGUSCwoHcm91bmRlZBAAEgoKBnNxdWFyZRABEhIKDnJvdW5kZWRfc3F1YXJlEAISDwoLc29mdF9zcXVhcmUQAw==');
