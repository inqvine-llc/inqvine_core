import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';

import '../inqvine_core_main.dart';

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
  final EventBus _eventBus = EventBus();

  void setNavigationKey(GlobalKey<NavigatorState> navigatorKey) => _currentNavigatorKey = navigatorKey;

  void publishEvent<T>(T event) => _eventBus.fire(event);

  Stream<T> getEventStream<T>() => _eventBus.on<T>();

  Future<void> resetLocator() => _locator.reset();

  bool isRegisteredInLocator<T extends Object>() {
    return _locator.isRegistered<T>();
  }

  T getFromLocator<T extends Object>() {
    return _locator.get<T>();
  }

  void registerInLocator<T extends Object>(T object) => _locator.registerSingleton<T>(object);

  Future<void> registerService<T extends InqvineServiceBase>(T service) async {
    'Registering a new service: $service'.logDebug();
    _locator.registerSingleton<T>(service);
    await service.initializeService();
  }

  /// Register DeviceInfoPlus information dependent on platform
  /// See: {@https://pub.dev/packages/device_info_plus}
  Future<void> _registerDeviceInfo() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    switch (Platform.operatingSystem) {
      case "windows":
        registerInLocator<WindowsDeviceInfo>(await deviceInfoPlugin.windowsInfo);
        break;
      case "linux":
        registerInLocator<LinuxDeviceInfo>(await deviceInfoPlugin.linuxInfo);
        break;
      case "macos":
        registerInLocator<MacOsDeviceInfo>(await deviceInfoPlugin.macOsInfo);
        break;
      case "ios":
        registerInLocator<IosDeviceInfo>(await deviceInfoPlugin.iosInfo);
        break;
      case "android":
        registerInLocator<AndroidDeviceInfo>(await deviceInfoPlugin.androidInfo);
        break;
    }
  }

  Future<void> registerInqvineServices() async {
    'Registering Inqvine services'.logDebug();
    await registerService(InqvineLoggerService.instance);

    await _registerDeviceInfo();
  }

  //* External Service Getters
  WindowsDeviceInfo get windowsDeviceInfo => getFromLocator<WindowsDeviceInfo>();
  LinuxDeviceInfo get linuxDeviceInfo => getFromLocator<LinuxDeviceInfo>();
  MacOsDeviceInfo get macOsDeviceInfo => getFromLocator<MacOsDeviceInfo>();
  IosDeviceInfo get iosDeviceInfo => getFromLocator<IosDeviceInfo>();
  AndroidDeviceInfo get androidDeviceInfo => getFromLocator<AndroidDeviceInfo>();

  //* Internal Service Getters
  InqvineLoggerService get logger => getFromLocator<InqvineLoggerService>();
}
