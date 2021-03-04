import 'package:flutter/cupertino.dart';

abstract class InqvineServiceBase<T> {
  bool _isServiceInitialized = false;
  bool get isServiceInitialized => _isServiceInitialized;

  @mustCallSuper
  Future<void> initializeService() async {
    _isServiceInitialized = true;
  }

  @mustCallSuper
  Future<void> dispose() async {}
}
