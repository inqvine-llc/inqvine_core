// Flutter imports:
import 'package:flutter/material.dart';

extension InqvineDesignColorExtensions on Color {
  /// Returns the highest contrast Color (either black or white) based on the relative luminance of the supplied Color
  Color get calculateTextForegroundColor =>
      computeLuminance() > 0.5 ? Colors.black : Colors.white;
}

extension InqvineDesignDoubleExtensions on double {
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
