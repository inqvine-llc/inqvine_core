import '../inqvine_core.dart';

class InqvineLoggerService extends InqvineServiceBase {
  InqvineLoggerService._privateConstructor();
  static final InqvineLoggerService _instance = InqvineLoggerService._privateConstructor();
  static InqvineLoggerService get instance => _instance;
}
