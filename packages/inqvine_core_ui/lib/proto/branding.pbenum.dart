//
//  Generated code. Do not modify.
//  source: proto/branding.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class InqvineBranding_BrandingBrightness extends $pb.ProtobufEnum {
  static const InqvineBranding_BrandingBrightness automatic = InqvineBranding_BrandingBrightness._(0, _omitEnumNames ? '' : 'automatic');
  static const InqvineBranding_BrandingBrightness light = InqvineBranding_BrandingBrightness._(1, _omitEnumNames ? '' : 'light');
  static const InqvineBranding_BrandingBrightness dark = InqvineBranding_BrandingBrightness._(2, _omitEnumNames ? '' : 'dark');

  static const $core.List<InqvineBranding_BrandingBrightness> values = <InqvineBranding_BrandingBrightness> [
    automatic,
    light,
    dark,
  ];

  static final $core.Map<$core.int, InqvineBranding_BrandingBrightness> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InqvineBranding_BrandingBrightness? valueOf($core.int value) => _byValue[value];

  const InqvineBranding_BrandingBrightness._($core.int v, $core.String n) : super(v, n);
}

class InqvineBranding_BrandingBorderType extends $pb.ProtobufEnum {
  static const InqvineBranding_BrandingBorderType rounded = InqvineBranding_BrandingBorderType._(0, _omitEnumNames ? '' : 'rounded');
  static const InqvineBranding_BrandingBorderType square = InqvineBranding_BrandingBorderType._(1, _omitEnumNames ? '' : 'square');
  static const InqvineBranding_BrandingBorderType rounded_square = InqvineBranding_BrandingBorderType._(2, _omitEnumNames ? '' : 'rounded_square');
  static const InqvineBranding_BrandingBorderType soft_square = InqvineBranding_BrandingBorderType._(3, _omitEnumNames ? '' : 'soft_square');

  static const $core.List<InqvineBranding_BrandingBorderType> values = <InqvineBranding_BrandingBorderType> [
    rounded,
    square,
    rounded_square,
    soft_square,
  ];

  static final $core.Map<$core.int, InqvineBranding_BrandingBorderType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InqvineBranding_BrandingBorderType? valueOf($core.int value) => _byValue[value];

  const InqvineBranding_BrandingBorderType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
