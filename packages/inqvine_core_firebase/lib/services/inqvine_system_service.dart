// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:inqvine_core_main/inqvine_core_main.dart';

// Project imports:
import 'package:inqvine_core_firebase/inqvine_core_firebase.dart';

class InqvineSystemService extends InqvineServiceBase {
  InqvineSystemService._privateConstructor();
  static final InqvineSystemService _instance = InqvineSystemService._privateConstructor();
  static InqvineSystemService get instance => _instance;

  StreamSubscription<DocumentSnapshot>? systemSubscription;

  CollectionReference get systemStatusCollection => inqvineFirebase.firebaseFirestore.collection('system_status');
  static const String systemStatusDocumentName = 'current';

  ApplicationStatus? _applicationStatus;
  ApplicationStatus? get applicationStatus => _applicationStatus;

  Widget Function(ApplicationStatus? applicationStatus)? downtimeBuilder;

  bool get isSystemOnline => applicationStatus?.isOnline ?? false;
  bool get canDisplayDowntimeScreen => downtimeBuilder != null;

  @override
  Future<void> initializeService() async {
    await prepareSystemListeners();
    await super.initializeService();
  }

  Future<void> prepareSystemListeners() async {
    systemSubscription?.cancel();
    systemSubscription = systemStatusCollection.doc(systemStatusDocumentName).snapshots().listen(onSystemStatusSnapshotChanged);
  }

  Future<void> onSystemStatusSnapshotChanged(DocumentSnapshot event) async {
    'Got a new system snapshot: $event'.logInfo();
    if (!event.exists) {
      return;
    }

    _applicationStatus = ApplicationStatus.create()..mergeFromProto3Json(event.data(), ignoreUnknownFields: true);
    inqvine.publishEvent<ApplicationStatus>(_applicationStatus!);
  }
}
