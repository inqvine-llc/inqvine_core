library inqvine_core_firebase;

export 'services/inqvine_auth_service.dart';

export 'package:firebase_auth/firebase_auth.dart';
export 'package:cloud_firestore/cloud_firestore.dart';
export 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'package:inqvine_core_firebase/services/inqvine_auth_service.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';

InqvineCoreFirebase get inqvineFirebase => InqvineCoreFirebase.instance;

class InqvineCoreFirebase {
  InqvineCoreFirebase._privateConstructor();
  static final InqvineCoreFirebase _instance = InqvineCoreFirebase._privateConstructor();
  static InqvineCoreFirebase get instance => _instance;

  Future<void> registerInqvineFirebaseServices() async {
    await inqvine.registerService<InqvineAuthService>(authService);

    inqvine.registerInLocator<FirebaseAuth>(FirebaseAuth.instance);
    inqvine.registerInLocator<FirebaseFirestore>(FirebaseFirestore.instance);
    inqvine.registerInLocator<FirebaseCrashlytics>(FirebaseCrashlytics.instance);
  }

  FirebaseAuth get firebaseAuth => inqvine.getFromLocator<FirebaseAuth>();
  FirebaseFirestore get firebaseFirestore => inqvine.getFromLocator<FirebaseFirestore>();
  FirebaseCrashlytics get firebaseCrashlytics => inqvine.getFromLocator<FirebaseCrashlytics>();

  InqvineAuthService get authService => inqvine.getFromLocator<InqvineAuthService>();
}
