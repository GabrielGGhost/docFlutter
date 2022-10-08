import 'package:sqflite_common/sqlite_api.dart';

class CreateTables{
  
  static createTable(Database db, int version){
    db.execute(
      "CREATE TABLE pokemon(id INTEGER PRIMARY KEY, name TEXT, type1 TEXT, type2 TEXT)"
    );

    print("Tabelas criadas.");
  }
}