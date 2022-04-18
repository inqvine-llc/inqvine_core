import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';
import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';

class InqvineSimulatableApp extends StatelessWidget {
  const InqvineSimulatableApp({
    required this.router,
    required this.routes,
    this.title = '',
    this.locale,
    this.builder,
    Key? key,
  }) : super(key: key);

  final GoRouter router;
  final List<SimulatableGoRoute> routes;

  final String title;
  final Locale? locale;
  final Widget Function(BuildContext, Widget?)? builder;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: DevicePreview(
        enabled: InqvineSimulatorHandler.instance.isEnabled,
        tools: <Widget>[
          ...DevicePreview.defaultTools,
          const FakeActionPlugin(),
          ViewSelectionPlugin(
            router: router,
            simulatedRoutes: routes,
          ),
        ],
        builder: (_) => MaterialApp.router(
          title: title,
          useInheritedMediaQuery: InqvineSimulatorHandler.instance.isEnabled,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          locale: InqvineSimulatorHandler.instance.isEnabled ? DevicePreview.locale(context) : locale,
          builder: InqvineSimulatorHandler.instance.isEnabled ? DevicePreview.appBuilder : builder,
        ),
      ),
    );
  }
}
