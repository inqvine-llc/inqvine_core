import 'dart:async';

import 'package:inqvine_core_firebase/inqvine_core_firebase.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';

class InqvineAdminService extends InqvineServiceBase {
  InqvineAdminService._privateConstructor();
  static final InqvineAdminService _instance = InqvineAdminService._privateConstructor();
  static InqvineAdminService get instance => _instance;

  CollectionReference get adminUserCollection => inqvineFirebase.firebaseFirestore.collection('admin_users');

  StreamSubscription<User?>? usersStreamSubscription;
  StreamSubscription<DocumentSnapshot?>? adminSubscription;

  /// Returns whether or not the user is an admin.
  /// The user is an admin, if their [uid] is a document in the collection `admin_users`
  bool get isAdmin => _isAdmin;
  bool _isAdmin = false;

  Future<void> initializeService() async {
    'Initializing admin service'.logInfo();
    usersStreamSubscription ??= inqvineFirebase.firebaseAuth.userChanges().listen(_onUserChanged);

    await super.initializeService();
  }

  Future<void> _onUserChanged(User? user) async {
    'Cancelling old admin subscriptions to database'.logDebug();
    await adminSubscription?.cancel();
    _isAdmin = false;

    if (user == null) {
      return;
    }

    'Resuming new admin subscriptions'.logDebug();
    adminSubscription = adminUserCollection.doc(user.uid).snapshots().listen(_onAdminStateChanged);
  }

  Future<void> _onAdminStateChanged(DocumentSnapshot event) async {
    _isAdmin = event.exists;
    'Admin user status: $isAdmin'.logDebug();
  }

  @override
  Future<void> dispose() async {
    await usersStreamSubscription?.cancel();
    await adminSubscription?.cancel();

    await super.dispose();
  }
}
