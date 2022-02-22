library registered_rider_dto.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered_rider_dto.g.dart';
part 'registered_rider_dto.freezed.dart';

@freezed
@immutable
class RegisteredRiderDTO with _$RegisteredRiderDTO {
  const factory RegisteredRiderDTO({
    String? status,
    RiderDTO? data,
    RiderDTO? user,
    RiderDTO? rider,
  }) = _RegisteredRiderDTO;

  const RegisteredRiderDTO._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory RegisteredRiderDTO.fromJson(Map<String, dynamic> json) => _$RegisteredRiderDTOFromJson(json);

  /// Maps the Data Transfer Object to a Domain instance.
  Rider? get domain => data?.domain ?? user?.domain ?? rider?.domain;

  RiderDTO? get dto => data ?? user ?? rider;
}
