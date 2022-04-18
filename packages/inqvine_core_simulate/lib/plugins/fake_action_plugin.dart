// Flutter imports:
import 'dart:async';

// Package imports:
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';

// Project imports:
import '../inqvine_core_simulate.dart';

class FakeActionPlugin extends StatefulWidget {
  const FakeActionPlugin({Key? key}) : super(key: key);

  @override
  State<FakeActionPlugin> createState() => _FakeActionPluginState();

  static StreamController fakeActionController = StreamController.broadcast();
}

class _FakeActionPluginState extends State<FakeActionPlugin> {
  StreamSubscription<dynamic>? rebuildSubscription;

  @override
  void initState() {
    rebuildSubscription = FakeActionPlugin.fakeActionController.stream.listen(onRebuildRequested);
    super.initState();
  }

  @override
  void dispose() {
    rebuildSubscription?.cancel();
    super.dispose();
  }

  void onRebuildRequested(dynamic event) {
    if (!mounted) {
      return;
    }

    'Rebuilding actions for mocks'.logInfo();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final SimulatableGoRoute? currentRoute = InqvineSimulatorHandler.instance.currentRoute;

    return ToolPanelSection(
      title: 'Actions',
      children: <Widget>[
        if (currentRoute == null) ...<Widget>[
          const ListTile(
            title: Text('No actions available for this view'),
          ),
        ],
        if (currentRoute != null) ...<Widget>[
          for (final String key in currentRoute.fakeModel.actions.keys)
            ListTile(
              title: Text(key),
              onTap: () => InqvineSimulatorHandler.instance.onActionSelected(key),
            ),
        ],
      ],
    );
  }
}
