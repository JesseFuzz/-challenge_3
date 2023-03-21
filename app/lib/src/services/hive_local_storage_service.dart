import 'package:app/src/statics/strings.dart';

import 'package:hive_flutter/adapters.dart';

import '../interfaces/i_local_storage_service.dart';

class HiveLocalStorageService implements ILocalStorageService {
  @override
  Future<void> initDatabase() async {
    //qual dois dois utilizar?
    await Hive.initFlutter();
    await Hive.openBox(StaticStrings.todoHiveBoxName);
    // final directory = await getApplicationDocumentsDirectory();
    // // final directory = Directory.current.path;
    // Hive.init(directory.path);
  }

  @override
  Future<void> post(String box, Map todo) async {
    final myData = Hive.box(box);
    final teste = await myData.add(todo);
    print(teste);
    print(myData.values);
    print(myData.keys);
  }

  @override
  Future<void> get() {
    throw UnimplementedError();
  }

  // @override
  // Future<void> dispose() async {
  //   await Hive.close();
  // }

  // @override
  // Future<void> update() {
  //   throw UnimplementedError();
  // }

  // @override
  // void verifyListData() {
  //   final myBox = Hive.box(StaticStrings.todoHiveBoxName);
  //   final todoHiveList = myBox.get(StaticStrings.todoHiveBoxMapKey);
  //   if (todoHiveList is! List) {
  //     myBox.put(StaticStrings.todoHiveBoxMapKey, []);
  //   }
  // }
}
