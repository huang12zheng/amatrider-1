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

  RiderDAO? _riderDAOInstance;

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
            'CREATE TABLE IF NOT EXISTS `riders` (`id` TEXT, `token` TEXT, `firstName` TEXT, `lastName` TEXT, `email` TEXT, `phone` TEXT, `password` TEXT, `oldPassword` TEXT, `confirmation` TEXT, `image` TEXT, `availability` TEXT, `lat` REAL, `lng` REAL, `phoneVerifiedAt` INTEGER, `avgRating` REAL, `isVerified` INTEGER NOT NULL, `verificationStatus` TEXT, `provider` TEXT, `createdAt` INTEGER, `updatedAt` INTEGER, `deletedAt` INTEGER, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  RiderDAO get riderDAO {
    return _riderDAOInstance ??= _$RiderDAO(database, changeListener);
  }
}

class _$RiderDAO extends RiderDAO {
  _$RiderDAO(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        __$_RiderDTOInsertionAdapter = InsertionAdapter(
            database,
            'riders',
            (_$_RiderDTO item) => <String, Object?>{
                  'id': item.id,
                  'token': item.token,
                  'firstName': item.firstName,
                  'lastName': item.lastName,
                  'email': item.email,
                  'phone': item.phone,
                  'password': item.password,
                  'oldPassword': item.oldPassword,
                  'confirmation': item.confirmation,
                  'image': item.image,
                  'availability':
                      _riderAvailabilityConverter.encode(item.availability),
                  'lat': item.lat,
                  'lng': item.lng,
                  'phoneVerifiedAt':
                      _timestampFloorConverter.encode(item.phoneVerifiedAt),
                  'avgRating': item.avgRating,
                  'isVerified': item.isVerified,
                  'verificationStatus': _verificationStatusConverter
                      .encode(item.verificationStatus),
                  'provider': _authProviderFloorConverter.encode(item.provider),
                  'createdAt': _timestampFloorConverter.encode(item.createdAt),
                  'updatedAt': _timestampFloorConverter.encode(item.updatedAt),
                  'deletedAt': _timestampFloorConverter.encode(item.deletedAt)
                },
            changeListener),
        __$_RiderDTOUpdateAdapter = UpdateAdapter(
            database,
            'riders',
            ['id'],
            (_$_RiderDTO item) => <String, Object?>{
                  'id': item.id,
                  'token': item.token,
                  'firstName': item.firstName,
                  'lastName': item.lastName,
                  'email': item.email,
                  'phone': item.phone,
                  'password': item.password,
                  'oldPassword': item.oldPassword,
                  'confirmation': item.confirmation,
                  'image': item.image,
                  'availability':
                      _riderAvailabilityConverter.encode(item.availability),
                  'lat': item.lat,
                  'lng': item.lng,
                  'phoneVerifiedAt':
                      _timestampFloorConverter.encode(item.phoneVerifiedAt),
                  'avgRating': item.avgRating,
                  'isVerified': item.isVerified,
                  'verificationStatus': _verificationStatusConverter
                      .encode(item.verificationStatus),
                  'provider': _authProviderFloorConverter.encode(item.provider),
                  'createdAt': _timestampFloorConverter.encode(item.createdAt),
                  'updatedAt': _timestampFloorConverter.encode(item.updatedAt),
                  'deletedAt': _timestampFloorConverter.encode(item.deletedAt)
                },
            changeListener),
        __$_RiderDTODeletionAdapter = DeletionAdapter(
            database,
            'riders',
            ['id'],
            (_$_RiderDTO item) => <String, Object?>{
                  'id': item.id,
                  'token': item.token,
                  'firstName': item.firstName,
                  'lastName': item.lastName,
                  'email': item.email,
                  'phone': item.phone,
                  'password': item.password,
                  'oldPassword': item.oldPassword,
                  'confirmation': item.confirmation,
                  'image': item.image,
                  'availability':
                      _riderAvailabilityConverter.encode(item.availability),
                  'lat': item.lat,
                  'lng': item.lng,
                  'phoneVerifiedAt':
                      _timestampFloorConverter.encode(item.phoneVerifiedAt),
                  'avgRating': item.avgRating,
                  'isVerified': item.isVerified,
                  'verificationStatus': _verificationStatusConverter
                      .encode(item.verificationStatus),
                  'provider': _authProviderFloorConverter.encode(item.provider),
                  'createdAt': _timestampFloorConverter.encode(item.createdAt),
                  'updatedAt': _timestampFloorConverter.encode(item.updatedAt),
                  'deletedAt': _timestampFloorConverter.encode(item.deletedAt)
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<_$_RiderDTO> __$_RiderDTOInsertionAdapter;

  final UpdateAdapter<_$_RiderDTO> __$_RiderDTOUpdateAdapter;

  final DeletionAdapter<_$_RiderDTO> __$_RiderDTODeletionAdapter;

  @override
  Stream<List<_$_RiderDTO?>> watchRiders() {
    return _queryAdapter.queryListStream('SELECT * FROM riders',
        mapper: (Map<String, Object?> row) => _$_RiderDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            image: row['image'] as String?,
            availability: _riderAvailabilityConverter
                .decode(row['availability'] as String),
            lat: row['lat'] as double?,
            lng: row['lng'] as double?,
            phoneVerifiedAt:
                _timestampFloorConverter.decode(row['phoneVerifiedAt'] as int?),
            avgRating: row['avgRating'] as double?,
            isVerified: row['isVerified'] as int,
            verificationStatus: _verificationStatusConverter
                .decode(row['verificationStatus'] as String?),
            provider:
                _authProviderFloorConverter.decode(row['provider'] as String),
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)),
        queryableName: 'riders',
        isView: false);
  }

  @override
  Future<List<_$_RiderDTO?>> allRiders() async {
    return _queryAdapter.queryList('SELECT * FROM riders',
        mapper: (Map<String, Object?> row) => _$_RiderDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            image: row['image'] as String?,
            availability: _riderAvailabilityConverter
                .decode(row['availability'] as String),
            lat: row['lat'] as double?,
            lng: row['lng'] as double?,
            phoneVerifiedAt:
                _timestampFloorConverter.decode(row['phoneVerifiedAt'] as int?),
            avgRating: row['avgRating'] as double?,
            isVerified: row['isVerified'] as int,
            verificationStatus: _verificationStatusConverter
                .decode(row['verificationStatus'] as String?),
            provider:
                _authProviderFloorConverter.decode(row['provider'] as String),
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)));
  }

  @override
  Future<_$_RiderDTO?> findRider(int id) async {
    return _queryAdapter.query('SELECT * FROM riders WHERE id = ?1',
        mapper: (Map<String, Object?> row) => _$_RiderDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            image: row['image'] as String?,
            availability: _riderAvailabilityConverter
                .decode(row['availability'] as String),
            lat: row['lat'] as double?,
            lng: row['lng'] as double?,
            phoneVerifiedAt:
                _timestampFloorConverter.decode(row['phoneVerifiedAt'] as int?),
            avgRating: row['avgRating'] as double?,
            isVerified: row['isVerified'] as int,
            verificationStatus: _verificationStatusConverter
                .decode(row['verificationStatus'] as String?),
            provider:
                _authProviderFloorConverter.decode(row['provider'] as String),
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)),
        arguments: [id]);
  }

  @override
  Future<void> removeRiders() async {
    await _queryAdapter.queryNoReturn('DELETE FROM riders');
  }

  @override
  Future<_$_RiderDTO?> lastRider() async {
    return _queryAdapter.query('SELECT * FROM riders ORDER BY ID DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => _$_RiderDTO(
            id: row['id'] as String?,
            token: row['token'] as String?,
            firstName: row['firstName'] as String?,
            lastName: row['lastName'] as String?,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            password: row['password'] as String?,
            oldPassword: row['oldPassword'] as String?,
            confirmation: row['confirmation'] as String?,
            image: row['image'] as String?,
            availability: _riderAvailabilityConverter
                .decode(row['availability'] as String),
            lat: row['lat'] as double?,
            lng: row['lng'] as double?,
            phoneVerifiedAt:
                _timestampFloorConverter.decode(row['phoneVerifiedAt'] as int?),
            avgRating: row['avgRating'] as double?,
            isVerified: row['isVerified'] as int,
            verificationStatus: _verificationStatusConverter
                .decode(row['verificationStatus'] as String?),
            provider:
                _authProviderFloorConverter.decode(row['provider'] as String),
            createdAt:
                _timestampFloorConverter.decode(row['createdAt'] as int?),
            updatedAt:
                _timestampFloorConverter.decode(row['updatedAt'] as int?),
            deletedAt:
                _timestampFloorConverter.decode(row['deletedAt'] as int?)));
  }

  @override
  Future<void> insertItem(_$_RiderDTO item) async {
    await __$_RiderDTOInsertionAdapter.insert(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertItems(List<_$_RiderDTO> items) async {
    await __$_RiderDTOInsertionAdapter.insertList(
        items, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateItem(_$_RiderDTO item) async {
    await __$_RiderDTOUpdateAdapter.update(item, OnConflictStrategy.replace);
  }

  @override
  Future<void> removeItem(_$_RiderDTO item) async {
    await __$_RiderDTODeletionAdapter.delete(item);
  }
}

// ignore_for_file: unused_element
final _timestampFloorConverter = TimestampFloorConverter();
final _countryDTOFloorConverter = CountryDTOFloorConverter();
final _riderAvailabilityConverter = RiderAvailabilityConverter();
final _verificationStatusConverter = VerificationStatusConverter();
final _authProviderFloorConverter = AuthProviderFloorConverter();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RiderDTO _$$_RiderDTOFromJson(Map<String, dynamic> json) => _$_RiderDTO(
      id: json['id'] as String?,
      token: json['token'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      oldPassword: json['current_password'] as String?,
      confirmation: json['password_confirmation'] as String?,
      image: json['image'] as String?,
      availability: const RiderAvailabilitySerializer()
          .fromJson(json['availability'] as int?),
      lat: const DoubleSerializer().fromJson(json['current_latitude']),
      lng: const DoubleSerializer().fromJson(json['current_longitude']),
      phoneVerifiedAt:
          const TimestampConverter().fromJson(json['phone_verified_at']),
      avgRating: const DoubleSerializer().fromJson(json['average_rating']),
      isVerified: json['is_verified'] as int? ?? 0,
      verificationStatus: const VerificationStatusSerializer()
          .fromJson(json['verification_state'] as String?),
      provider:
          const AuthProviderSerializer().fromJson(json['provider'] as String?),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
      deletedAt: const TimestampConverter().fromJson(json['deleted_at']),
    );

Map<String, dynamic> _$$_RiderDTOToJson(_$_RiderDTO instance) {
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
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('current_password', instance.oldPassword);
  writeNotNull('password_confirmation', instance.confirmation);
  writeNotNull('image', instance.image);
  writeNotNull('availability',
      const RiderAvailabilitySerializer().toJson(instance.availability));
  writeNotNull(
      'current_latitude', const DoubleSerializer().toJson(instance.lat));
  writeNotNull(
      'current_longitude', const DoubleSerializer().toJson(instance.lng));
  writeNotNull('phone_verified_at',
      const TimestampConverter().toJson(instance.phoneVerifiedAt));
  writeNotNull(
      'average_rating', const DoubleSerializer().toJson(instance.avgRating));
  val['is_verified'] = instance.isVerified;
  writeNotNull('verification_state',
      const VerificationStatusSerializer().toJson(instance.verificationStatus));
  writeNotNull(
      'provider', const AuthProviderSerializer().toJson(instance.provider));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
