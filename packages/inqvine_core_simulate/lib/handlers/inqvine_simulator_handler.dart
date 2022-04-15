// Package imports:
import 'package:inqvine_core_main/inqvine_core_main.dart';

// Project imports:
import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';

class InqvineSimulatorHandler {
  InqvineSimulatorHandler._privateConstructor();
  static final InqvineSimulatorHandler _instance = InqvineSimulatorHandler._privateConstructor();
  static InqvineSimulatorHandler get instance => _instance;

  final Map<Type, InqvineFake> currentPageFakes = <Type, InqvineFake>{};

  Type? currentModelType;

  void attemptRegisterFakesOnBuild(Type type, InqvineFake fake) {
    currentPageFakes[type] = fake;
  }

  void forceRebuild() {
    final InqvineFake mockFake = InqvineFake(model: null, title: '', description: '');
    final FakeModelActionEvent event = FakeModelActionEvent(mockFake, '');
    inqvine.publishEvent(event);
  }
}
