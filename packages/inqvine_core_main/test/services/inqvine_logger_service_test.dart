import 'package:flutter_test/flutter_test.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'inqvine_logger_service_test.mocks.dart';

@GenerateMocks([Logger])
Future<void> main() async {
  final InqvineLoggerService loggerService = InqvineLoggerService.instance;
  await loggerService.initializeService();

  final MockLogger logger = MockLogger();
  when(logger.i(any)).thenReturn(null);
  when(logger.d(any)).thenReturn(null);
  when(logger.e(any)).thenReturn(null);

  test('Firing an info log event calls logger successfully and through extensions', () async {
    await inqvine.resetLocator();
    inqvine.registerInLocator<Logger>(logger);

    final InqvineLogEvent logEvent = InqvineLogEvent(message: 'Info fired', level: InqvineLogLevel.info);
    inqvine.publishEvent(logEvent);
    await Future<void>.delayed(Duration(milliseconds: 25));

    verify(logger.i(any)).called(1);
  });

  test('Firing an fatal log event calls logger successfully and through extensions', () async {
    await inqvine.resetLocator();
    inqvine.registerInLocator<Logger>(logger);

    final InqvineLogEvent logEvent = InqvineLogEvent(message: 'Fatal fired', level: InqvineLogLevel.fatal);
    inqvine.publishEvent(logEvent);
    await Future<void>.delayed(Duration(milliseconds: 25));

    verify(logger.e(any)).called(1);
  });

  test('Firing an debug log event calls logger successfully and through extensions', () async {
    await inqvine.resetLocator();
    inqvine.registerInLocator<Logger>(logger);

    final InqvineLogEvent logEvent = InqvineLogEvent(message: '', level: InqvineLogLevel.debug);
    inqvine.publishEvent(logEvent);
    await Future<void>.delayed(Duration(milliseconds: 25));

    verify(logger.d(any)).called(1);
  });

  test('Firing an error log event calls logger successfully and through extensions', () async {
    await inqvine.resetLocator();
    inqvine.registerInLocator<Logger>(logger);

    final InqvineLogEvent logEvent = InqvineLogEvent(message: 'Error fired', level: InqvineLogLevel.error);
    inqvine.publishEvent(logEvent);
    await Future<void>.delayed(Duration(milliseconds: 25));

    verify(logger.e(any)).called(1);
  });
}
