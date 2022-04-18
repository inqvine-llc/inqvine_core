// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:inqvine_core_main/inqvine_core_main.dart';
import 'package:flutter/material.dart';
import 'package:inqvine_core_simulate/handlers/inqvine_simulator_handler.dart';

class InqvineSimulatable<T> extends StatefulWidget {
  const InqvineSimulatable({
    required this.fakeModel,
    required this.realModel,
    required this.builder,
    Key? key,
  }) : super(key: key);

  final T fakeModel;
  final T? realModel;

  final Widget Function(T model, BuildContext context) builder;

  static final StreamController<void> inqvineSimulatableController = StreamController<void>.broadcast();

  static void forceRebuild() {
    inqvineSimulatableController.sink.add(null);
  }

  @override
  _InqvineSimulatableState<T> createState() => _InqvineSimulatableState<T>();
}

class _InqvineSimulatableState<T> extends State<InqvineSimulatable<T>> {
  StreamSubscription<void>? forceRebuildSubscription;

  @override
  void initState() {
    initializeListeners();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void initializeListeners() {
    forceRebuildSubscription = InqvineSimulatable.inqvineSimulatableController.stream.listen(onRebuildRequested);
  }

  void onRebuildRequested(dynamic event) {
    if (!mounted) {
      return;
    }

    'Rebuilding views for mocks'.logInfo();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final bool isSimulated = InqvineSimulatorHandler.instance.isEnabled;
    T? model = widget.fakeModel;
    if (!isSimulated) {
      model = widget.realModel;
    }

    if (model == null) {
      throw Exception('Failed to load model');
    }

    return widget.builder(model, context);
  }
}
