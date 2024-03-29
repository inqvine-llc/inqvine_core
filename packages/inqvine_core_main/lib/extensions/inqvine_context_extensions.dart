// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../inqvine_core_main.dart';

extension InqvineContextExtensions on BuildContext {
  //? Contains a selection of commonly used MediaQueryData functions to reduce visual clutter in code

  Widget get safeBottomPaddingWidget =>
      MediaQuery.of(this).padding.bottom.asHeightWidget;
  Widget get safeTopPaddingWidget =>
      MediaQuery.of(this).padding.top.asHeightWidget;

  bool get accessibleNavigation => MediaQuery.of(this).accessibleNavigation;
  bool get alwaysUser24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;
  bool get boldText => MediaQuery.of(this).boldText;
  bool get isDarkMode =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;

  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;
  bool get disabledAnimations => MediaQuery.of(this).disableAnimations;
  bool get highContrast => MediaQuery.of(this).highContrast;
  bool get invertColors => MediaQuery.of(this).invertColors;
  EdgeInsets get devicePadding => MediaQuery.of(this).padding;
  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;
  Size get screenSize => MediaQuery.of(this).size;
  EdgeInsets get systemGestureInsets => MediaQuery.of(this).systemGestureInsets;
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;

  /// Returns the current ThemeData of this BuildContext
  ThemeData get theme => Theme.of(this);

  /// Returns the current TextTheme data of this BuildContext
  TextTheme get textTheme => Theme.of(this).textTheme;
}
