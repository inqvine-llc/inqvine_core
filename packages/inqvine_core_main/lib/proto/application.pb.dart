///
//  Generated code. Do not modify.
//  source: proto/application.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// Dart imports:
import 'dart:core' as $core;

// Package imports:
import 'package:protobuf/protobuf.dart' as $pb;

// Project imports:
import 'application.pbenum.dart';

export 'application.pbenum.dart';

class Application extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Application', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applicationName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applicationVersion')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applicationBuildNumber')
    ..e<Application_ApplicationType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applicationType', $pb.PbFieldType.OE, defaultOrMaker: Application_ApplicationType.development, valueOf: Application_ApplicationType.valueOf, enumValues: Application_ApplicationType.values)
    ..hasRequiredFields = false
  ;

  Application._() : super();
  factory Application({
    $core.String? applicationName,
    $core.String? applicationVersion,
    $core.String? applicationBuildNumber,
    Application_ApplicationType? applicationType,
  }) {
    final _result = create();
    if (applicationName != null) {
      _result.applicationName = applicationName;
    }
    if (applicationVersion != null) {
      _result.applicationVersion = applicationVersion;
    }
    if (applicationBuildNumber != null) {
      _result.applicationBuildNumber = applicationBuildNumber;
    }
    if (applicationType != null) {
      _result.applicationType = applicationType;
    }
    return _result;
  }
  factory Application.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Application.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Application clone() => Application()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Application copyWith(void Function(Application) updates) => super.copyWith((message) => updates(message as Application)) as Application; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Application create() => Application._();
  Application createEmptyInstance() => create();
  static $pb.PbList<Application> createRepeated() => $pb.PbList<Application>();
  @$core.pragma('dart2js:noInline')
  static Application getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Application>(create);
  static Application? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationName => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplicationName() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get applicationVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set applicationVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApplicationVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearApplicationVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get applicationBuildNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set applicationBuildNumber($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApplicationBuildNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearApplicationBuildNumber() => clearField(3);

  @$pb.TagNumber(4)
  Application_ApplicationType get applicationType => $_getN(3);
  @$pb.TagNumber(4)
  set applicationType(Application_ApplicationType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasApplicationType() => $_has(3);
  @$pb.TagNumber(4)
  void clearApplicationType() => clearField(4);
}

