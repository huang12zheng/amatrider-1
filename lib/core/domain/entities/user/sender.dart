library sender.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sender.freezed.dart';

@freezed
@immutable
class Sender with _$Sender {
  const Sender._();

  const factory Sender({
    required UniqueId<String?> uid,
    required DisplayName firstName,
    required DisplayName lastName,
    required EmailAddress email,
    required Phone phone,
    required PhotoField photo,
    DateTime? createdAt,
  }) = _Sender;

  DisplayName get fullName =>
      lastName.getOrNull
          ?.let((it) => DisplayName('${firstName.getOrEmpty} $it')) ??
      DisplayName('${firstName.getOrEmpty}');

  Sender merge(Sender? value) => copyWith(
        uid: value?.uid ?? uid,
        firstName: value?.firstName ?? firstName,
        lastName: value?.lastName ?? lastName,
        email: value?.email ?? email,
        phone: value?.phone ?? phone,
        photo: value?.photo ?? photo,
        createdAt: value?.createdAt ?? createdAt,
      );

  factory Sender.blank() => Sender(
        uid: UniqueId.fromExternal(null),
        firstName: DisplayName(null),
        lastName: DisplayName(null),
        email: EmailAddress(null),
        phone: Phone(null),
        photo: PhotoField(null),
      );
}
