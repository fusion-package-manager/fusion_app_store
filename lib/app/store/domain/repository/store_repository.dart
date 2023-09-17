abstract class StoreRepository {
  Future<void> syncUsers() async {
    await fetchUsers();
    listenUsers();
  }

  Future<void> fetchUsers();

  void listenUsers();
}
