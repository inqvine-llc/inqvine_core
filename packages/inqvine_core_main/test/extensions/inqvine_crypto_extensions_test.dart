import 'package:flutter_test/flutter_test.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';

void main() {
  final String testStr = 'abc';
  final List<int> toUtf8 = testStr.toUtf8;
  final String toSha1 = testStr.toSha1;

  test('Can convert a test String to UTF8', () => expect(toUtf8, equals(<int>[97, 98, 99])));
  test('A date time can be converted to a hhmmadoMMMMyyyy format', () => expect(toSha1, equals('a9993e364706816aba3e25717850c26c9cd0d89d')));
}
