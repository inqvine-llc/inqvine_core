import 'package:flutter/material.dart';

extension InqvineDesignColorExtensions on Color {
  /// Returns the highest contrast Color (either black or white) based on the relative luminance of the supplied Color
  Color get calculateTextForegroundColor =>
      computeLuminance() > 0.5 ? Colors.black : Colors.white;
}
