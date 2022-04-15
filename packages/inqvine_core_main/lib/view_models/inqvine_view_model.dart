// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../inqvine_core_main.dart';

/// Registers a class extending `BaseViewModel` inside of the locator.
/// This can be called inside any view extending `HookWidget`, causing lifecycle events to be pushed to the view model.
///
/// Note: A view model can only be registered once.
/// If a new instance of a page is made, the same view model will be used.
T useViewModel<T extends BaseViewModel>(WidgetRef ref, T Function() buildModel) {
  final bool hasOverridenViewModel = GetIt.instance.isRegistered<T>();
  T model;

  if (hasOverridenViewModel) {
    model = inqvine.getFromLocator<T>();
  } else {
    model = buildModel();
    GetIt.instance.registerSingleton(model);
  }

  useLifecycleHook(model);
  ref.watch(ChangeNotifierProvider<T>((_) => model));

  return model;
}

abstract class BaseViewModel extends ChangeNotifier with LifecycleMixin {
  /// A default `GlobalKey<ScaffoldState>` which can be passed to your widgets to perform generic actions
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  /// Show any widget as an alert dialog.
  /// This is a helper, and any customisation of the barrier should mean making your own.
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

  /// Unfocuses the current focus node, if available
  void unfocusKeyboards() {
    final FocusNode focusNode = Focus.of(inqvine.context);
    if (focusNode.hasFocus) {
      focusNode.unfocus();
    }
  }

  /// Checks if your widget is currently busy.
  /// This is triggered automatically by any call to `handleAction`
  bool get isBusy => _isBusy;
  bool _isBusy = false;

  /// Force the state of the busy property
  /// Useful when wanting to manually control the busy state of a page
  set isBusy(bool busy) {
    _isBusy = busy;
    notifyListeners();
  }

  /// When in epochSeconds the page was rendered.
  int get renderTimestamp => _renderTimestamp;
  int _renderTimestamp = -1;

  bool _hasRendered = false;
  bool get hasRendered => _hasRendered;
  set hasRendered(bool render) {
    _hasRendered = render;
    notifyListeners();
  }

  /// The latest exception to have been thrown by `handleAction`.
  /// Useful for when wanting to customise a page based on an error.
  ///
  /// This property is removed automatically on the next `firstRender` of a page.
  dynamic get currentException => _currentException;
  dynamic _currentException;

  /// Manually set an exception on a page, regardless of the result of `handleAction`
  set currentException(dynamic newError) {
    _currentException = newError;
    notifyListeners();
  }

  /// Whether the current page has an exception or not
  bool get hasException => _currentException != null;

  /// Called when a page is first rendered.
  /// This is skipped on rebuilds and will only be called once be page.
  ///
  /// If a new instance of the page is pushed onto the navigation state. Then this will be called again.
  @mustCallSuper
  @override
  void onFirstRender() {
    super.onFirstRender();
    currentException = null;
    _renderTimestamp = DateTime.now().asSecondsEpoch;
  }

  /// Perform a future action, catching any exceptions which may occur.
  /// This also sets a `isBusy` flag while the action is being performed.
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
      if (onError != null) {
        onError(ex);
      }

      currentException = ex;
      rethrow;
    } finally {
      if (!skipBusyState) {
        isBusy = false;
      }
    }
  }

  /// Force a rebuild of the current page.
  void forceRebuild() => notifyListeners();
}
