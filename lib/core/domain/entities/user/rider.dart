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
    @Default(ProfileVerificationStatus.unverified)
        ProfileVerificationStatus verificationStatus,
    @Default(false) bool phoneVerified,
    required BasicTextField<double?> avgRating,
    @Default(AuthProvider.regular) AuthProvider provider,
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
        avgRating: BasicTextField(null),
        location: RiderLocation(
          lat: BasicTextField(null),
          lng: BasicTextField(null),
          address: BasicTextField(null),
        ),
      );

  Rider merge(Rider? value) => copyWith(
        uid: value != null && value.uid.value != null ? value.uid : uid,
        firstName: value?.firstName.isNotNull((it) => it as DisplayName,
                orElse: (_) => firstName) ??
            firstName,
        lastName: value?.lastName.isNotNull((it) => it as DisplayName,
                orElse: (_) => lastName) ??
            lastName,
        email: value?.email
                .isNotNull((it) => it as EmailAddress, orElse: (_) => email) ??
            email,
        password: value?.password
                .isNotNull((it) => it as Password, orElse: (_) => password) ??
            password,
        phone:
            value?.phone.isNotNull((it) => it as Phone, orElse: (_) => phone) ??
                phone,
        photo: value?.photo
                .isNotNull((it) => it as PhotoField, orElse: (_) => photo) ??
            photo,
        location: value?.location ?? location,
        availability: value?.availability ?? availability,
        verificationStatus: value?.verificationStatus ?? verificationStatus,
        phoneVerified: value?.phoneVerified ?? phoneVerified,
        avgRating: value?.avgRating.isNotNull(
                (it) => it as BasicTextField<double?>,
                orElse: (_) => avgRating) ??
            avgRating,
        provider: value?.provider ?? provider,
        createdAt: value?.createdAt ?? createdAt,
        updatedAt: value?.updatedAt ?? updatedAt,
        deletedAt: value?.deletedAt ?? deletedAt,
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

  Option<FieldObjectException<dynamic>> get socials => firstName.mapped
      .andThen(lastName.mapped)
      .andThen(phone.mapped)
      .fold((f) => some(f), (_) => none());
}

extension RiderAvailabilityX on RiderAvailability {
  bool get boolean => this == RiderAvailability.available;

  T when<T>({
    required T Function() available,
    required T Function() unavailable,
  }) {
    switch (this) {
      case RiderAvailability.available:
        return available.call();
      case RiderAvailability.unavailable:
        return unavailable.call();
      default:
        return unavailable.call();
    }
  }
}
