// Mocks generated by Mockito 5.0.0 from annotations
// in inqvine_core/test/services/inqvine_logger_service_test.dart.
// Do not manually edit this file.

import 'package:logger/src/logger.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [Logger].
///
/// See the documentation for Mockito's code generation for more information.
class MockLogger extends _i1.Mock implements _i2.Logger {
  MockLogger() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void log(_i2.Level? level, dynamic message,
          [dynamic error, StackTrace? stackTrace]) =>
      super.noSuchMethod(
          Invocation.method(#log, [level, message, error, stackTrace]),
          returnValueForMissingStub: null);
}
