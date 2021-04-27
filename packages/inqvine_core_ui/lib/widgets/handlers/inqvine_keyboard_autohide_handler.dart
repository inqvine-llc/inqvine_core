// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:inqvine_core_main/view_models/inqvine_view_model.dart';

/// Mimics iOS behaviour.
/// Autohides the keyboard when anywhere in the page outside of the keyboard is pressed.
class InqvineKeyboardAutohideHandler extends StatelessWidget {
  const InqvineKeyboardAutohideHandler({
    required this.controller,
    required this.child,
    Key? key,
  }) : super(key: key);

  final BaseViewModel? controller;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller?.unfocusKeyboards(),
      child: child,
    );
  }
}
