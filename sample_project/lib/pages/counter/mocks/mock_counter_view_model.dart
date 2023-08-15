import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sample_project/pages/counter/view_models/counter_view_model.dart';

class MockCounterViewModel extends Mock
    implements CounterViewModel, SimulationActionable {
  MockCounterViewModel._privateConstructor();
  static final MockCounterViewModel _instance =
      MockCounterViewModel._privateConstructor();
  static MockCounterViewModel get instance => _instance;

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
