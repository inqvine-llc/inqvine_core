import 'package:flutter/material.dart';

import 'package:inqvine_core_main/inqvine_core_main.dart';
import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';

import '../view_models/todo_view_model.dart';
import '../mocks/mock_todo_view_model.dart';

class TodoView extends HookConsumerWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TodoViewModel? viewModel;
    if (!InqvineSimulatorHandler.instance.isEnabled) {
      viewModel = useViewModel(ref, () => TodoViewModel());
    }

    return InqvineSimulatable<TodoViewModel>(
      fakeModel: MockTodoViewModel.instance,
      realModel: viewModel,
      builder: buildView,
    );
  }

  Widget buildView(TodoViewModel model, BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Todo'),
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
