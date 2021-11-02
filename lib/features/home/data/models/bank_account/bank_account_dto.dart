library bank_account_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account_dto.g.dart';
part 'bank_account_dto.freezed.dart';

@freezed
@immutable
class BankAccountDTO with _$BankAccountDTO {
  const BankAccountDTO._();

  const factory BankAccountDTO({
    String? id,
    @JsonKey(name: 'rider_id') String? riderId,
    @JsonKey(name: 'bank_name') String? bankName,
    @JsonKey(name: 'account_name') String? accountName,
    @JsonKey(name: 'account_number') String? accountNumber,
    @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt,
  }) = _BankAccountDTO;

  /// Maps BankAccount to a Data Transfer Object.
  factory BankAccountDTO.fromDomain(BankAccount? instance) => BankAccountDTO(
        bankName: instance?.bank.getOrNull,
        accountName: instance?.accountName.getOrNull,
        accountNumber: instance?.accountNumber.getOrNull,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory BankAccountDTO.fromJson(Map<String, dynamic> json) =>
      _$BankAccountDTOFromJson(json);

  /// Maps the Data Transfer Object to a BankAccount Object.
  BankAccount get domain => BankAccount(
        id: UniqueId.fromExternal(id),
        riderId: UniqueId.fromExternal(riderId),
        bank: BasicTextField(bankName),
        accountName: BasicTextField(accountName),
        accountNumber: BasicTextField(accountNumber),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
