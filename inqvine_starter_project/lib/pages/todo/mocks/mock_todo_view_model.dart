import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';
import 'package:inqvine_starter_project/pages/todo/view_models/todo_view_model.dart';
import 'package:mocktail/mocktail.dart';

class MockToDoViewModel extends Mock implements ToDoViewModel, SimulationActionable {
  MockToDoViewModel._privateConstructor();
  static final MockToDoViewModel _instance = MockToDoViewModel._privateConstructor();
  static MockToDoViewModel get instance => _instance;

  @override
  Map<String, Function> get actions => <String, Function>{
        'Clear list': () {
          notifyListeners();
        }
      };
}
