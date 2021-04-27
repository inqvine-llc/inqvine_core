// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../constants/inqvine_design_constants.dart';

class InqvineEnabledHandler extends StatelessWidget {
  const InqvineEnabledHandler({
    required this.isBusy,
    required this.child,
  });

  final Widget child;
  final bool isBusy;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: !isBusy ? inqvineOpacityEnabled : inqvineOpacityDisabled,
      duration: inqvineBasicAnimationDuration,
      child: IgnorePointer(
        ignoring: isBusy,
        child: child,
      ),
    );
  }
}
