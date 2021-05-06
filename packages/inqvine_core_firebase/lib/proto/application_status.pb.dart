///
//  Generated code. Do not modify.
//  source: proto/application_status.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ApplicationStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplicationStatus', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isApplicationOnline')
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applicationDowntimeReason', entryClassName: 'ApplicationStatus.ApplicationDowntimeReasonEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  ApplicationStatus._() : super();
  factory ApplicationStatus({
    $core.bool? isApplicationOnline,
    $core.Map<$core.String, $core.String>? applicationDowntimeReason,
  }) {
    final _result = create();
    if (isApplicationOnline != null) {
      _result.isApplicationOnline = isApplicationOnline;
    }
    if (applicationDowntimeReason != null) {
      _result.applicationDowntimeReason.addAll(applicationDowntimeReason);
    }
    return _result;
  }
  factory ApplicationStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplicationStatus clone() => ApplicationStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplicationStatus copyWith(void Function(ApplicationStatus) updates) => super.copyWith((message) => updates(message as ApplicationStatus)) as ApplicationStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplicationStatus create() => ApplicationStatus._();
  ApplicationStatus createEmptyInstance() => create();
  static $pb.PbList<ApplicationStatus> createRepeated() => $pb.PbList<ApplicationStatus>();
  @$core.pragma('dart2js:noInline')
  static ApplicationStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplicationStatus>(create);
  static ApplicationStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isApplicationOnline => $_getBF(0);
  @$pb.TagNumber(1)
  set isApplicationOnline($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsApplicationOnline() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsApplicationOnline() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get applicationDowntimeReason => $_getMap(1);
}

