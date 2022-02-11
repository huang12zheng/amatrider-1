library user_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';
part 'user_dto.freezed.dart';

UserDTO deserializeUserDTO(Map<String, dynamic> json) => UserDTO.fromJson(json);
Map<String, dynamic> serializeUserDTO(UserDTO object) => object.toJson();

@freezed
@immutable
class UserDTO with _$UserDTO {
  const factory UserDTO({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? image,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @TimestampConverter() DateTime? deletedAt,
  }) = _UserDTO;

  const UserDTO._();

  factory UserDTO.fromDomain(User? instance) => UserDTO(
        firstName: instance?.firstName.getOrNull,
        lastName: instance?.lastName.getOrNull,
        email: instance?.email.getOrNull,
        phone: instance?.phone.getOrNull,
      );

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  User get domain => User(
        uid: UniqueId.fromExternal(id),
        firstName: DisplayName(firstName),
        lastName: DisplayName(lastName),
        email: EmailAddress(email),
        phone: Phone(phone),
        photo: MediaField(image),
        phoneAlt: Phone(phone),
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
