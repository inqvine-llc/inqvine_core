// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:device_preview/device_preview.dart';

class ViewSelectionPlugin extends StatelessWidget {
  const ViewSelectionPlugin(this.views, this.onNavigationRequested);

  final Map<String, Widget Function()> views;
  final Future<void> Function(Widget widget) onNavigationRequested;

  @override
  Widget build(BuildContext context) {
    if (views.keys.isEmpty) {
      return noViewsWidget;
    }

    return ToolPanelSection(
      title: 'Views',
      children: <Widget>[
        for (final String key in views.keys)
          ListTile(
            title: Text(key),
            onTap: () => onNavigationRequested(views[key]!()),
          )
      ],
    );
  }

  Widget get noViewsWidget => Center(
        child: Text('No views found'),
      );
}
