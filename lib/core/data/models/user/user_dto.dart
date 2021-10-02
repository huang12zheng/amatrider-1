part of app_database.dart;

@freezed
@immutable
class UserDTO with _$UserDTO {
  static const String tableName = 'users';

  @Entity(tableName: UserDTO.tableName)
  const factory UserDTO({
    @primaryKey @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeIfNull: false) String? token,
    @JsonKey(includeIfNull: false, name: 'first_name') String? firstName,
    @JsonKey(includeIfNull: false, name: 'last_name') String? lastName,
    @JsonKey(includeIfNull: false, name: 'full_name') String? fullName,
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false) String? password,
    @JsonKey(includeIfNull: false, name: 'current_password')
        String? oldPassword,
    @JsonKey(includeIfNull: false, name: 'password_confirmation')
        String? confirmation,
    @JsonKey(includeIfNull: false, name: 'profile_image') String? image,
    @JsonKey(includeIfNull: false, name: 'created_at')
    @TimestampConverter()
        DateTime? createdAt,
    @JsonKey(includeIfNull: false, name: 'updated_at')
    @TimestampConverter()
        DateTime? updatedAt,
    @JsonKey(includeIfNull: false, name: 'deleted_at')
    @TimestampConverter()
        DateTime? deletedAt,
  }) = _UserDTO;

  const UserDTO._();

  factory UserDTO.fromDomain(User? instance) => UserDTO(
        firstName: instance?.firstName.getOrNull,
        lastName: instance?.lastName.getOrNull,
        email: instance?.email.getOrNull,
        password: instance?.password.getOrNull,
        phone: instance?.phone.getOrNull,
      );

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  User get domain => User(
        uid: UniqueId.fromExternal(id),
        firstName: DisplayName(firstName),
        lastName: DisplayName(lastName),
        fullName: DisplayName(fullName),
        email: EmailAddress(email),
        phone: Phone(phone),
        password: Password(password),
        photo: PhotoField(image),
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );

  _$_UserDTO get floor => _$_UserDTO(
        id: id,
        firstName: firstName,
        lastName: lastName,
        fullName: fullName,
        email: email,
        password: password,
        oldPassword: oldPassword,
        confirmation: confirmation,
        phone: phone,
        image: image,
        token: token,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );

  static bool? isEmailVerifiedFromJson(dynamic dateTime) {
    if (dateTime == null) return false;
    if (dateTime is bool) return dateTime;
    return (dateTime as String?) != null && dateTime!.isNotEmpty;
  }
}

@dao
abstract class UserDAO {
  @Query('SELECT * FROM ${UserDTO.tableName}')
  Stream<List<_$_UserDTO?>> watchUsers();

  @Query('SELECT * FROM ${UserDTO.tableName}')
  Future<List<_$_UserDTO?>> allUsers();

  @Query('SELECT * FROM ${UserDTO.tableName} WHERE id = :id')
  Future<_$_UserDTO?> findUser(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertUser(_$_UserDTO user);

  @delete
  Future<void> removeUser(_$_UserDTO user);

  @Query('DELETE FROM ${UserDTO.tableName}')
  Future<void> removeUsers();

  @Query('SELECT * FROM ${UserDTO.tableName} ORDER BY ID DESC LIMIT 1')
  Future<_$_UserDTO?> lastUser();
}
