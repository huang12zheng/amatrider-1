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
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt}) {
    return _BankAccountDTO(
      id: id,
      riderId: riderId,
      bankName: bankName,
      accountName: accountName,
      accountNumber: accountNumber,
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
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt});
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
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt});
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
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'BankAccountDTO(id: $id, riderId: $riderId, bankName: $bankName, accountName: $accountName, accountNumber: $accountNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, riderId, bankName,
      accountName, accountNumber, createdAt, updatedAt);

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
