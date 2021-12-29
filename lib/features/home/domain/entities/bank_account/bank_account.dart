library bank_account.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account.freezed.dart';

@freezed
@immutable
class BankAccount with _$BankAccount {
  const BankAccount._();

  const factory BankAccount({
    required UniqueId<String?> id,
    required UniqueId<String?> riderId,
    required BasicTextField<String?> bank,
    required BasicTextField<String?> accountName,
    required BasicTextField<String?> accountNumber,
    required BasicTextField<String?> sortCode,
    //
    required UniqueId<String?> reference,
    required BasicTextField<double?> amount,
    required BasicTextField<String?> transferNote,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _BankAccount;

  Option<FieldObjectException<dynamic>> get failure => bank.mapped
      .andThen(accountName.mapped)
      .andThen(accountNumber.mapped)
      .fold((f) => some(f), (_) => none());

  factory BankAccount.blank() => BankAccount(
        id: UniqueId.fromExternal(null),
        riderId: UniqueId.fromExternal(null),
        bank: BasicTextField(null),
        accountName: BasicTextField(null),
        accountNumber: BasicTextField(null),
        sortCode: BasicTextField(null, validate: false),
        //
        reference: UniqueId.fromExternal(null),
        amount: BasicTextField(null),
        transferNote: BasicTextField(null),
      );
}
