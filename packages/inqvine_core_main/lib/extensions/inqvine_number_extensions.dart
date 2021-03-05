import 'package:flutter/material.dart';

extension InqvineDoubleExtensions on double {
  /// Returns a SizedBox with height of given size
  Widget get asHeightWidget => SizedBox(height: this);

  /// Returns a SizedBox with width of given size
  Widget get asWidthWidget => SizedBox(width: this);

  /// Returns EdgeInsets of given size on all sides
  EdgeInsets get asPaddingAll => EdgeInsets.all(this);

  /// Returns EdgeInsets of given size along the top edge only
  EdgeInsets get asPaddingT => EdgeInsets.only(top: this);

  /// Returns EdgeInsets of given size along the top, and bottom edges only
  EdgeInsets get asPaddingTB => EdgeInsets.only(bottom: this, top: this);

  /// Returns EdgeInsets of given size along the bottom edge only
  EdgeInsets get asPaddingB => EdgeInsets.only(bottom: this);

  /// Returns EdgeInsets of given size along the top, bottom, and left edges only
  EdgeInsets get asPaddingLTR =>
      EdgeInsets.only(top: this, left: this, right: this);

  /// Returns EdgeInsets of given size along the bottom, left, and right edges only
  EdgeInsets get asPaddingLBR =>
      EdgeInsets.only(bottom: this, left: this, right: this);

  /// Returns EdgeInsets of given size along the left, and right edges only
  EdgeInsets get asPaddingLR => EdgeInsets.symmetric(horizontal: this);

  /// Returns EdgeInsets of given size along the left edge only
  EdgeInsets get asPaddingL => EdgeInsets.only(left: this);

  /// Returns EdgeInsets of given size along the right edge only
  EdgeInsets get asPaddingR => EdgeInsets.only(right: this);

  /// Returns a BorderRadius of given size
  BorderRadius get asBorderRadiusCircular => BorderRadius.circular(this);

  /// Returns a Radius of given size
  Radius get asRadiusCircular => Radius.circular(this);
}

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
