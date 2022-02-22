library user;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'user.freezed.dart';

@freezed
@immutable
class User extends BaseEntity with _$User {
  const factory User({
    required UniqueId<String?> uid,
    required DisplayName firstName,
    required DisplayName lastName,
    required EmailAddress email,
    required Phone phone,
    required Phone phoneAlt,
    required MediaField photo,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _User;

  const User._();

  // static KtList<String> _splitFullName(String? fullName) => fullName == null ? KtList.from([]) : KtList.from(fullName.split(' '));

  factory User.blank({
    String? uid,
    String? fullName,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? phoneAlt,
    String? photo,
  }) =>
      User(
        uid: UniqueId.fromExternal(uid),
        firstName: DisplayName(firstName ?? fullName),
        // lastName: DisplayName(lastName ?? _splitFullName(fullName).lastOrNull()),
        lastName: DisplayName(lastName),
        email: EmailAddress(email),
        phone: Phone(phone),
        phoneAlt: Phone(phoneAlt),
        photo: MediaField(photo),
      );

  User merge(User? value) => copyWith(
        uid: value?.uid ?? uid,
        firstName: value?.firstName ?? firstName,
        lastName: value?.lastName ?? lastName,
        email: value?.email ?? email,
        phone: value?.phone ?? phone,
        phoneAlt: value?.phoneAlt ?? phoneAlt,
        photo: value?.photo ?? photo,
        createdAt: value?.createdAt ?? createdAt,
        updatedAt: value?.updatedAt ?? updatedAt,
        deletedAt: value?.deletedAt ?? deletedAt,
      );

  @override
  UniqueId<String?> get id => uid;

  DisplayName get fullName {
    return lastName.getOrNull?.let((it) => DisplayName('${firstName.getOrEmpty} $it')) ?? DisplayName('${firstName.getOrEmpty}');
  }

  bool get isEmptyObj => this == User.blank();
}
