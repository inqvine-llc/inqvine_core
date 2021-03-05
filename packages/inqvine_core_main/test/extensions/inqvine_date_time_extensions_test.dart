import 'package:flutter_test/flutter_test.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';

void main() {
  final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(256);

  test('A date time can be converted to seconds since epoch', () => expect(dateTime.asSecondsEpoch, equals(256000)));
  test('A date time can be converted to a hhmmadoMMMMyyyy format', () => expect(dateTime.hhmmadoMMMMyyyy, equals('12:00 AM - 1st January 1970')));
  test('A date time can be converted to a hhmma format', () => expect(dateTime.hhmma, equals('12:00 AM')));
  test('A date time can be converted to a ddMMyyyy format', () => expect(dateTime.ddMMyyyy, equals('01/01/1970')));
}
