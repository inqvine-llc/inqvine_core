import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';
import 'package:sample_project/pages/todo/view_models/todo_view_model.dart';
import 'package:mocktail/mocktail.dart';

class MockTodoViewModel extends Mock
    implements TodoViewModel, SimulationActionable {
  MockTodoViewModel._privateConstructor();
  static final MockTodoViewModel _instance =
      MockTodoViewModel._privateConstructor();
  static MockTodoViewModel get instance => _instance;

  int _counter = 0;

  @override
  int get counter => _counter;

  @override
  void incrementCounter() {
    _counter++;
    InqvineSimulatable.forceRebuild();
  }

  @override
  Map<String, Function> get actions => <String, Function>{
        'Reset counter': () {
          _counter = 0;
          InqvineSimulatable.forceRebuild();
        }
      };
}
