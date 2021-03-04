///
//  Generated code. Do not modify.
//  source: proto/application.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Application_ApplicationType extends $pb.ProtobufEnum {
  static const Application_ApplicationType development = Application_ApplicationType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'development');
  static const Application_ApplicationType uat = Application_ApplicationType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'uat');
  static const Application_ApplicationType alpha = Application_ApplicationType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'alpha');
  static const Application_ApplicationType beta = Application_ApplicationType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'beta');
  static const Application_ApplicationType production = Application_ApplicationType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'production');

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

