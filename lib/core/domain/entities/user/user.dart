library user;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
@immutable
class User with _$User {
  const User._();

  const factory User({
    required UniqueId<String?> uid,
    required DisplayName firstName,
    required DisplayName lastName,
    DisplayName? fullName,
    required EmailAddress email,
    required Phone phone,
    required Password password,
    required PhotoField photo,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _User;

  DisplayName get name {
    final name = fullName?.let((it) => it.isValid ? it : null) ??
        DisplayName('${firstName.getOrEmpty} ${lastName.getOrEmpty}');

    return name;
  }

  factory User.blank({
    DisplayName? firstName,
    DisplayName? lastName,
    EmailAddress? email,
    Phone? phone,
    Password? password,
    Password? confirmation,
  }) =>
      User(
        uid: UniqueId.fromExternal(null),
        firstName: firstName ?? DisplayName(null),
        lastName: lastName ?? DisplayName(null),
        email: email ?? EmailAddress(null),
        phone: phone ?? Phone(null),
        photo: PhotoField(null),
        password: password ?? Password(null),
      );

  factory User.guest() => User(
        uid: UniqueId.fromExternal('00-9i'),
        firstName: DisplayName('Captain'),
        lastName: DisplayName('Jack'),
        fullName: DisplayName('Captain Jack'),
        email: EmailAddress('emilyshawn@amazon.com'),
        phone: Phone(
          '(+44) 776 6273507',
          // Country.DEFAULT,
          mode: FIELD_VALIDATION.NONE,
        ),
        photo: PhotoField(AppAssets.avatarImg),
        password: Password(null),
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
