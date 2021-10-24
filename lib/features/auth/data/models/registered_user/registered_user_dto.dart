library registered_user_dto.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered_user_dto.g.dart';
part 'registered_user_dto.freezed.dart';

@freezed
@immutable
class RegisteredUserDTO with _$RegisteredUserDTO {
  const factory RegisteredUserDTO({
    @JsonKey(includeIfNull: false) String? status,
    @JsonKey(includeIfNull: false) UserDTO? data,
    @JsonKey(includeIfNull: false) UserDTO? user,
  }) = _RegisteredUserDTO;

  const RegisteredUserDTO._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory RegisteredUserDTO.fromJson(Map<String, dynamic> json) =>
      _$RegisteredUserDTOFromJson(json);

  /// Maps the Data Transfer Object to a Domain instance.
  User? get domain => data?.domain ?? user?.domain;

  UserDTO? get dto => data ?? user;
}
