import 'package:flutter/material.dart';

import '../inqvine_core.dart';

T useViewModel<T extends BaseViewModel>(T Function() buildModel) {
  final bool hasOverridenViewModel = GetIt.instance.isRegistered<T>();
  T model;

  if (hasOverridenViewModel) {
    model = inqvine.getFromLocator<T>();
  } else {
    model = buildModel();
    GetIt.instance.registerSingleton(model);
  }

  useLifecycleHook(model);
  useProvider(ChangeNotifierProvider<T>((_) => model));

  return model;
}

abstract class BaseViewModel extends ChangeNotifier with LifecycleMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> showAlertDialog(Widget widget, {bool barrierDismissible = true}) async {
    await showDialog(
      context: inqvine.context,
      useSafeArea: true,
      barrierDismissible: barrierDismissible,
      builder: (_) {
        return widget;
      },
    );
  }

  bool _isBusy = false;
  bool get isBusy => _isBusy;
  set isBusy(bool busy) {
    _isBusy = busy;
    notifyListeners();
  }

  int _renderTimestamp = -1;
  int get renderTimestamp => _renderTimestamp;
  set renderTimestamp(int timestamp) {
    _renderTimestamp = timestamp;
    notifyListeners();
  }

  bool _hasRendered = false;
  bool get hasRendered => _hasRendered;
  set hasRendered(bool render) {
    _hasRendered = render;
    notifyListeners();
  }

  dynamic _currentException;
  dynamic get currentException => _currentException;
  set currentException(dynamic newError) {
    _currentException = newError;
    notifyListeners();
  }

  bool get hasException => _currentException != null;

  @mustCallSuper
  Future<void> onExceptionOccured(dynamic exception) async {}

  @mustCallSuper
  @override
  void onFirstRender() {
    super.onFirstRender();
    currentException = null;
    renderTimestamp = DateTime.now().asSecondsEpoch;
  }

  Future<void> handleAction(
    Future<void> Function() function, {
    Function(dynamic error)? onError,
    String message = '',
    bool skipBusyState = false,
  }) async {
    currentException = null;
    if (!skipBusyState) {
      isBusy = true;
    }

    try {
      await function();
    } catch (ex) {
      onExceptionOccured(ex);
      if (onError != null) {
        onError(ex);
      }
      rethrow;
    } finally {
      if (!skipBusyState) {
        isBusy = false;
      }
    }
  }

  void notifyFromView() => notifyListeners();
}
