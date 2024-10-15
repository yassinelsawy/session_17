import 'package:sqflite/sqflite.dart';

class DbHelper{

  static Database? _db;
  
  static final DbHelper instance = DbHelper._init();
  DbHelper._init();
  
  Future<void> _oncreate(Database db,int version) async{
    await db.execute(''' 
      CREATE TABLE data(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT,
      dis TEXT 
      )
    
    ''');
  }

  Future<Database> get database async{
    if(_db!= null) return _db!;
    _db = await openDatabase(
      'my_data.db',
      version: 1,
      onCreate: _oncreate,

    );
    return _db!;
  }

  Future<void> insertData(String title , String dis) async{
    await _db!.insert(
      'data',
       {'title':title,'dis':dis}
    );
  }

  Future<List<Map>> getData() async{
    List<Map> list = await _db!.rawQuery('SELECT * FROM data');
    return list;
  }

  Future<void> deleteData(int id) async{
    await _db!.delete(
      'data',
      where: 'id = ?',
      whereArgs: [id]
    );
  }


}