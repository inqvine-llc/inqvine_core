// Project imports:
import '../inqvine_core_main.dart';

const String _hhmmadoMMMMyyyyJiffyPattern = 'hh:mm a - do MMMM yyyy';
const String _hhmmaJiffyPatternTimeOnly = 'hh:mm a';
const String _ddMMyyyyJiffyPatternDateOnly = 'dd/MM/yyyy';

extension InqvineDateTimeExtensions on DateTime {
  /// Converts the given [DateTime] object to the number of seconds since epoch
  int get asSecondsEpoch => (millisecondsSinceEpoch / 1000).floor();

  /// Converts the given [DateTime] object to a formatted variant.
  /// Example: 12:00pm - Fri the 5th of March
  String get hhmmadoMMMMyyyy => Jiffy(this).format(_hhmmadoMMMMyyyyJiffyPattern);

  /// Converts the given [DateTime] object to a formatted variant.
  /// Example: 12:00pm
  String get hhmma => Jiffy(this).format(_hhmmaJiffyPatternTimeOnly);

  /// Converts the given [DateTime] object to a formatted variant.
  /// Example: 05/03/2020
  String get ddMMyyyy => Jiffy(this).format(_ddMMyyyyJiffyPatternDateOnly);

  /// Gets the number of years between the supplied [DateTime] and the current time
  num get diffYearsFromCurrent {
    return Jiffy(DateTime.now()).diff(this, Units.YEAR);
  }

  /// Gets the number of months between the supplied [DateTime] and the current time
  num get diffMonthsFromCurrent {
    return Jiffy(DateTime.now()).diff(this, Units.MONTH);
  }

  /// Gets a unit difference between the supplied [DateTime] and the current time
  num diffFromCurrent(Units units) {
    return Jiffy(DateTime.now()).diff(this, units);
  }

  /// Converts the given [DateTime] to a [Jiffy] object
  Jiffy get toJiffy => Jiffy(this);
}
