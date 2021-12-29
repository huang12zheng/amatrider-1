library social_user_dto.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_user_dto.g.dart';
part 'social_user_dto.freezed.dart';

@freezed
@immutable
class SocialUserDTO with _$SocialUserDTO {
  const SocialUserDTO._();

  const factory SocialUserDTO({
    String? status,
    @IntegerSerializer() int? code,
    String? message,
    RiderDTO? data,
    RiderDTO? user,
  }) = _SocialUserDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory SocialUserDTO.fromJson(Map<String, dynamic> json) =>
      _$SocialUserDTOFromJson(json);

  /// Maps the Data Transfer Object to a Domain instance.
  Rider? get domain => data?.domain ?? user?.domain;

  RiderDTO? get dto => data ?? user;
}
