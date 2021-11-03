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
      createdAt:
          const TimestampConverter().fromJson(json['created_at'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updated_at'] as String?),
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
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}
