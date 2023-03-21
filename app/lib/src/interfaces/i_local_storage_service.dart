abstract class ILocalStorageService {
  Future<void> initDatabase();
  Future<void> post(String box, Map todo);
  Future<void> get();
  // Future<void> dispose();

  // Future<void> update();
  // void verifyListData();
}
