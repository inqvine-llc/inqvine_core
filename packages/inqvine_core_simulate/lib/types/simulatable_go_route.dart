import '../inqvine_core_simulate.dart';

class SimulatableGoRoute {
  SimulatableGoRoute({
    required this.name,
    required this.route,
    required this.fakeModel,
  });

  final String name;
  final GoRoute route;
  final SimulationActionable fakeModel;
}
