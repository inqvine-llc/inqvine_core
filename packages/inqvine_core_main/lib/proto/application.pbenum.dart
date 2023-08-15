//
//  Generated code. Do not modify.
//  source: proto/application.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Application_ApplicationType extends $pb.ProtobufEnum {
  static const Application_ApplicationType development = Application_ApplicationType._(0, _omitEnumNames ? '' : 'development');
  static const Application_ApplicationType uat = Application_ApplicationType._(1, _omitEnumNames ? '' : 'uat');
  static const Application_ApplicationType alpha = Application_ApplicationType._(2, _omitEnumNames ? '' : 'alpha');
  static const Application_ApplicationType beta = Application_ApplicationType._(3, _omitEnumNames ? '' : 'beta');
  static const Application_ApplicationType production = Application_ApplicationType._(4, _omitEnumNames ? '' : 'production');

  static const $core.List<Application_ApplicationType> values = <Application_ApplicationType> [
    development,
    uat,
    alpha,
    beta,
    production,
  ];

  static final $core.Map<$core.int, Application_ApplicationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Application_ApplicationType? valueOf($core.int value) => _byValue[value];

  const Application_ApplicationType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
