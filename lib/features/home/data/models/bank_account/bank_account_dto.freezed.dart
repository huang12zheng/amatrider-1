// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of bank_account_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankAccountDTO _$BankAccountDTOFromJson(Map<String, dynamic> json) {
  return _BankAccountDTO.fromJson(json);
}

/// @nodoc
class _$BankAccountDTOTearOff {
  const _$BankAccountDTOTearOff();

  _BankAccountDTO call(
      {String? id,
      @JsonKey(name: 'rider_id') String? riderId,
      @JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'account_name') String? accountName,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'sort_code') String? sortCode,
      _CashDepositDTO? data,
      _CashDepositDTO? deposit,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt}) {
    return _BankAccountDTO(
      id: id,
      riderId: riderId,
      bankName: bankName,
      accountName: accountName,
      accountNumber: accountNumber,
      sortCode: sortCode,
      data: data,
      deposit: deposit,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  BankAccountDTO fromJson(Map<String, Object?> json) {
    return BankAccountDTO.fromJson(json);
  }
}

/// @nodoc
const $BankAccountDTO = _$BankAccountDTOTearOff();

/// @nodoc
mixin _$BankAccountDTO {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_id')
  String? get riderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_name')
  String? get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_name')
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String? get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_code')
  String? get sortCode => throw _privateConstructorUsedError;
  _CashDepositDTO? get data => throw _privateConstructorUsedError;
  _CashDepositDTO? get deposit => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankAccountDTOCopyWith<BankAccountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountDTOCopyWith<$Res> {
  factory $BankAccountDTOCopyWith(
          BankAccountDTO value, $Res Function(BankAccountDTO) then) =
      _$BankAccountDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'rider_id') String? riderId,
      @JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'account_name') String? accountName,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'sort_code') String? sortCode,
      _CashDepositDTO? data,
      _CashDepositDTO? deposit,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt});

  _$CashDepositDTOCopyWith<$Res>? get data;
  _$CashDepositDTOCopyWith<$Res>? get deposit;
}

/// @nodoc
class _$BankAccountDTOCopyWithImpl<$Res>
    implements $BankAccountDTOCopyWith<$Res> {
  _$BankAccountDTOCopyWithImpl(this._value, this._then);

  final BankAccountDTO _value;
  // ignore: unused_field
  final $Res Function(BankAccountDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? riderId = freezed,
    Object? bankName = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
    Object? data = freezed,
    Object? deposit = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sortCode: sortCode == freezed
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _CashDepositDTO?,
      deposit: deposit == freezed
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as _CashDepositDTO?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  _$CashDepositDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return _$CashDepositDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  _$CashDepositDTOCopyWith<$Res>? get deposit {
    if (_value.deposit == null) {
      return null;
    }

    return _$CashDepositDTOCopyWith<$Res>(_value.deposit!, (value) {
      return _then(_value.copyWith(deposit: value));
    });
  }
}

/// @nodoc
abstract class _$BankAccountDTOCopyWith<$Res>
    implements $BankAccountDTOCopyWith<$Res> {
  factory _$BankAccountDTOCopyWith(
          _BankAccountDTO value, $Res Function(_BankAccountDTO) then) =
      __$BankAccountDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'rider_id') String? riderId,
      @JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'account_name') String? accountName,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'sort_code') String? sortCode,
      _CashDepositDTO? data,
      _CashDepositDTO? deposit,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt});

  @override
  _$CashDepositDTOCopyWith<$Res>? get data;
  @override
  _$CashDepositDTOCopyWith<$Res>? get deposit;
}

