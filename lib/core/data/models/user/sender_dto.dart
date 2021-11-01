library sender_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sender_dto.g.dart';
part 'sender_dto.freezed.dart';

@freezed
@immutable
class SenderDTO with _$SenderDTO {
  const SenderDTO._();

  const factory SenderDTO({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeIfNull: false, name: 'first_name') String? firstName,
    @JsonKey(includeIfNull: false, name: 'last_name') String? lastName,
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false, name: 'image') String? image,
    @JsonKey(includeIfNull: false, name: 'created_at')
    @TimestampConverter()
        DateTime? createdAt,
  }) = _SenderDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory SenderDTO.fromJson(Map<String, dynamic> json) =>
      _$SenderDTOFromJson(json);

  /// Maps the Data Transfer Object to a Sender Object.
  Sender get domain => Sender(
        uid: UniqueId.fromExternal(id),
        firstName: DisplayName(firstName),
        lastName: DisplayName(lastName),
        email: EmailAddress(email),
        phone: Phone(phone),
        photo: PhotoField(image),
        createdAt: createdAt,
      );
}
