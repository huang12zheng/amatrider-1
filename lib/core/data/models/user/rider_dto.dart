part of app_database.dart;

@freezed
@immutable
class RiderDTO with _$RiderDTO {
  static const String tableName = 'riders';

  @Entity(tableName: RiderDTO.tableName)
  const factory RiderDTO({
    @primaryKey @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeIfNull: false) String? token,
    @JsonKey(includeIfNull: false, name: 'first_name') String? firstName,
    @JsonKey(includeIfNull: false, name: 'last_name') String? lastName,
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false) String? password,
    @JsonKey(includeIfNull: false, name: 'current_password')
        String? oldPassword,
    @JsonKey(includeIfNull: false, name: 'password_confirmation')
        String? confirmation,
    @JsonKey(includeIfNull: false, name: 'image') String? image,
    @JsonKey(includeIfNull: false, name: 'availability')
    @RiderAvailabilitySerializer()
        RiderAvailability? availability,
    @JsonKey(includeIfNull: false, name: 'current_latitude')
    @DoubleSerializer()
        double? lat,
    @JsonKey(includeIfNull: false, name: 'current_longitude')
    @DoubleSerializer()
        double? lng,
    @JsonKey(includeIfNull: false, name: 'phone_verified_at')
    @TimestampConverter()
        DateTime? phoneVerifiedAt,
    @JsonKey(includeIfNull: false, name: 'created_at')
    @TimestampConverter()
        DateTime? createdAt,
    @JsonKey(includeIfNull: false, name: 'updated_at')
    @TimestampConverter()
        DateTime? updatedAt,
    @JsonKey(includeIfNull: false, name: 'deleted_at')
    @TimestampConverter()
        DateTime? deletedAt,
  }) = _RiderDTO;

  const RiderDTO._();

  factory RiderDTO.fromDomain(Rider? instance) => RiderDTO(
        firstName: instance?.firstName.getOrNull,
        lastName: instance?.lastName.getOrNull,
        email: instance?.email.getOrNull,
        password: instance?.password.getOrNull,
        phone: instance?.phone.getOrNull,
        availability: instance?.availability,
      );

  factory RiderDTO.fromJson(Map<String, dynamic> json) =>
      _$RiderDTOFromJson(json);

  Rider get domain => Rider(
        uid: UniqueId.fromExternal(id),
        firstName: DisplayName(firstName),
        lastName: DisplayName(lastName),
        email: EmailAddress(email),
        phone: Phone(phone),
        password: Password(password),
        photo: PhotoField(image),
        availability: availability!,
        location: RiderLocation(
          lat: BasicTextField(lat),
          lng: BasicTextField(lng),
          address: BasicTextField(null),
        ),
        phoneVerified: phoneVerifiedAt != null,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );

  _$_RiderDTO get floor => _$_RiderDTO(
        id: id,
        token: token,
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        oldPassword: oldPassword,
        confirmation: confirmation,
        phone: phone,
        image: image,
        availability: availability,
        lat: lat,
        lng: lng,
        phoneVerifiedAt: phoneVerifiedAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}

@dao
abstract class RiderDAO {
  @Query('SELECT * FROM ${RiderDTO.tableName}')
  Stream<List<_$_RiderDTO?>> watchRiders();

  @Query('SELECT * FROM ${RiderDTO.tableName}')
  Future<List<_$_RiderDTO?>> allRiders();

  @Query('SELECT * FROM ${RiderDTO.tableName} WHERE id = :id')
  Future<_$_RiderDTO?> findRider(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertRider(_$_RiderDTO Rider);

  @delete
  Future<void> removeRider(_$_RiderDTO Rider);

  @Query('DELETE FROM ${RiderDTO.tableName}')
  Future<void> removeRiders();

  @Query('SELECT * FROM ${RiderDTO.tableName} ORDER BY ID DESC LIMIT 1')
  Future<_$_RiderDTO?> lastRider();
}

class RiderAvailabilitySerializer
    implements JsonConverter<RiderAvailability?, int?> {
  const RiderAvailabilitySerializer();

  @override
  RiderAvailability fromJson(int? value) => valueOf(value);

  @override
  int? toJson(RiderAvailability? instance) => instance?.index;

  RiderAvailability valueOf(int? value) {
    switch (value) {
      case 1:
        return RiderAvailability.available;
      case 0:
        return RiderAvailability.unavailable;
      default:
        return RiderAvailability.unavailable;
    }
  }
}

class RiderAvailabilityConverter
    extends TypeConverter<RiderAvailability?, String> {
  @override
  RiderAvailability decode(String databaseValue) => valueOf(databaseValue);

  @override
  String encode(RiderAvailability? instance) => '${instance!.index}';

  RiderAvailability valueOf(String value) {
    switch (value) {
      case '1':
        return RiderAvailability.available;
      case '0':
        return RiderAvailability.unavailable;
      default:
        return RiderAvailability.unavailable;
    }
  }
}
