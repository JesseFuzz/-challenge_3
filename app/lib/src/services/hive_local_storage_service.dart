import 'package:app/src/statics/strings.dart';
import 'package:hive_flutter/adapters.dart';
import '../interfaces/i_local_storage_service.dart';

class HiveLocalStorageService implements ILocalStorageService {
  @override
  Future<void> initDatabase() async {
    await Hive.initFlutter();
    await Hive.openBox(StaticStrings.todoHiveBoxName);
  }

  // @override
  // Box<dynamic> getDBChange(String table) {
  //   final myData = Hive.box(table);
  //   return myData;
  // }

  @override
  Future<void> post(String box, Map todo) async {
    final myData = Hive.box(box);
    await myData.add(todo);
  }

  @override
  Future<void> delete(String box, int index) async {
    final myData = Hive.box(box);
    await myData.deleteAt(index);
  }

  @override
  Map<String, dynamic> getAt(String box, int index) {
    final myData = Hive.box(box);
    final result = myData.getAt(index);
    final parsedResult = Map<String, dynamic>.from(result);
    return parsedResult;
  }

  @override
  Future<List<Map<String, dynamic>>> getAll(String box) async {
    final myData = Hive.box(box);
    // await myData.clear();
    final result = myData.values;
    final parsedResult =
        // ignore: unnecessary_lambdas
        result.map((e) => Map<String, dynamic>.from(e)).toList();
    return parsedResult;
  }

  @override
  Future<void> update(String box, int index, Map todo) async {
    final myData = Hive.box(box);
    // final parsedId = int.parse(index);
    await myData.putAt(index, todo);
  }
}