/// @nodoc
class __$BankAccountDTOCopyWithImpl<$Res>
    extends _$BankAccountDTOCopyWithImpl<$Res>
    implements _$BankAccountDTOCopyWith<$Res> {
  __$BankAccountDTOCopyWithImpl(
      _BankAccountDTO _value, $Res Function(_BankAccountDTO) _then)
      : super(_value, (v) => _then(v as _BankAccountDTO));

  @override
  _BankAccountDTO get _value => super._value as _BankAccountDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? riderId = freezed,
    Object? bankName = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
    Object? data = freezed,
    Object? deposit = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_BankAccountDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sortCode: sortCode == freezed
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _CashDepositDTO?,
      deposit: deposit == freezed
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as _CashDepositDTO?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankAccountDTO extends _BankAccountDTO {
  const _$_BankAccountDTO(
      {this.id,
      @JsonKey(name: 'rider_id') this.riderId,
      @JsonKey(name: 'bank_name') this.bankName,
      @JsonKey(name: 'account_name') this.accountName,
      @JsonKey(name: 'account_number') this.accountNumber,
      @JsonKey(name: 'sort_code') this.sortCode,
      this.data,
      this.deposit,
      @JsonKey(name: 'created_at') @TimestampConverter() this.createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_BankAccountDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BankAccountDTOFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'rider_id')
  final String? riderId;
  @override
  @JsonKey(name: 'bank_name')
  final String? bankName;
  @override
  @JsonKey(name: 'account_name')
  final String? accountName;
  @override
  @JsonKey(name: 'account_number')
  final String? accountNumber;
  @override
  @JsonKey(name: 'sort_code')
  final String? sortCode;
  @override
  final _CashDepositDTO? data;
  @override
  final _CashDepositDTO? deposit;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'BankAccountDTO(id: $id, riderId: $riderId, bankName: $bankName, accountName: $accountName, accountNumber: $accountNumber, sortCode: $sortCode, data: $data, deposit: $deposit, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankAccountDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.riderId, riderId) || other.riderId == riderId) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.sortCode, sortCode) ||
                other.sortCode == sortCode) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      riderId,
      bankName,
      accountName,
      accountNumber,
      sortCode,
      data,
      deposit,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  _$BankAccountDTOCopyWith<_BankAccountDTO> get copyWith =>
      __$BankAccountDTOCopyWithImpl<_BankAccountDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankAccountDTOToJson(this);
  }
}

abstract class _BankAccountDTO extends BankAccountDTO {
  const factory _BankAccountDTO(
      {String? id,
      @JsonKey(name: 'rider_id')
          String? riderId,
      @JsonKey(name: 'bank_name')
          String? bankName,
      @JsonKey(name: 'account_name')
          String? accountName,
      @JsonKey(name: 'account_number')
          String? accountNumber,
      @JsonKey(name: 'sort_code')
          String? sortCode,
      _CashDepositDTO? data,
      _CashDepositDTO? deposit,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt}) = _$_BankAccountDTO;
  const _BankAccountDTO._() : super._();

  factory _BankAccountDTO.fromJson(Map<String, dynamic> json) =
      _$_BankAccountDTO.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'rider_id')
  String? get riderId;
  @override
  @JsonKey(name: 'bank_name')
  String? get bankName;
  @override
  @JsonKey(name: 'account_name')
  String? get accountName;
  @override
  @JsonKey(name: 'account_number')
  String? get accountNumber;
  @override
  @JsonKey(name: 'sort_code')
  String? get sortCode;
  @override
  _CashDepositDTO? get data;
  @override
  _CashDepositDTO? get deposit;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$BankAccountDTOCopyWith<_BankAccountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_CashDepositDTO _$_CashDepositDTOFromJson(Map<String, dynamic> json) {
  return __CashDepositDTO.fromJson(json);
}

/// @nodoc
class _$_CashDepositDTOTearOff {
  const _$_CashDepositDTOTearOff();

