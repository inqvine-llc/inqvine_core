// Flutter imports:
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/services/predictive_back_event.dart';

// Project imports:
import '../inqvine_core_main.dart';

mixin LifecycleMixin {
  @mustCallSuper
  void beforeFirstRender() {
    'Detected lifecycle before first render'.logDebug();
  }

  @mustCallSuper
  void onFirstRender() {
    'Detected lifecycle on first render'.logDebug();
  }

  @mustCallSuper
  void onResume() {
    'Detected lifecycle resume'.logDebug();
  }

  @mustCallSuper
  void onPause() {
    'Detected lifecycle paused'.logDebug();
  }

  @mustCallSuper
  void onDetached() {
    'Detected lifecycle detached'.logDebug();
  }

  @mustCallSuper
  void onPlatformBrightnessChanged() {
    'Detected brightness changed'.logDebug();
  }

  @mustCallSuper
  void onViewPop() {
    'Detected view pop'.logDebug();
  }

  @mustCallSuper
  void onViewPushed() {
    'Detected view pushed'.logDebug();
  }

  bool onAppExit() {
    'Detected app exit'.logDebug();
    return true;
  }

  void handleCancelBackGesture() {
    'Detected cancel back gesture'.logDebug();
  }

  void handleCommitBackGesture() {
    'Detected commit back gesture'.logDebug();
  }

  bool handleStartBackGesture(PredictiveBackEvent backEvent) {
    'Detected start back gesture'.logDebug();
    return true;
  }

  void handleUpdateBackGestureProgress(PredictiveBackEvent backEvent) {
    'Detected update back gesture progress'.logDebug();
  }

  void handleViewFocusChange(ViewFocusEvent event) {
    'Detected view focus change'.logDebug();
  }
}

void useLifecycleHook(LifecycleMixin handler) {
  return use(LifecycleHook(handler));
}

class LifecycleHook extends Hook<void> {
  const LifecycleHook(this.handler);

  final LifecycleMixin handler;

  @override
  HookState<void, Hook<void>> createState() => LifecycleHookState();
}

class LifecycleHookState extends HookState<void, LifecycleHook> implements WidgetsBindingObserver {
  @override
  void initHook() {
    WidgetsBinding.instance.addObserver(this);

    hook.handler.beforeFirstRender();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      hook.handler.onFirstRender();
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      hook.handler.onResume();
    } else if (state == AppLifecycleState.paused) {
      hook.handler.onPause();
    } else if (state == AppLifecycleState.detached) {
      hook.handler.onDetached();
    }
  }

  AppLifecycleState? get currentLifecycleState => WidgetsBinding.instance.lifecycleState;

  @override
  void didChangeAccessibilityFeatures() {}

  @override
  void didChangeMetrics() {}

  @override
  void didChangePlatformBrightness() {
    hook.handler.onPlatformBrightnessChanged();
  }

  @override
  void didChangeTextScaleFactor() {}

  @override
  void didHaveMemoryPressure() {}

  @override
  Future<bool> didPopRoute() {
    hook.handler.onViewPop();
    return Future.value(false);
  }

  @override
  Future<bool> didPushRoute(String route) {
    hook.handler.onViewPushed();
    return Future.value(false);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void onDetached() {}

  @override
  void build(BuildContext context) {}

  @override
  Future<bool> didPushRouteInformation(RouteInformation routeInformation) {
    return Future<bool>.value(true);
  }

  @override
  void didChangeLocales(List<Locale>? locales) {}

  @override
  Future<AppExitResponse> didRequestAppExit() async {
    return hook.handler.onAppExit() ? AppExitResponse.exit : AppExitResponse.cancel;
  }

  @override
  void handleCancelBackGesture() {
    hook.handler.handleCancelBackGesture();
  }

  @override
  void handleCommitBackGesture() {
    hook.handler.handleCommitBackGesture();
  }

  @override
  bool handleStartBackGesture(PredictiveBackEvent backEvent) {
    return hook.handler.handleStartBackGesture(backEvent);
  }

  @override
  void handleUpdateBackGestureProgress(PredictiveBackEvent backEvent) {
    hook.handler.handleUpdateBackGestureProgress(backEvent);
  }

  @override
  void didChangeViewFocus(ViewFocusEvent event) {
    hook.handler.handleViewFocusChange(event);
  }
}
