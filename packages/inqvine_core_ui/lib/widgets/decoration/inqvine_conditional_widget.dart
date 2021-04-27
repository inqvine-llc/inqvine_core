// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:expandable/expandable.dart';

class InqvineConditionalExpanded extends StatefulWidget {
  const InqvineConditionalExpanded({
    required this.collapsedChild,
    required this.expandedChild,
    required this.isExpanded,
    Key? key,
  }) : super(key: key);

  final Widget collapsedChild;
  final Widget expandedChild;
  final bool isExpanded;

  @override
  _InqvineConditionalExpandedState createState() => _InqvineConditionalExpandedState();
}

class _InqvineConditionalExpandedState extends State<InqvineConditionalExpanded> {
  late ExpandableController expansionController;

  @override
  void initState() {
    expansionController = ExpandableController(initialExpanded: widget.isExpanded);
    super.initState();
  }

  void checkExpansionChange() {
    if (!mounted) {
      return;
    }

    final bool requiresExpansion = widget.isExpanded && !expansionController.expanded;
    final bool requiresCollapse = !widget.isExpanded && expansionController.expanded;

    if (requiresExpansion || requiresCollapse) {
      expansionController.toggle();
    }
  }

  @override
  void didUpdateWidget(covariant InqvineConditionalExpanded oldWidget) {
    checkExpansionChange();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Expandable(
      controller: expansionController,
      collapsed: widget.collapsedChild,
      expanded: widget.expandedChild,
    );
  }
}
