// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:inqvine_core_main/inqvine_core_main.dart';

void main() {
  testWidgets('Navigation keys can be passed through Inqvine Service to obtain context', (WidgetTester tester) async {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    final MaterialApp app = MaterialApp(
      navigatorKey: navigatorKey,
      home: Scaffold(),
    );

    inqvine.setNavigationKey(navigatorKey);
    await tester.pumpWidget(app);

    //* Will throw exception if cannot be found
    inqvine.context;
  });
}
