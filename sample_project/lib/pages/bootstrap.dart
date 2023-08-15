// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:inqvine_core_simulate/handlers/inqvine_simulator_handler.dart';
import 'package:sample_project/enumerations/application_environment.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';

import 'app.dart';

Future<void> bootstrapApplication(ApplicationEnvironment environment) async {
  await inqvine.registerInqvineServices();
  inqvine.registerInLocator(environment);

  InqvineSimulatorHandler.instance.isEnabled =
      environment == ApplicationEnvironment.simulate;

  runApp(const App());
}
