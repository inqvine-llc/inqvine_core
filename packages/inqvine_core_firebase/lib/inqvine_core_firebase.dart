library inqvine_core_firebase;

export 'services/inqvine_auth_service.dart';
export 'services/inqvine_admin_service.dart';

export 'package:firebase_auth/firebase_auth.dart';
export 'package:cloud_firestore/cloud_firestore.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:inqvine_core_firebase/services/inqvine_admin_service.dart';
import 'package:inqvine_core_firebase/services/inqvine_auth_service.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';

InqvineCoreFirebase get inqvineFirebase => InqvineCoreFirebase.instance;

class InqvineCoreFirebase {
  InqvineCoreFirebase._privateConstructor();
  static final InqvineCoreFirebase _instance = InqvineCoreFirebase._privateConstructor();
  static InqvineCoreFirebase get instance => _instance;

  Future<void> registerInqvineFirebaseServices() async {
    await inqvine.registerService<InqvineAuthService>(authService);
    await inqvine.registerService<InqvineAdminService>(adminService);

    inqvine.registerInLocator<FirebaseAuth>(FirebaseAuth.instance);
    inqvine.registerInLocator<FirebaseFirestore>(FirebaseFirestore.instance);
  }

  FirebaseAuth get firebaseAuth => inqvine.getFromLocator<FirebaseAuth>();
  FirebaseFirestore get firebaseFirestore => inqvine.getFromLocator<FirebaseFirestore>();

  InqvineAuthService get authService => inqvine.getFromLocator<InqvineAuthService>();
  InqvineAdminService get adminService => inqvine.getFromLocator<InqvineAdminService>();
}
