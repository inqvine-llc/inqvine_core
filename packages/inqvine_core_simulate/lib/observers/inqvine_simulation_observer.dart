import 'package:flutter/material.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';
import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';

class InqvineSimulationObserver extends NavigatorObserver {
  InqvineSimulationObserver({
    required this.routes,
  });

  final List<SimulatableGoRoute> routes;

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);

    if (!InqvineSimulatorHandler.instance.isEnabled) {
      return;
    }

    // //* Load the correct mock actions if required
    final bool hasSimRoute = routes.any((SimulatableGoRoute element) => element.route.path == route.settings.name);
    if (!hasSimRoute) {
      'Failed to find simulated route for ${route.settings.name}'.logError();
      return;
    }

    InqvineSimulatorHandler.instance.currentRoute = routes.firstWhere((SimulatableGoRoute element) => element.route.path == route.settings.name);
    'Set current route to ${InqvineSimulatorHandler.instance.currentRoute?.route.path}'.logInfo();

    FakeActionPlugin.fakeActionController.sink.add(null);
  }
}
