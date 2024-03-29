// Project imports:
import '../inqvine_core_main.dart';

const String _hhmmadoMMMMyyyyJiffyPattern = 'hh:mm a - do MMMM yyyy';
const String _hhmmaJiffyPatternTimeOnly = 'hh:mm a';
const String _ddMMyyyyJiffyPatternDateOnly = 'dd/MM/yyyy';

extension InqvineDateTimeExtensions on DateTime {
  /// Converts the given [DateTime] object to the number of seconds since epoch
  int get asSecondsEpoch => this.millisecondsSinceEpoch ~/ 1000;

  /// Converts the given [DateTime] object to a formatted variant.
  /// Example: 12:00pm - Fri the 5th of March
  String get hhmmadoMMMMyyyy => Jiffy.parseFromDateTime(this).format(pattern: _hhmmadoMMMMyyyyJiffyPattern);

  /// Converts the given [DateTime] object to a formatted variant.
  /// Example: 12:00pm
  String get hhmma => Jiffy.parseFromDateTime(this).format(pattern: _hhmmaJiffyPatternTimeOnly);

  /// Converts the given [DateTime] object to a formatted variant.
  /// Example: 05/03/2020
  String get ddMMyyyy => Jiffy.parseFromDateTime(this).format(pattern: _ddMMyyyyJiffyPatternDateOnly);

  /// Gets the number of years between the supplied [DateTime] and the current time
  num get diffYearsFromCurrent {
    return Jiffy.parseFromDateTime(DateTime.now()).diff(Jiffy.parseFromDateTime(this), unit: Unit.year);
  }

  /// Gets the number of months between the supplied [DateTime] and the current time
  num get diffMonthsFromCurrent {
    return Jiffy.parseFromDateTime(DateTime.now()).diff(Jiffy.parseFromDateTime(this), unit: Unit.month);
  }

  /// Gets a unit difference between the supplied [DateTime] and the current time
  num diffFromCurrent(Unit unit) {
    return Jiffy.parseFromDateTime(DateTime.now()).diff(Jiffy.parseFromDateTime(this), unit: unit);
  }

  /// Converts the given [DateTime] to a [Jiffy] object
  Jiffy get toJiffy => Jiffy.parseFromDateTime(this);
}
