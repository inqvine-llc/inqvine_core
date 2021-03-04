import 'package:flutter_test/flutter_test.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';

void main() {
  final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(256);
  final int seconds = dateTime.asSecondsEpoch;

  test('A date time can be converted to seconds since epoch', () => expect(seconds, equals(256000)));
}
