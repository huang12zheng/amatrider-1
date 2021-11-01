library rider.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rider.freezed.dart';

enum RiderAvailability { available, unavailable }

@freezed
@immutable
class Rider with _$Rider {
  const Rider._();

  const factory Rider({
    required UniqueId<String?> uid,
    required DisplayName firstName,
    required DisplayName lastName,
    required EmailAddress email,
    required Phone phone,
    required Password password,
    required PhotoField photo,
    @Default(RiderAvailability.unavailable) RiderAvailability availability,
    required RiderLocation location,
    @Default(false) bool phoneVerified,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Rider;

  DisplayName get fullName {
    return lastName.getOrNull
            ?.let((it) => DisplayName('${firstName.getOrEmpty} $it')) ??
        DisplayName('${firstName.getOrEmpty}');
  }

  factory Rider.blank({
    DisplayName? firstName,
    DisplayName? lastName,
    EmailAddress? email,
    Phone? phone,
    Password? password,
  }) =>
      Rider(
        uid: UniqueId.fromExternal(null),
        firstName: firstName ?? DisplayName(null),
        lastName: lastName ?? DisplayName(null),
        email: email ?? EmailAddress(null),
        phone: phone ?? Phone(null),
        photo: PhotoField(null),
        password: password ?? Password(null),
        location: RiderLocation(
          lat: BasicTextField(null),
          lng: BasicTextField(null),
          address: BasicTextField(null),
        ),
      );

  Option<FieldObjectException<dynamic>> get signup => firstName.mapped
      .andThen(lastName.mapped)
      .andThen(email.mapped)
      .andThen(password.mapped)
      .andThen(phone.mapped)
      .fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get login =>
      email.mapped.andThen(password.mapped).fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get reset =>
      phone.mapped.andThen(password.mapped).fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get profile => firstName.mapped
      .andThen(lastName.mapped)
      .andThen(email.mapped)
      .fold((f) => some(f), (_) => none());
}
