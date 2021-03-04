import 'package:flutter/cupertino.dart';

import 'package:inqvine_core/inqvine_core.dart';

/// Holds all Inqvine Core services through a singleton.
/// These services must be initialized before they can be accessed.
/// This can be done by calling [InqvineServices.instance.register()] in your main.dart file.
class InqvineServices {
  InqvineServices._privateConstructor();
  static final InqvineServices _instance = InqvineServices._privateConstructor();
  static InqvineServices get instance => _instance;

  GlobalKey<NavigatorState>? _currentNavigatorKey;
  GlobalKey<NavigatorState>? get currentNavigatorKey => _currentNavigatorKey;

  BuildContext get context {
    if (currentNavigatorKey == null || currentNavigatorKey?.currentState == null) {
      throw Exception('');
    }

    return currentNavigatorKey!.currentState!.context;
  }

  final GetIt _locator = GetIt.instance;
  final InqvineEventBus _eventBus = InqvineEventBus();

  void setNavigationKey(GlobalKey<NavigatorState> navigatorKey) => _currentNavigatorKey = navigatorKey;

  void publishEvent<T>(T event) => _eventBus.fire(event);

  Stream<T> getEventStream<T>() => _eventBus.on<T>();

  bool isRegisteredInLocator<T extends Object>() {
    return _locator.isRegistered<T>();
  }

  T getFromLocator<T extends Object>() {
    return _locator.get<T>();
  }

  Future<void> registerService<T extends InqvineServiceBase>(T service) async {
    'Registering a new service: $service'.logDebug();
    _locator.registerSingleton<T>(service);
    await service.initializeService();
  }

  Future<void> registerInqvineServices() async {
    'Registering Inqvine services'.logDebug();
    await registerService(InqvineLoggerService.instance);
  }

  //* Internal Service Getters
  InqvineLoggerService get logger => getFromLocator<InqvineLoggerService>();
}
