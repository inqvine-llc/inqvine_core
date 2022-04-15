// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:inqvine_core_main/inqvine_core_main.dart';

// Project imports:
import 'package:inqvine_core_firebase/inqvine_core_firebase.dart';

/// Wrap your base scaffold in this view in order to listen to downtime in the application.
/// You can set this by configuring the [InqvineSystemService] with a [downtimeBuilder].
class InqvineDowntimeOverlay extends StatefulWidget {
  const InqvineDowntimeOverlay({
    required this.child,
  });

  final Widget child;

  @override
  _InqvineDowntimeOverlayState createState() => _InqvineDowntimeOverlayState();
}

class _InqvineDowntimeOverlayState extends State<InqvineDowntimeOverlay> {
  StreamSubscription<ApplicationStatus>? applicationStatusSubscription;
  ApplicationStatus? applicationStatus;

  void initState() {
    super.initState();
    applicationStatus = inqvineFirebase.systemService.applicationStatus;
    applicationStatusSubscription = inqvine.getEventStream<ApplicationStatus>().listen(onSubscriptionChanged);
  }

  void dispose() {
    applicationStatusSubscription?.cancel();
    super.dispose();
  }

  void onSubscriptionChanged(ApplicationStatus event) {
    if (!mounted) {
      return;
    }

    applicationStatus = event;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Widget? overlay;
    if (applicationStatus != null && !inqvineFirebase.systemService.isSystemOnline && !inqvineFirebase.systemService.canDisplayDowntimeScreen) {
      overlay = inqvineFirebase.systemService.downtimeBuilder!(applicationStatus);
    }

    return Stack(
      children: <Widget>[
        Positioned.fill(child: widget.child),
        if (overlay != null)
          Positioned.fill(
            child: overlay,
          ),
      ],
    );
  }
}
