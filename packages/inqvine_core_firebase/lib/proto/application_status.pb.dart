//
//  Generated code. Do not modify.
//  source: proto/application_status.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ApplicationStatus extends $pb.GeneratedMessage {
  factory ApplicationStatus({
    $core.bool? isOnline,
    $core.Map<$core.String, $core.String>? downtimeReason,
    $fixnum.Int64? plannedDowntimeStart,
    $fixnum.Int64? plannedDowntimeFinish,
  }) {
    final $result = create();
    if (isOnline != null) {
      $result.isOnline = isOnline;
    }
    if (downtimeReason != null) {
      $result.downtimeReason.addAll(downtimeReason);
    }
    if (plannedDowntimeStart != null) {
      $result.plannedDowntimeStart = plannedDowntimeStart;
    }
    if (plannedDowntimeFinish != null) {
      $result.plannedDowntimeFinish = plannedDowntimeFinish;
    }
    return $result;
  }
  ApplicationStatus._() : super();
  factory ApplicationStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplicationStatus', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isOnline')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'downtimeReason', entryClassName: 'ApplicationStatus.DowntimeReasonEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS)
    ..aInt64(3, _omitFieldNames ? '' : 'plannedDowntimeStart')
    ..aInt64(4, _omitFieldNames ? '' : 'plannedDowntimeFinish')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplicationStatus clone() => ApplicationStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplicationStatus copyWith(void Function(ApplicationStatus) updates) => super.copyWith((message) => updates(message as ApplicationStatus)) as ApplicationStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplicationStatus create() => ApplicationStatus._();
  ApplicationStatus createEmptyInstance() => create();
  static $pb.PbList<ApplicationStatus> createRepeated() => $pb.PbList<ApplicationStatus>();
  @$core.pragma('dart2js:noInline')
  static ApplicationStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplicationStatus>(create);
  static ApplicationStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isOnline => $_getBF(0);
  @$pb.TagNumber(1)
  set isOnline($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsOnline() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOnline() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get downtimeReason => $_getMap(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get plannedDowntimeStart => $_getI64(2);
  @$pb.TagNumber(3)
  set plannedDowntimeStart($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlannedDowntimeStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlannedDowntimeStart() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get plannedDowntimeFinish => $_getI64(3);
  @$pb.TagNumber(4)
  set plannedDowntimeFinish($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlannedDowntimeFinish() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlannedDowntimeFinish() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
