import 'package:flutter/material.dart';

extension InqvineDesignColorExtensions on Color {
  Color get calculateTextForegroundColor => computeLuminance() > 0.5 ? Colors.black : Colors.white;
}

extension InqvineDesignDoubleExtensions on double {
  BorderRadius get asBorderRadiusCircular => BorderRadius.circular(this);
  Widget get asHeightWidth => SizedBox(height: this);
  Widget get asWidthWidth => SizedBox(height: this);
}
