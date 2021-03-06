extension InqvineIntExtensions on int {
  /// Converts a given number of inches to feet, returns the remaining inches
  int get getRemainderInchesFromInches {
    return this.remainder(12);
  }

  /// Converts a given number of feet to inches
  int get getInchesFromFeet {
    return this * 12;
  }

  /// Converts a given number of inches to feet, returns the whole number of feet
  int get getTruncateFeetFromInches {
    return (this / 12).truncate();
  }

  /// Converts a given number of inches to feet, returns feet as a double
  double get getFeetFromInches {
    return (this / 12);
  }

  /// Converts a given number of inches to meters, returns meters as a double
  double get getMetersFromInches {
    return this / (3.2808 * 12);
  }

  /// Converts a given whole number of feet to meters, returns meters as a double
  double get getMetersFromFeet {
    return this / (3.2808);
  }

  /// Converts a given number of inches to meters, returns meters as a string to 2 decimal places
  String get getMetersFromInchesAsString {
    final double meters = getMetersFromInches;
    return "(${meters.toStringAsFixed(2)})";
  }

  /// Converts a given number of inches to feet and inches, returns the number as a string formated as "feet ' inches"
  String get getFeetInchFromFeetDecimalAsString {
    final int feet = getTruncateFeetFromInches;
    final int inches = getRemainderInchesFromInches;
    final String returnString = "$feet ' $inches";
    return returnString;
  }

  /// Converts a given number of inches to feet and inches, and meters, returns the number as a string formated as "feet'inches meters"
  String get getHeightFullAsString {
    final String feet = getFeetInchFromFeetDecimalAsString;
    final String meters = getMetersFromInchesAsString;
    final String returnString = '$feet $meters';
    return returnString;
  }
}
