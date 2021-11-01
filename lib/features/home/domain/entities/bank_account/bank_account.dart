library bank_account.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account.freezed.dart';

@freezed
@immutable
class BankAccount with _$BankAccount {
  const BankAccount._();

  const factory BankAccount({
    required UniqueId<String?> id,
    required BasicTextField<String?> riderId,
    required BasicTextField<String?> bank,
    required BasicTextField<String?> accountName,
    required BasicTextField<String?> accountNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _BankAccount;
}
