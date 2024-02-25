import 'package:pickrewardapp/accounting/model/user_record.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class UserRecordDBHelper {

  static Database? _database;
  static const String dbName = 'my_database.db';
  static const String tableName = "user_record";

  static Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await initDatabase();
    return _database!;
  }

  static Future<Database> initDatabase() async {

    String path = join(await getDatabasesPath(), dbName);
    print(path);
    try {
      Database db =  await openDatabase(
        path,
        version: 1,
        onCreate: (db, version) async {

          await db.execute('''
            CREATE TABLE IF NOT EXISTS $tableName (
              id TEXT PRIMARY KEY,
              record_time TEXT,
              cost INT,
              self_fill_channel TEXT,
              channel_id TEXT,
              channel_name TEXT,
              card_id TEXT,
              card_name TEXT,
              card_reward_id TEXT,
              card_reward_name TEXT,
              get_percentage REAL,
              get_return REAL,
              memo TEXT
            )
          ''');
        },
      );
      return db;
    }catch(e) {
      print("Error initializing database: $e"); // Debug print
      throw e;
    }
    
  }


  //   // Method to drop a table
  static Future<void> dropDatabase() async {
    Database db = await database;
    await db.execute('DROP DATABASE $dbName');
  }


  static Future<void> modifiedUserRecord(UserRecord userRecord) async {
    final db = await database;
    await db.insert(
      'user_record',
      userRecord.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

  }

  static Future<List<UserRecord>> getUsers() async {
    
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query(tableName);
    
    return List.generate(maps.length, (i) {

      int recordTime  = 0;
      if(maps[i]['record_time'] != null){
        recordTime = int.parse(maps[i]['record_time']!);
      }
      final u =  UserRecord(
        id: maps[i]['id'],
        recordTime: recordTime, 
      ); 
  
      u.cost = maps[i]['cost'];
      u.selfFillChannel = maps[i]['self_fill_channel'];
      u.channelName = maps[i]['channel_name'];
      u.channelID = maps[i]['channel_id'];

      u.cardID = maps[i]['card_id'];
      u.cardName = maps[i]['card_name'];
      u.cardRewardID = maps[i]['card_reward_id'];
      u.cardRewardName = maps[i]['card_reward_name'];

      u.getPercentage = maps[i]['get_percentage'];
      u.getReturn = maps[i]['get_return'];

      u.memo = maps[i]['memo'];


      return u;
    });
  }
}