import 'package:flutter/cupertino.dart';
import 'package:inqvine_core_simulate/handlers/inqvine_simulator_handler.dart';
import 'package:inqvine_starter_project/enumerations/application_environment.dart';

import 'package:inqvine_core_main/inqvine_core_main.dart';
import 'package:inqvine_starter_project/pages/app.dart';

Future<void> bootstrapApplication(ApplicationEnvironment environment) async {
  await inqvine.registerInqvineServices();
  inqvine.registerInLocator(environment);

  InqvineSimulatorHandler.instance.isEnabled = environment == ApplicationEnvironment.simulate;

  runApp(const App());
}
