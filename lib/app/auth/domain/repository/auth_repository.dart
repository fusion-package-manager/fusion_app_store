abstract class AuthRepository {
  Future<bool> isUserLoggedIn();
  Future<bool> logIn();
  Future<bool> logOut();
}
