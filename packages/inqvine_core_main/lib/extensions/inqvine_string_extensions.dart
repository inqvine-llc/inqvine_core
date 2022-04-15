// Project imports:
import '../inqvine_core_main.dart';

extension InqvineStringExtensions on String {
  //? A selection of debugging and logging functions, logs are picked up by the InqvineEventBus

  /// Create an information log and pass it to the InqvineEventBus
  void logInfo({
    Map<String, dynamic> metadata = const <String, dynamic>{},
  }) =>
      _log(InqvineLogEvent(
          message: this, level: InqvineLogLevel.info, metadata: metadata));

  /// Create a non-fatal error log and pass it to the InqvineEventBus
  void logError({
    Map<String, dynamic> metadata = const <String, dynamic>{},
  }) =>
      _log(InqvineLogEvent(
          message: this, level: InqvineLogLevel.error, metadata: metadata));

  /// Create a fatal error log and pass it to the InqvineEventBus
  void logFatal({
    Map<String, dynamic> metadata = const <String, dynamic>{},
  }) =>
      _log(InqvineLogEvent(
          message: this, level: InqvineLogLevel.fatal, metadata: metadata));

  /// Create a debugging log and pass it to the InqvineEventBus
  void logDebug({
    Map<String, dynamic> metadata = const <String, dynamic>{},
  }) =>
      _log(InqvineLogEvent(
          message: this, level: InqvineLogLevel.debug, metadata: metadata));

  void _log(InqvineLogEvent event) =>
      InqvineServices.instance.publishEvent(event);

  String get realizeNewLineFeeds {
    return replaceAll(r'\n', '\n');
  }
}
