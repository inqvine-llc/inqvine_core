import 'package:flutter/material.dart';

extension InqvineDesignColorExtensions on Color {
  Color get calculateTextForegroundColor => computeLuminance() > 0.5 ? Colors.black : Colors.white;
}
