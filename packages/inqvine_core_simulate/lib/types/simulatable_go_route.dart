import '../inqvine_core_simulate.dart';

class SimulatableGoRoute {
  SimulatableGoRoute({
    required this.name,
    required this.route,
    required this.fakeModel,
    this.group = 'Ungroupped',
  });

  final String name;
  final String group;
  final GoRoute route;
  final SimulationActionable fakeModel;
}
