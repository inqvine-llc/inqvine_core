// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:device_preview/device_preview.dart';
import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';

class ViewSelectionPlugin extends StatelessWidget {
  const ViewSelectionPlugin({
    required this.simulatedRoutes,
    required this.router,
    super.key,
  });

  final List<SimulatableGoRoute> simulatedRoutes;
  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    if (simulatedRoutes.isEmpty) {
      return noViewsWidget;
    }

    return ToolPanelSection(
      title: 'Views',
      children: <Widget>[
        for (final SimulatableGoRoute simulatedRoute in simulatedRoutes)
          ListTile(
            title: Text(simulatedRoute.name),
            onTap: () => router.go(simulatedRoute.route.path),
          )
      ],
    );
  }

  Widget get noViewsWidget => const Center(
        child: Text('No views found'),
      );
}
