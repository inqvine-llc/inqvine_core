// Package imports:
import 'package:inqvine_core_main/inqvine_core_main.dart';

// Project imports:
import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';

class InqvineSimulatorHandler {
  InqvineSimulatorHandler._privateConstructor();
  static final InqvineSimulatorHandler _instance = InqvineSimulatorHandler._privateConstructor();
  static InqvineSimulatorHandler get instance => _instance;

  SimulatableGoRoute? currentRoute;
  bool isEnabled = false;

  void onRouteSelected(SimulatableGoRoute route, Object model) {
    currentRoute = route;
    FakeActionPlugin.fakeActionController.sink.add(null);
  }

  void onActionSelected(String action) {
    if (currentRoute == null || !currentRoute!.fakeModel.actions.containsKey(action)) {
      'No action found: $action'.logError();
      return;
    }

    currentRoute?.fakeModel.actions[action]!();
    FakeActionPlugin.fakeActionController.sink.add(null);
  }
}
