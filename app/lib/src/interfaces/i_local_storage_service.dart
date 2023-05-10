abstract class ILocalStorageService {
  Future<void> initDatabase();
  Future<void> post(String table, Map data);
  Future<void> delete(String table, int index);
  dynamic getAt(String table, int index);
  Future<List> getAll(String table);
  Future<void> update(String table, int index, Map data);
  // Box<dynamic> getDBChange(String table);
  // Map<String, dynamic> getAll(String table);
  // Future<void> update(String table, int index, Map data);
}
