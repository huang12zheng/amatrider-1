part of app_database.dart;

@freezed
@immutable
class RiderDTO with _$RiderDTO {
  static const String tableName = 'riders';

  @Entity(tableName: RiderDTO.tableName)
  const factory RiderDTO({
    @primaryKey String? id,
    String? token,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    String? phone,
    String? password,
    @JsonKey(name: 'current_password') String? oldPassword,
    @JsonKey(name: 'password_confirmation') String? confirmation,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'availability')
    @RiderAvailabilitySerializer()
        RiderAvailability? availability,
    @JsonKey(name: 'current_latitude') @DoubleSerializer() double? lat,
    @JsonKey(name: 'current_longitude') @DoubleSerializer() double? lng,
    @JsonKey(name: 'phone_verified_at')
    @TimestampConverter()
        DateTime? phoneVerifiedAt,
    @JsonKey(name: 'average_rating') @DoubleSerializer() double? avgRating,
    @JsonKey(name: 'verification_state')
    @VerificationStatusSerializer()
        ProfileVerificationStatus? verificationStatus,
    @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') @TimestampConverter() DateTime? deletedAt,
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
        avgRating: BasicTextField(avgRating),
        phoneVerified: phoneVerifiedAt != null,
        verificationStatus: verificationStatus!,
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
        verificationStatus: verificationStatus,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}

@dao
abstract class RiderDAO extends BaseDAO<_$_RiderDTO> {
  @Query('SELECT * FROM ${RiderDTO.tableName}')
  Stream<List<_$_RiderDTO?>> watchRiders();

  @Query('SELECT * FROM ${RiderDTO.tableName}')
  Future<List<_$_RiderDTO?>> allRiders();

  @Query('SELECT * FROM ${RiderDTO.tableName} WHERE id = :id')
  Future<_$_RiderDTO?> findRider(int id);

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

class VerificationStatusSerializer
    implements JsonConverter<ProfileVerificationStatus?, String?> {
  const VerificationStatusSerializer();

  @override
  ProfileVerificationStatus fromJson(String? value) =>
      ProfileVerificationStatus.valueOf(value ?? '');

  @override
  String? toJson(ProfileVerificationStatus? instance) => instance?.name;
}

class VerificationStatusConverter
    extends TypeConverter<ProfileVerificationStatus?, String> {
  @override
  ProfileVerificationStatus decode(String databaseValue) =>
      ProfileVerificationStatus.valueOf(databaseValue);

  @override
  String encode(ProfileVerificationStatus? instance) => '${instance?.name}';
}
