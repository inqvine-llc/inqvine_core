/*
import 'package:jiffy/jiffy.dart';

const String _extendedJiffyPattern = 'hh:mma - do MMMM yyyy';
const String _extendedJiffyPatternTimeOnly = 'hh:mm a';
const String _extendedJiffyPatternDateOnly = 'dd/MM/yyyy';

extension IntTimeExtensions on int {
  String get formatAsEpochSecondsExtended {
    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this * 1000);
    final Jiffy jiffy = Jiffy(dateTime);
    return jiffy.format(_extendedJiffyPattern);
  }

  String get formatAsEpochSecondsExtendedTimeOnly {
    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this * 1000);
    final Jiffy jiffy = Jiffy(dateTime);
    return jiffy.format(_extendedJiffyPatternTimeOnly);
  }

  String get formatAsEpochSecondsExtendedDateOnly {
    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this * 1000);
    final Jiffy jiffy = Jiffy(dateTime);
    return jiffy.format(_extendedJiffyPatternDateOnly);
  }

  int get formatAsYearsFromCurrent {
    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this * 1000);
    final DateTime current = DateTime.now();
    final Jiffy jiffy = Jiffy(current);
    return jiffy.diff(dateTime, Units.YEAR);
  }

  int get formatAsMonthsFromCurrent {
    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this * 1000);
    final DateTime current = DateTime.now();
    final Jiffy jiffy = Jiffy(current);
    return jiffy.diff(dateTime, Units.MONTH).truncate();
  }
}

extension DateTimeExtensions on DateTime {
  int toEpochSeconds() {
    return (toUtc().millisecondsSinceEpoch / 1000).floor();
  }
}
*/