import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum AuthStatus {
  authenticated,
  notAuthenticated,
  authenticating,
  userNotFound,
  error,
}

class AuthNotifier extends ChangeNotifier {
  User? user;
  AuthStatus? status;
  late FirebaseAuth _auth;

  static AuthNotifier instance = AuthNotifier();

  AuthNotifier() {
    _auth = FirebaseAuth.instance;
  }

  void loginUserWithEmailAndPassword(String email, String password) async {
    status = AuthStatus.authenticating;
    notifyListeners();
    try {
      var result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = result.user;
      status = AuthStatus.authenticated;
      // TODO navigate to next screen
      debugPrint('User (${user!.displayName}) logged in.');
    } catch (e) {
      status = AuthStatus.error;
      // TODO show error
      debugPrint(e.toString());
    }
  }
}
