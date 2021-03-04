import 'package:flutter/material.dart';

extension InqvineDoubleExtensions on double {
  Widget get asHeightWidget => SizedBox(height: this);
  Widget get asWidthWidget => SizedBox(width: this);

  EdgeInsets get asPaddingAll => EdgeInsets.all(this);
  EdgeInsets get asPaddingT => EdgeInsets.only(top: this);
  EdgeInsets get asPaddingTB => EdgeInsets.only(bottom: this, top: this);
  EdgeInsets get asPaddingB => EdgeInsets.only(bottom: this);

  EdgeInsets get asPaddingLTR => EdgeInsets.only(top: this, left: this, right: this);
  EdgeInsets get asPaddingLBR => EdgeInsets.only(bottom: this, left: this, right: this);
  EdgeInsets get asPaddingLR => EdgeInsets.symmetric(horizontal: this);
  EdgeInsets get asPaddingL => EdgeInsets.only(left: this);
  EdgeInsets get asPaddingR => EdgeInsets.only(right: this);

  BorderRadius get asBorderRadiusCircular => BorderRadius.circular(this);
  Radius get asRadiusCircular => Radius.circular(this);
}

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
