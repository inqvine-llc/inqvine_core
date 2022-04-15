// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:inqvine_core_main/inqvine_core_main.dart';

// Project imports:
import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';

class InqvineSimulatable<T> extends StatefulWidget {
  const InqvineSimulatable({
    required this.fakeModel,
    required this.realModel,
    required this.builder,
    this.useFakes = false,
    Key? key,
  }) : super(key: key);

  final InqvineFake<T> fakeModel;
  final T? realModel;

  final bool useFakes;

  final Widget Function(T model, BuildContext context) builder;

  static final StreamController<void> _forceRebuildController = StreamController<void>.broadcast();

  static void forceRebuild() {
    _forceRebuildController.add(null);
  }

  @override
  _InqvineSimulatableState<T> createState() => _InqvineSimulatableState<T>();
}

class _InqvineSimulatableState<T> extends State<InqvineSimulatable<T>> {
  T? currentFakeModel;

  StreamSubscription<FakeModelActionEvent>? modelActionSubscription;
  StreamSubscription<FakeModelChangeEvent>? modelChangeSubscription;
  StreamSubscription<void>? forceRebuildSubscription;

  @override
  void initState() {
    updateFakes();
    initializeListeners();
    super.initState();
  }

  @override
  void dispose() {
    modelActionSubscription?.cancel();
    modelChangeSubscription?.cancel();
    super.dispose();
  }

  void initializeListeners() {
    modelActionSubscription = inqvine.getEventStream<FakeModelActionEvent>().listen(onFakeActionRequested);
    modelChangeSubscription = inqvine.getEventStream<FakeModelChangeEvent>().listen(onFakeChangeRequested);

    forceRebuildSubscription = InqvineSimulatable._forceRebuildController.stream.listen((_) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  void updateFakes() {
    if (!widget.useFakes) {
      return;
    }

    InqvineSimulatorHandler.instance.attemptRegisterFakesOnBuild(T, widget.fakeModel);
    if (InqvineSimulatorHandler.instance.currentPageFakes.containsKey(T)) {
      currentFakeModel = InqvineSimulatorHandler.instance.currentPageFakes[T]!.model;
    }
  }

  void onFakeActionRequested(FakeModelActionEvent event) {
    if (!mounted) {
      return;
    }

    updateFakes();
    setState(() {});
  }

  void onFakeChangeRequested(FakeModelChangeEvent event) {
    if (!mounted) {
      return;
    }

    updateFakes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    T? model = currentFakeModel;
    if (model == null && widget.realModel != null) {
      model = widget.realModel;
    }

    assert(model != null, 'A model must be provided to build this widget');
    return widget.builder(
      model!,
      context,
    );
  }
}
