import 'package:flutter/material.dart';

extension InqvineDesignColorExtensions on Color {
  Color get calculateTextForegroundColor => computeLuminance() > 0.5 ? Colors.black : Colors.white;
}

extension InqvineDesignDoubleExtensions on double {
  EdgeInsets get asPaddingAll => EdgeInsets.all(this);
  EdgeInsets get asPaddingT => EdgeInsets.only(top: this);
  EdgeInsets get asPaddingTB => EdgeInsets.only(bottom: this, top: this);
  EdgeInsets get asPaddingB => EdgeInsets.only(bottom: this);

  EdgeInsets get asPaddingLTR => EdgeInsets.only(top: this, left: this, right: this);
  EdgeInsets get asPaddingLBR => EdgeInsets.only(bottom: this, left: this, right: this);
  EdgeInsets get asPaddingLR => EdgeInsets.symmetric(horizontal: this);
  EdgeInsets get asPaddingL => EdgeInsets.only(left: this);
  EdgeInsets get asPaddingR => EdgeInsets.only(right: this);

  Radius get asRadiusCircular => Radius.circular(this);
  BorderRadius get asBorderRadiusCircular => BorderRadius.circular(this);

  Widget get asHeightWidget => SizedBox(height: this);
  Widget get asWidthWidget => SizedBox(height: this);
}
