import 'package:flutter/material.dart';

import 'package:inqvine_core_main/inqvine_core_main.dart';
import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';

import '..//view_models/todo_view_model.dart';
import '../mocks/mock_todo_view_model.dart';

class ToDoView extends HookConsumerWidget {
  const ToDoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ToDoViewModel? viewModel;
    if (InqvineSimulatorHandler.instance.isEnabled) {
      viewModel = useViewModel(ref, () => ToDoViewModel());
    }

    return InqvineSimulatable<ToDoViewModel>(
      fakeModel: MockToDoViewModel.instance,
      realModel: viewModel,
      builder: buildView,
    );
  }

  Widget buildView(ToDoViewModel model, BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.pink,
    );
  }
}
