///
//  Generated code. Do not modify.
//  source: proto/branding.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// Dart imports:
import 'dart:core' as $core;

// Package imports:
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

// Project imports:
import 'branding.pbenum.dart';

export 'branding.pbenum.dart';

class InqvineBranding extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InqvineBranding', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logoUrl')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'googleFontFamily')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'primaryColorHex')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'primaryColorHighlightHex')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondaryColorHex')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondaryColorHighlightHex')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorColorHex')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorColorHighlightHex')
    ..e<InqvineBranding_BrandingBrightness>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brightness', $pb.PbFieldType.OE, defaultOrMaker: InqvineBranding_BrandingBrightness.automatic, valueOf: InqvineBranding_BrandingBrightness.valueOf, enumValues: InqvineBranding_BrandingBrightness.values)
    ..e<InqvineBranding_BrandingBorderType>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'borderType', $pb.PbFieldType.OE, defaultOrMaker: InqvineBranding_BrandingBorderType.rounded, valueOf: InqvineBranding_BrandingBorderType.valueOf, enumValues: InqvineBranding_BrandingBorderType.values)
    ..hasRequiredFields = false
  ;

  InqvineBranding._() : super();
  factory InqvineBranding({
    $core.String? logoUrl,
    $core.String? displayName,
    $core.String? googleFontFamily,
    $fixnum.Int64? primaryColorHex,
    $fixnum.Int64? primaryColorHighlightHex,
    $fixnum.Int64? secondaryColorHex,
    $fixnum.Int64? secondaryColorHighlightHex,
    $fixnum.Int64? errorColorHex,
    $fixnum.Int64? errorColorHighlightHex,
    InqvineBranding_BrandingBrightness? brightness,
    InqvineBranding_BrandingBorderType? borderType,
  }) {
    final _result = create();
    if (logoUrl != null) {
      _result.logoUrl = logoUrl;
    }
    if (displayName != null) {
      _result.displayName = displayName;
    }
    if (googleFontFamily != null) {
      _result.googleFontFamily = googleFontFamily;
    }
    if (primaryColorHex != null) {
      _result.primaryColorHex = primaryColorHex;
    }
    if (primaryColorHighlightHex != null) {
      _result.primaryColorHighlightHex = primaryColorHighlightHex;
    }
    if (secondaryColorHex != null) {
      _result.secondaryColorHex = secondaryColorHex;
    }
    if (secondaryColorHighlightHex != null) {
      _result.secondaryColorHighlightHex = secondaryColorHighlightHex;
    }
    if (errorColorHex != null) {
      _result.errorColorHex = errorColorHex;
    }
    if (errorColorHighlightHex != null) {
      _result.errorColorHighlightHex = errorColorHighlightHex;
    }
    if (brightness != null) {
      _result.brightness = brightness;
    }
    if (borderType != null) {
      _result.borderType = borderType;
    }
    return _result;
  }
  factory InqvineBranding.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InqvineBranding.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InqvineBranding clone() => InqvineBranding()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InqvineBranding copyWith(void Function(InqvineBranding) updates) => super.copyWith((message) => updates(message as InqvineBranding)) as InqvineBranding; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InqvineBranding create() => InqvineBranding._();
  InqvineBranding createEmptyInstance() => create();
  static $pb.PbList<InqvineBranding> createRepeated() => $pb.PbList<InqvineBranding>();
  @$core.pragma('dart2js:noInline')
  static InqvineBranding getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InqvineBranding>(create);
  static InqvineBranding? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get logoUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set logoUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogoUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogoUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get googleFontFamily => $_getSZ(2);
  @$pb.TagNumber(3)
  set googleFontFamily($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGoogleFontFamily() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoogleFontFamily() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get primaryColorHex => $_getI64(3);
  @$pb.TagNumber(4)
  set primaryColorHex($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrimaryColorHex() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrimaryColorHex() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get primaryColorHighlightHex => $_getI64(4);
  @$pb.TagNumber(5)
  set primaryColorHighlightHex($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrimaryColorHighlightHex() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrimaryColorHighlightHex() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get secondaryColorHex => $_getI64(5);
  @$pb.TagNumber(6)
  set secondaryColorHex($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSecondaryColorHex() => $_has(5);
  @$pb.TagNumber(6)
  void clearSecondaryColorHex() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get secondaryColorHighlightHex => $_getI64(6);
  @$pb.TagNumber(7)
  set secondaryColorHighlightHex($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSecondaryColorHighlightHex() => $_has(6);
  @$pb.TagNumber(7)
  void clearSecondaryColorHighlightHex() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get errorColorHex => $_getI64(7);
  @$pb.TagNumber(8)
  set errorColorHex($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasErrorColorHex() => $_has(7);
  @$pb.TagNumber(8)
  void clearErrorColorHex() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get errorColorHighlightHex => $_getI64(8);
  @$pb.TagNumber(9)
  set errorColorHighlightHex($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasErrorColorHighlightHex() => $_has(8);
  @$pb.TagNumber(9)
  void clearErrorColorHighlightHex() => clearField(9);

  @$pb.TagNumber(10)
  InqvineBranding_BrandingBrightness get brightness => $_getN(9);
  @$pb.TagNumber(10)
  set brightness(InqvineBranding_BrandingBrightness v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasBrightness() => $_has(9);
  @$pb.TagNumber(10)
  void clearBrightness() => clearField(10);

  @$pb.TagNumber(11)
  InqvineBranding_BrandingBorderType get borderType => $_getN(10);
  @$pb.TagNumber(11)
  set borderType(InqvineBranding_BrandingBorderType v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasBorderType() => $_has(10);
  @$pb.TagNumber(11)
  void clearBorderType() => clearField(11);
}