  __CashDepositDTO call(
      {String? id,
      String? reference,
      @JsonKey(name: 'rider_id') String? riderId,
      @JsonKey(name: 'bank') String? bank,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'transfer_note') String? transferNote,
      @DoubleSerializer() double? amount,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt}) {
    return __CashDepositDTO(
      id: id,
      reference: reference,
      riderId: riderId,
      bank: bank,
      accountNumber: accountNumber,
      transferNote: transferNote,
      amount: amount,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  _CashDepositDTO fromJson(Map<String, Object?> json) {
    return _CashDepositDTO.fromJson(json);
  }
}

/// @nodoc
const _$CashDepositDTO = _$_CashDepositDTOTearOff();

/// @nodoc
mixin _$_CashDepositDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_id')
  String? get riderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank')
  String? get bank => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String? get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'transfer_note')
  String? get transferNote => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CashDepositDTOCopyWith<_CashDepositDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CashDepositDTOCopyWith<$Res> {
  factory _$CashDepositDTOCopyWith(
          _CashDepositDTO value, $Res Function(_CashDepositDTO) then) =
      __$CashDepositDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? reference,
      @JsonKey(name: 'rider_id') String? riderId,
      @JsonKey(name: 'bank') String? bank,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'transfer_note') String? transferNote,
      @DoubleSerializer() double? amount,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$CashDepositDTOCopyWithImpl<$Res>
    implements _$CashDepositDTOCopyWith<$Res> {
  __$CashDepositDTOCopyWithImpl(this._value, this._then);

  final _CashDepositDTO _value;
  // ignore: unused_field
  final $Res Function(_CashDepositDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? reference = freezed,
    Object? riderId = freezed,
    Object? bank = freezed,
    Object? accountNumber = freezed,
    Object? transferNote = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transferNote: transferNote == freezed
          ? _value.transferNote
          : transferNote // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$_CashDepositDTOCopyWith<$Res>
    implements _$CashDepositDTOCopyWith<$Res> {
  factory _$_CashDepositDTOCopyWith(
          __CashDepositDTO value, $Res Function(__CashDepositDTO) then) =
      __$_CashDepositDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? reference,
      @JsonKey(name: 'rider_id') String? riderId,
      @JsonKey(name: 'bank') String? bank,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'transfer_note') String? transferNote,
      @DoubleSerializer() double? amount,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$_CashDepositDTOCopyWithImpl<$Res>
    extends __$CashDepositDTOCopyWithImpl<$Res>
    implements _$_CashDepositDTOCopyWith<$Res> {
  __$_CashDepositDTOCopyWithImpl(
      __CashDepositDTO _value, $Res Function(__CashDepositDTO) _then)
      : super(_value, (v) => _then(v as __CashDepositDTO));

  @override
  __CashDepositDTO get _value => super._value as __CashDepositDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? reference = freezed,
    Object? riderId = freezed,
    Object? bank = freezed,
    Object? accountNumber = freezed,
    Object? transferNote = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(__CashDepositDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transferNote: transferNote == freezed
          ? _value.transferNote
          : transferNote // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__CashDepositDTO extends __CashDepositDTO {
  const _$__CashDepositDTO(
      {this.id,
      this.reference,
      @JsonKey(name: 'rider_id') this.riderId,
      @JsonKey(name: 'bank') this.bank,
      @JsonKey(name: 'account_number') this.accountNumber,
      @JsonKey(name: 'transfer_note') this.transferNote,
      @DoubleSerializer() this.amount,
      @JsonKey(name: 'created_at') @TimestampConverter() this.createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() this.updatedAt})
      : super._();

  factory _$__CashDepositDTO.fromJson(Map<String, dynamic> json) =>
      _$$__CashDepositDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? reference;
  @override
  @JsonKey(name: 'rider_id')
  final String? riderId;
  @override
  @JsonKey(name: 'bank')
  final String? bank;
  @override
  @JsonKey(name: 'account_number')
  final String? accountNumber;
  @override
  @JsonKey(name: 'transfer_note')
  final String? transferNote;
  @override
  @DoubleSerializer()
  final double? amount;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return '_CashDepositDTO(id: $id, reference: $reference, riderId: $riderId, bank: $bank, accountNumber: $accountNumber, transferNote: $transferNote, amount: $amount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __CashDepositDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.riderId, riderId) || other.riderId == riderId) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.transferNote, transferNote) ||
                other.transferNote == transferNote) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, reference, riderId, bank,
      accountNumber, transferNote, amount, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  _$_CashDepositDTOCopyWith<__CashDepositDTO> get copyWith =>
      __$_CashDepositDTOCopyWithImpl<__CashDepositDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__CashDepositDTOToJson(this);
  }
}

abstract class __CashDepositDTO extends _CashDepositDTO {
  const factory __CashDepositDTO(
      {String? id,
      String? reference,
      @JsonKey(name: 'rider_id')
          String? riderId,
      @JsonKey(name: 'bank')
          String? bank,
      @JsonKey(name: 'account_number')
          String? accountNumber,
      @JsonKey(name: 'transfer_note')
          String? transferNote,
      @DoubleSerializer()
          double? amount,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt}) = _$__CashDepositDTO;
  const __CashDepositDTO._() : super._();

  factory __CashDepositDTO.fromJson(Map<String, dynamic> json) =
      _$__CashDepositDTO.fromJson;

  @override
  String? get id;
  @override
  String? get reference;
  @override
  @JsonKey(name: 'rider_id')
  String? get riderId;
  @override
  @JsonKey(name: 'bank')
  String? get bank;
  @override
  @JsonKey(name: 'account_number')
  String? get accountNumber;
  @override
  @JsonKey(name: 'transfer_note')
  String? get transferNote;
  @override
  @DoubleSerializer()
  double? get amount;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$_CashDepositDTOCopyWith<__CashDepositDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
