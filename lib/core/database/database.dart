import 'package:drift/drift.dart';
import 'package:drift/web.dart';
import 'package:fusion_app_store/app/store/domain/entity/user_entity.dart';
import 'package:fusion_app_store/main_common.dart';

part 'database.g.dart';

@DataClassName('AppTableData')
class AppTable extends Table {
  TextColumn get packageID => text().unique()();

  TextColumn get name => text()();

  TextColumn get shortDescription => text()();

  TextColumn get description => text()();

  TextColumn get contentRated => text()();

  TextColumn get category => text()();

  TextColumn get platforms => text()();

  TextColumn get source => text()();

  TextColumn get support => text()();

  TextColumn get links => text()();

  TextColumn get reviews => text()();

  IntColumn get downloads => integer()();

  DateTimeColumn get uploadDate => dateTime()();

  DateTimeColumn get updateDate => dateTime()();
}

@DataClassName('UserTableData')
class UserTable extends Table {
  TextColumn get username => text().unique()();

  TextColumn get description => text()();

  BoolColumn get active => boolean()();

  TextColumn get likedApps => text()();

  TextColumn get ownedApps => text()();

  IntColumn get reputation => integer()();

  IntColumn get strikes => integer()();

  DateTimeColumn get joinedAt => dateTime()();
}

@DriftDatabase(tables: [AppTable, UserTable])
class FusionDatabase extends _$FusionDatabase {
  FusionDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  Future<void> addUser({
    required UserEntity userEntity,
  }) async {
    await into(userTable).insert(
      UserTableCompanion.insert(
        username: userEntity.username,
        description: userEntity.description,
        active: userEntity.active,
        likedApps: userEntity.encodeLikedApps(),
        ownedApps: userEntity.encodeOwnedApps(),
        reputation: userEntity.reputation,
        strikes: userEntity.strikes,
        joinedAt: userEntity.joinedAt,
      ),
      mode: InsertMode.replace,
    );
  }

  static FusionDatabase getInstance() {
    return constructDb();
  }
}

FusionDatabase constructDb() {
  final db = FusionDatabase(
    WebDatabase.withStorage(
      DriftWebStorage.indexedDb(
        'fusion-database',
        migrateFromLocalStorage: true,
        inWebWorker: true,
      ),
      logStatements: flavor == Flavor.dev,
    ),
  );
  return db;
}
