abstract class StoreRepository {
  Future<void> syncUsers() async {
    await fetchUsers();
    listenUsers();
  }

  Future<void> fetchUsers();

  void listenUsers();

  Future<void> syncApps() async {
    await fetchApps();
    listenApps();
  }

  Future<void> fetchApps();

  void listenApps();
}
