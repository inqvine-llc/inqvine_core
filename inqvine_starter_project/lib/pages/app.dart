import 'package:flutter/material.dart';
import 'package:inqvine_core_simulate/widgets/inqvine_simulatable_app.dart';
import 'package:inqvine_starter_project/constants/route_constants.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InqvineSimulatableApp(
      title: 'inqVine starter project',
      router: kRouter,
      routes: kRoutes,
    );
  }
}
