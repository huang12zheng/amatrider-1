// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_database.dart;

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  UserDAO? _userDAOInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `users` (`id` TEXT, `token` TEXT, `firstName` TEXT, `lastName` TEXT, `fullName` TEXT, `email` TEXT, `phone` TEXT, `password` TEXT, `oldPassword` TEXT, `confirmation` TEXT, `image` TEXT, `createdAt` INTEGER, `updatedAt` INTEGER, `deletedAt` INTEGER, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  UserDAO get userDAO {
    return _userDAOInstance ??= _$UserDAO(database, changeListener);
  }
}

class _$UserDAO extends UserDAO {
  _$UserDAO(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        __$_UserDTOInsertionAdapter = InsertionAdapter(
            database,
            'users',
            (_$_UserDTO item) => <String, Object?>{
                  'id': item.id,
                  'token': item.token,
                  'firstName': item.firstName,
                  'lastName': item.lastName,
                  'fullName': item.fullName,
                  'email': item.email,
                  'phone': item.phone,
                  'password': item.password,
                  'oldPassword': item.oldPassword,
                  'confirmation': item.confirmation,
                  'image': item.image,
                  'createdAt': _timestampFloorConverter.encode(item.createdAt),
                  'updatedAt': _timestampFloorConverter.encode(item.updatedAt),
                  'deletedAt': _timestampFloorConverter.encode(item.deletedAt)
                },
            changeListener),
        __$_UserDTODeletionAdapter = DeletionAdapter(
            database,
            'users',
            ['id'],
            (_$_UserDTO item) => <String, Object?>{
                  'id': item.id,
                  'token': item.token,
                  'firstName': item.firstName,
                  'lastName': item.lastName,
                  'fullName': item.fullName,
                  'email': item.email,
                  'phone': item.phone,
                  'password': item.password,
                  'oldPassword': item.oldPassword,
                  'confirmation': item.confirmation,
                  'image': item.image,
                  'createdAt': _timestampFloorConverter.encode(item.createdAt),
                  'updatedAt': _timestampFloorConverter.encode(item.updatedAt),
                  'deletedAt': _timestampFloorConverter.encode(item.deletedAt)
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<_$_UserDTO> __$_UserDTOInsertionAdapter;

  final DeletionAdapter<_$_UserDTO> __$_UserDTODeletionAdapter;

  @override
  Stream<List<_$_UserDTO?>> watchUsers() {
    return _queryAdapter.queryListStream('SELECT * FROM users',
        mapper: (Map<String, Object?> row) => _$_UserDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            fullName: row['fullName'] as String?,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            image: row['image'] as String?,
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)),
        queryableName: 'users',
        isView: false);
  }

  @override
  Future<List<_$_UserDTO?>> allUsers() async {
    return _queryAdapter.queryList('SELECT * FROM users',
        mapper: (Map<String, Object?> row) => _$_UserDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            fullName: row['fullName'] as String?,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            image: row['image'] as String?,
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)));
  }

  @override
  Future<_$_UserDTO?> findUser(int id) async {
    return _queryAdapter.query('SELECT * FROM users WHERE id = ?1',
        mapper: (Map<String, Object?> row) => _$_UserDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            fullName: row['fullName'] as String?,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            image: row['image'] as String?,
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)),
        arguments: [id]);
  }

  @override
  Future<void> removeUsers() async {
    await _queryAdapter.queryNoReturn('DELETE FROM users');
  }

  @override
  Future<_$_UserDTO?> lastUser() async {
    return _queryAdapter.query('SELECT * FROM users ORDER BY ID DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => _$_UserDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            fullName: row['fullName'] as String?,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            image: row['image'] as String?,
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)));
  }

  @override
  Future<void> insertUser(_$_UserDTO user) async {
    await __$_UserDTOInsertionAdapter.insert(user, OnConflictStrategy.replace);
  }

  @override
  Future<void> removeUser(_$_UserDTO user) async {
    await __$_UserDTODeletionAdapter.delete(user);
  }
}

// ignore_for_file: unused_element
final _timestampFloorConverter = TimestampFloorConverter();
final _countryDTOFloorConverter = CountryDTOFloorConverter();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: json['id'] as String?,
      token: json['token'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      oldPassword: json['current_password'] as String?,
      confirmation: json['password_confirmation'] as String?,
      image: json['profile_image'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['created_at'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updated_at'] as String?),
      deletedAt:
          const TimestampConverter().fromJson(json['deleted_at'] as String?),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('token', instance.token);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('full_name', instance.fullName);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('current_password', instance.oldPassword);
  writeNotNull('password_confirmation', instance.confirmation);
  writeNotNull('profile_image', instance.image);
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
