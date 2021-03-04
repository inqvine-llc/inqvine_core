import 'dart:async';

import '../inqvine_core.dart';

class InqvineLoggerService extends InqvineServiceBase {
  InqvineLoggerService._privateConstructor();
  static final InqvineLoggerService _instance = InqvineLoggerService._privateConstructor();
  static InqvineLoggerService get instance => _instance;

  Logger get _logger => inqvine.getFromLocator<Logger>();
  StreamSubscription<InqvineLogEvent>? _logSubscription;

  @override
  Future<void> initializeService() async {
    inqvine.registerInLocator(Logger());
    _logSubscription = inqvine.getEventStream<InqvineLogEvent>().listen(_onLogEventReceived);
    super.initializeService();
  }

  void _onLogEventReceived(InqvineLogEvent event) {
    switch (event.level) {
      case InqvineLogLevel.info:
        _logger.i(event.message);
        break;
      case InqvineLogLevel.debug:
        _logger.d(event.message);
        break;
      case InqvineLogLevel.error:
      case InqvineLogLevel.fatal:
        _logger.e(event.message);
        break;
    }
  }

  @override
  Future<void> dispose() async {
    await _logSubscription?.cancel();
    super.dispose();
  }
}
