import '../inqvine_core.dart';

extension InqvineStringExtensions on String {
  void logInfo({
    Map<String, dynamic> metadata = const <String, dynamic>{},
  }) =>
      _log(InqvineLogEvent(message: this, level: InqvineLogLevel.info, metadata: metadata));

  void logError({
    Map<String, dynamic> metadata = const <String, dynamic>{},
  }) =>
      _log(InqvineLogEvent(message: this, level: InqvineLogLevel.error, metadata: metadata));

  void logFatal({
    Map<String, dynamic> metadata = const <String, dynamic>{},
  }) =>
      _log(InqvineLogEvent(message: this, level: InqvineLogLevel.fatal, metadata: metadata));

  void logDebug({
    Map<String, dynamic> metadata = const <String, dynamic>{},
  }) =>
      _log(InqvineLogEvent(message: this, level: InqvineLogLevel.debug, metadata: metadata));

  void _log(InqvineLogEvent event) => InqvineServices.instance.publishEvent(event);

  String get realizeNewLineFeeds {
    return replaceAll(r'\n', '\n');
  }
}
