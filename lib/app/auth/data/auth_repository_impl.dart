import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fusion_app_store/app/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GithubAuthProvider _authProvider = GithubAuthProvider();

  @override
  Future<bool> isUserLoggedIn() async {
    await Future.delayed(const Duration(seconds: 1));
    return _firebaseAuth.currentUser != null;
  }

  @override
  Future<bool> logIn() async {
    var credentials = await _firebaseAuth.signInWithPopup(_authProvider);
    return credentials.credential != null;
  }

  @override
  Future<bool> logOut() async {
    try {
      await _firebaseAuth.signOut();
      return true;
    } on Exception {
      return false;
    }
  }
}
