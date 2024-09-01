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
    this.actions,
    this.backButtonDispatcher,
    this.checkerboardOffscreenLayers = false,
    this.checkerboardRasterCacheImages = false,
    this.color,
    this.darkTheme,
    this.debugShowCheckedModeBanner = true,
    this.debugShowMaterialGrid = false,
    this.highContrastDarkTheme,
    this.highContrastTheme,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.localizationsDelegates,
    this.onGenerateTitle,
    this.restorationScopeId,
    this.routeInformationProvider,
    this.scaffoldMessengerKey,
    this.scrollBehavior,
    this.shortcuts,
    this.showPerformanceOverlay = false,
    this.showSemanticsDebugger = false,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.theme,
    this.themeMode = ThemeMode.system,
    super.key,
  });

  final GoRouter router;
  final List<SimulatableGoRoute> routes;

  final String title;
  final Locale? locale;
  final Widget Function(BuildContext, Widget?)? builder;

  //* Material components
  final Map<Type, Action<Intent>>? actions;
  final BackButtonDispatcher? backButtonDispatcher;
  final bool checkerboardOffscreenLayers;
  final bool checkerboardRasterCacheImages;
  final Color? color;
  final ThemeData? darkTheme;
  final bool debugShowCheckedModeBanner;
  final bool debugShowMaterialGrid;
  final ThemeData? highContrastDarkTheme;
  final ThemeData? highContrastTheme;
  final Locale? Function(List<Locale>?, Iterable<Locale>)?
      localeListResolutionCallback;
  final Locale? Function(Locale?, Iterable<Locale>)? localeResolutionCallback;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final String Function(BuildContext)? onGenerateTitle;
  final String? restorationScopeId;
  final RouteInformationProvider? routeInformationProvider;
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  final ScrollBehavior? scrollBehavior;
  final Map<ShortcutActivator, Intent>? shortcuts;
  final bool showPerformanceOverlay;
  final bool showSemanticsDebugger;
  final Iterable<Locale> supportedLocales;
  final ThemeData? theme;
  final ThemeMode? themeMode;

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
          locale: InqvineSimulatorHandler.instance.isEnabled
              ? DevicePreview.locale(context)
              : locale,
          builder: InqvineSimulatorHandler.instance.isEnabled
              ? DevicePreview.appBuilder
              : builder,
          routerConfig: router,
          actions: actions,
          backButtonDispatcher: backButtonDispatcher,
          checkerboardOffscreenLayers: checkerboardOffscreenLayers,
          checkerboardRasterCacheImages: checkerboardRasterCacheImages,
          color: color,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: debugShowCheckedModeBanner,
          debugShowMaterialGrid: debugShowMaterialGrid,
          highContrastDarkTheme: highContrastDarkTheme,
          highContrastTheme: highContrastTheme,
          localeListResolutionCallback: localeListResolutionCallback,
          localeResolutionCallback: localeResolutionCallback,
          localizationsDelegates: localizationsDelegates,
          onGenerateTitle: onGenerateTitle,
          restorationScopeId: restorationScopeId,
          scaffoldMessengerKey: scaffoldMessengerKey,
          scrollBehavior: scrollBehavior,
          shortcuts: shortcuts,
          showPerformanceOverlay: showPerformanceOverlay,
          showSemanticsDebugger: showSemanticsDebugger,
          supportedLocales: supportedLocales,
          theme: theme,
          themeMode: themeMode,
          useInheritedMediaQuery: InqvineSimulatorHandler.instance.isEnabled,
        ),
      ),
    );
  }
}
