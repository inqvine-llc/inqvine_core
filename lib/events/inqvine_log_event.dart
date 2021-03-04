class InqvineLogEvent {
  InqvineLogEvent({
    required this.message,
    this.level = InqvineLogLevel.info,
    this.metadata = const <String, dynamic>{},
  });

  final InqvineLogLevel level;
  final String message;
  final Map<String, dynamic> metadata;
}

enum InqvineLogLevel { info, debug, error, fatal }
