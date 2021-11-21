// GENERATED CODE - DO NOT MODIFY BY HAND

part of bank_account_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankAccountDTO _$$_BankAccountDTOFromJson(Map<String, dynamic> json) =>
    _$_BankAccountDTO(
      id: json['id'] as String?,
      riderId: json['rider_id'] as String?,
      bankName: json['bank_name'] as String?,
      accountName: json['account_name'] as String?,
      accountNumber: json['account_number'] as String?,
      sortCode: json['sort_code'] as String?,
      data: json['data'] == null
          ? null
          : _CashDepositDTO.fromJson(json['data'] as Map<String, dynamic>),
      deposit: json['deposit'] == null
          ? null
          : _CashDepositDTO.fromJson(json['deposit'] as Map<String, dynamic>),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
    );

Map<String, dynamic> _$$_BankAccountDTOToJson(_$_BankAccountDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('rider_id', instance.riderId);
  writeNotNull('bank_name', instance.bankName);
  writeNotNull('account_name', instance.accountName);
  writeNotNull('account_number', instance.accountNumber);
  writeNotNull('sort_code', instance.sortCode);
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('deposit', instance.deposit?.toJson());
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$__CashDepositDTO _$$__CashDepositDTOFromJson(Map<String, dynamic> json) =>
    _$__CashDepositDTO(
      id: json['id'] as String?,
      reference: json['reference'] as String?,
      riderId: json['rider_id'] as String?,
      bank: json['bank'] as String?,
      accountNumber: json['account_number'] as String?,
      transferNote: json['transfer_note'] as String?,
      amount: const DoubleSerializer().fromJson(json['amount']),
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
    );

Map<String, dynamic> _$$__CashDepositDTOToJson(_$__CashDepositDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('reference', instance.reference);
  writeNotNull('rider_id', instance.riderId);
  writeNotNull('bank', instance.bank);
  writeNotNull('account_number', instance.accountNumber);
  writeNotNull('transfer_note', instance.transferNote);
  writeNotNull('amount', const DoubleSerializer().toJson(instance.amount));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}
