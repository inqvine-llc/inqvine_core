import 'package:flutter/cupertino.dart';

import '../inqvine_core_main.dart';

/// Holds all Inqvine Core services through a singleton.
/// These services must be initialized before they can be accessed.
/// This can be done by calling [InqvineServices.instance.register()] in your main.dart file.
class InqvineServices {
  InqvineServices._privateConstructor();
  static final InqvineServices _instance = InqvineServices._privateConstructor();
  static InqvineServices get instance => _instance;

  /// The current navigator key, if set.
  GlobalKey<NavigatorState>? get currentNavigatorKey => _currentNavigatorKey;
  GlobalKey<NavigatorState>? _currentNavigatorKey;

  /// The current context if available.
  /// To use this, pass a navigator key to [InqvineServices].
  ///
  /// `inqvine.setNavigationKey(key)`
  BuildContext get context {
    if (currentNavigatorKey == null || currentNavigatorKey?.currentState == null) {
      throw Exception('');
    }

    return currentNavigatorKey!.currentState!.context;
  }

  final GetIt _locator = GetIt.instance;
  final EventBus _eventBus = EventBus();

  /// Set a new navigator key for the application.
  void setNavigationKey(GlobalKey<NavigatorState> navigatorKey) => _currentNavigatorKey = navigatorKey;

  /// Publish an object across the system event bus.
  /// This can then be picked up using `inqvine.getEventStream`
  void publishEvent<T>(T event) => _eventBus.fire(event);

  /// Listen to an event bus stream.
  /// Publish new events with `inqvine.publishEvent`.
  Stream<T> getEventStream<T>() => _eventBus.on<T>();

  /// Reset the application DI container
  Future<void> resetLocator() => _locator.reset();

  /// Check if a class is registered in the locator.
  /// Register the object later using `inqvine.registerInLocator`.
  bool isRegisteredInLocator<T extends Object>() {
    return _locator.isRegistered<T>();
  }

  /// Get an object in the system DI container.
  /// Register the object later using `inqvine.registerInLocator`.
  T getFromLocator<T extends Object>() {
    return _locator.get<T>();
  }

  /// Register an object in the system DI container.
  /// Get the object later using `inqvine.getFromLocator`.
  void registerInLocator<T extends Object>(T object) => _locator.registerSingleton<T>(object);

  /// Register an service which extends [InqvineServiceBase].
  /// `initializeService` is then called.
  Future<void> registerService<T extends InqvineServiceBase>(T service) async {
    'Registering a new service: $service'.logDebug();
    _locator.registerSingleton<T>(service);
    await service.initializeService();
  }

  /// Initialize Inqvine services, registering all common services
  Future<void> registerInqvineServices() async {
    'Registering Inqvine services'.logDebug();
    await registerService(InqvineLoggerService.instance);
  }

  //* External Service Getters

  //* Internal Service Getters
  InqvineLoggerService get logger => getFromLocator<InqvineLoggerService>();
}
