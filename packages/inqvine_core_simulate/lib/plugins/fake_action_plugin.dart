// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:device_preview/device_preview.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';

// Project imports:
import '../inqvine_core_simulate.dart';

class FakeActionPlugin extends StatelessWidget {
  const FakeActionPlugin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Type? currentModelType = InqvineSimulatorHandler.instance.currentModelType;
    final InqvineFake<dynamic>? currentFakeModel = InqvineSimulatorHandler.instance.currentPageFakes[currentModelType];

    return ToolPanelSection(
      title: 'Actions',
      children: <Widget>[
        if (currentFakeModel == null || currentFakeModel.actions.keys.isEmpty) ...<Widget>[
          const ListTile(
            title: Text('No actions available for this view'),
          ),
        ],
        if (currentFakeModel != null && currentFakeModel.actions.keys.isNotEmpty) ...<Widget>[
          for (final String key in currentFakeModel.actions.keys)
            ListTile(
              title: Text(key),
              onTap: () {
                currentFakeModel.actions[key]!();
                inqvine.publishEvent(FakeModelActionEvent(currentFakeModel, key));
              },
            ),
        ],
      ],
    );
  }
}
