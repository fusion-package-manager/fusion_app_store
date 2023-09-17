import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fusion_app_store/app/auth/domain/repository/auth_repository.dart';
import 'package:fusion_app_store/app/store/domain/entity/app_entity.dart';
import 'package:fusion_app_store/app/store/domain/entity/user_entity.dart';
import 'package:fusion_app_store/constants/db_keys.dart';

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
    bool loggedIn = credentials.credential != null;
    if (loggedIn) {
      if (credentials.additionalUserInfo!.isNewUser) {
        var gitHubUserInfo = credentials.additionalUserInfo!.profile!;
        var username = gitHubUserInfo['login'];
        var description = gitHubUserInfo['bio'];
        await _firestore.collection(DBKeys.usersKey).doc(username).set(
              UserEntity(
                username: username,
                description: description,
                active: true,
                likedApps: <String>{},
                ownedApps: <AppEntity>{},
                reputation: 0,
                strikes: 0,
                joinedAt: DateTime.now(),
              ).toMap(),
            );
      }
    }
    return loggedIn;
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
