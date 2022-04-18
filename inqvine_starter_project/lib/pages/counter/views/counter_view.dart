import 'package:flutter/material.dart';

import 'package:inqvine_core_main/inqvine_core_main.dart';
import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';

import '../view_models/counter_view_model.dart';
import '../mocks/mock_counter_view_model.dart';

class CounterView extends HookConsumerWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CounterViewModel? viewModel;
    if (!InqvineSimulatorHandler.instance.isEnabled) {
      viewModel = useViewModel(ref, () => CounterViewModel());
    }

    return InqvineSimulatable<CounterViewModel>(
      fakeModel: MockCounterViewModel.instance,
      realModel: viewModel,
      builder: buildView,
    );
  }

  Widget buildView(CounterViewModel model, BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${model.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: model.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
