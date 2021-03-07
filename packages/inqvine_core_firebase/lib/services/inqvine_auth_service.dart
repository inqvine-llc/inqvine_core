import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:inqvine_core_firebase/inqvine_core_firebase.dart';
import 'package:inqvine_core_main/inqvine_core_main.dart';

/// Common authentication methods used by Firebase.
class InqvineAuthService extends InqvineServiceBase {
  InqvineAuthService._privateConstructor();
  static final InqvineAuthService _instance = InqvineAuthService._privateConstructor();
  static InqvineAuthService get instance => _instance;

  User? _currentUser;
  User? get currentUser => _currentUser;

  bool get isLoggedIn => currentUser != null;

  bool _performedInitialAuthCheck = false;
  bool get performedInitialAuthCheck => _performedInitialAuthCheck;

  StreamSubscription<User?>? _userSubscription;

  /// Initializes the [InqvineAuthService] and starts listening to Firebase for user state changes.
  /// Will set [performedInitialAuthCheck] when the first user check returns
  Future<void> initializeService() async {
    'Checking is a user is already logged in'.logInfo();
    _userSubscription = inqvineFirebase.firebaseAuth.authStateChanges().listen(_onAuthStateChanged);

    await super.initializeService();
  }

  /// Logout for the current firebase instance.
  /// If already logged out, will print error and return.
  Future<void> logout() async {
    if (currentUser == null) {
      'Cannot logout of an already signed out account'.logError();
      return;
    }

    await inqvineFirebase.firebaseAuth.signOut();
    'Logged out successfully'.logInfo();
  }

  /// Creates a new user with email and password.
  /// [currentUser] is set upon return.
  ///
  /// Note: You will need to enable email and password auth support on Firebase for this to work.
  Future<void> signUpWithEmailPassword(String email, String password) async {
    'Creating a new account on Firebase'.logInfo();
    final UserCredential userCredential = await inqvineFirebase.firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    _currentUser = userCredential.user;
    'Sign up was successful'.logInfo();
  }

  /// Authenticates with email and password.
  /// [currentUser] is set upon return.
  ///
  /// Note: You will need to enable email and password auth support on Firebase for this to work.
  Future<void> loginWithEmailPassword(String email, String password) async {
    'Signing in with Firebase'.logInfo();
    final UserCredential userCredential = await inqvineFirebase.firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    _currentUser = userCredential.user;
    'Sign in was successful'.logInfo();
  }

  void _onAuthStateChanged(User? user) {
    'Detected a change to authentication state: $user'.logInfo();
    inqvine.publishEvent(user);

    _performedInitialAuthCheck = true;
    _currentUser = user;
  }

  @override
  Future<void> dispose() async {
    await _userSubscription?.cancel();
    super.dispose();
  }
}
