// ignore_for_file: unused_element

library bank_account_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'bank_account_dto.freezed.dart';
part 'bank_account_dto.g.dart';

@freezed
@immutable
class BankAccountDTO with _$BankAccountDTO {
  const factory BankAccountDTO({
    String? id,
    @JsonKey(name: 'rider_id') String? riderId,
    @JsonKey(name: 'bank_name') String? bankName,
    @JsonKey(name: 'account_name') String? accountName,
    @JsonKey(name: 'account_number') String? accountNumber,
    @JsonKey(name: 'sort_code') String? sortCode,
    _CashDepositDTO? data,
    _CashDepositDTO? deposit,
    @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt,
  }) = _BankAccountDTO;

  const BankAccountDTO._();

  /// Maps BankAccount to a Data Transfer Object.
  factory BankAccountDTO.fromDomain(BankAccount? instance) => BankAccountDTO(
        bankName: instance?.bank.getOrNull,
        accountName: instance?.accountName.getOrNull,
        accountNumber: instance?.accountNumber.getOrNull,
        sortCode: instance?.sortCode.getOrNull,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory BankAccountDTO.fromJson(Map<String, dynamic> json) =>
      _$BankAccountDTOFromJson(json);

  /// Maps the Data Transfer Object to a BankAccount Object.
  BankAccount get domain => BankAccount(
        id: UniqueId.fromExternal(id ?? deposit?.id),
        riderId: UniqueId.fromExternal(riderId ?? deposit?.riderId),
        reference: UniqueId.fromExternal(data?.reference),
        amount: BasicTextField(deposit?.amount),
        bank: BasicTextField(bankName ?? data?.bank),
        accountName: BasicTextField(accountName),
        accountNumber: BasicTextField(accountNumber ?? data?.accountNumber),
        sortCode: BasicTextField(sortCode, validate: false),
        transferNote: BasicTextField(data?.transferNote),
        createdAt: createdAt ?? deposit?.createdAt,
        updatedAt: updatedAt ?? deposit?.updatedAt,
      );
}

@freezed
@immutable
class _CashDepositDTO with _$_CashDepositDTO {
  const _CashDepositDTO._();

  const factory _CashDepositDTO({
    String? id,
    String? reference,
    @JsonKey(name: 'rider_id') String? riderId,
    @JsonKey(name: 'bank') String? bank,
    @JsonKey(name: 'account_number') String? accountNumber,
    @JsonKey(name: 'transfer_note') String? transferNote,
    @DoubleSerializer() double? amount,
    @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt,
  }) = __CashDepositDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _CashDepositDTO.fromJson(Map<String, dynamic> json) =>
      _$_CashDepositDTOFromJson(json);
}

extension BankAccountDTOListX on List<BankAccountDTO> {
  KtList<BankAccount> get domain => KtList.from(map((e) => e.domain).toList());
}
