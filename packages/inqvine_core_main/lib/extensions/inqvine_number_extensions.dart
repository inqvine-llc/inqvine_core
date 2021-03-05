import 'package:flutter/material.dart';

extension InqvineIntExtensions on int {
  int get getRemainderInchesFromInches {
    return this.remainder(12);
  }

  int get getInchesFromFeet {
    return this * 12;
  }

  int get getTruncateFeetFromInches {
    return (this / 12).truncate();
  }

  double get getFeetFromInches {
    return (this / 12);
  }

  double get getMetersFromInches {
    return this / (3.2808 * 12);
  }

  double get getMetersFromFeet {
    return this / (3.2808);
  }

  String get getMetersAsString {
    final double meters = getMetersFromInches;
    return "(${meters.toStringAsFixed(2)})";
  }

  String get getHeightFeetInchFromFeetDecimalAsString {
    final int feet = getTruncateFeetFromInches;
    final int inches = getRemainderInchesFromInches;
    final String returnString = "$feet ' $inches";
    return returnString;
  }

  String get getHeightFullAsString {
    final String feet = getHeightFeetInchFromFeetDecimalAsString;
    final String meters = getMetersAsString;
    final String returnString = '$feet $meters';
    return returnString;
  }
}
