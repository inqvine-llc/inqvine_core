// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:expandable/expandable.dart';

class InqvineConditionalAutoHide extends StatefulWidget {
  const InqvineConditionalAutoHide({
    required this.child,
    this.isShown = true,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final bool isShown;

  @override
  _InqvineConditionalAutoHideState createState() => _InqvineConditionalAutoHideState();
}

class _InqvineConditionalAutoHideState extends State<InqvineConditionalAutoHide> {
  late ExpandableController expansionController;

  @override
  void initState() {
    expansionController = ExpandableController(initialExpanded: widget.isShown);
    super.initState();
  }

  void checkExpansionChange() {
    if (!mounted) {
      return;
    }

    final bool requiresExpansion = widget.isShown && !expansionController.expanded;
    final bool requiresCollapse = !widget.isShown && expansionController.expanded;

    if (requiresExpansion || requiresCollapse) {
      expansionController.toggle();
    }
  }

  @override
  void didUpdateWidget(covariant InqvineConditionalAutoHide oldWidget) {
    checkExpansionChange();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Expandable(
      controller: expansionController,
      collapsed: Container(),
      expanded: widget.child,
    );
  }
}
