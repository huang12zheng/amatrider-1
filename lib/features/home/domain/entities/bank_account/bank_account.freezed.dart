// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of bank_account.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BankAccountTearOff {
  const _$BankAccountTearOff();

  _BankAccount call(
      {required UniqueId<String?> id,
      required BasicTextField<String?> riderId,
      required BasicTextField<String?> bank,
      required BasicTextField<String?> accountName,
      required BasicTextField<String?> accountNumber,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _BankAccount(
      id: id,
      riderId: riderId,
      bank: bank,
      accountName: accountName,
      accountNumber: accountNumber,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $BankAccount = _$BankAccountTearOff();

/// @nodoc
mixin _$BankAccount {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  BasicTextField<String?> get riderId => throw _privateConstructorUsedError;
  BasicTextField<String?> get bank => throw _privateConstructorUsedError;
  BasicTextField<String?> get accountName => throw _privateConstructorUsedError;
  BasicTextField<String?> get accountNumber =>
      throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BankAccountCopyWith<BankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountCopyWith<$Res> {
  factory $BankAccountCopyWith(
          BankAccount value, $Res Function(BankAccount) then) =
      _$BankAccountCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      BasicTextField<String?> riderId,
      BasicTextField<String?> bank,
      BasicTextField<String?> accountName,
      BasicTextField<String?> accountNumber,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$BankAccountCopyWithImpl<$Res> implements $BankAccountCopyWith<$Res> {
  _$BankAccountCopyWithImpl(this._value, this._then);

  final BankAccount _value;
  // ignore: unused_field
  final $Res Function(BankAccount) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? riderId = freezed,
    Object? bank = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      bank: bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
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
abstract class _$BankAccountCopyWith<$Res>
    implements $BankAccountCopyWith<$Res> {
  factory _$BankAccountCopyWith(
          _BankAccount value, $Res Function(_BankAccount) then) =
      __$BankAccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      BasicTextField<String?> riderId,
      BasicTextField<String?> bank,
      BasicTextField<String?> accountName,
      BasicTextField<String?> accountNumber,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$BankAccountCopyWithImpl<$Res> extends _$BankAccountCopyWithImpl<$Res>
    implements _$BankAccountCopyWith<$Res> {
  __$BankAccountCopyWithImpl(
      _BankAccount _value, $Res Function(_BankAccount) _then)
      : super(_value, (v) => _then(v as _BankAccount));

  @override
  _BankAccount get _value => super._value as _BankAccount;

  @override
  $Res call({
    Object? id = freezed,
    Object? riderId = freezed,
    Object? bank = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_BankAccount(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      bank: bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
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

class _$_BankAccount extends _BankAccount {
  const _$_BankAccount(
      {required this.id,
      required this.riderId,
      required this.bank,
      required this.accountName,
      required this.accountNumber,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final BasicTextField<String?> riderId;
  @override
  final BasicTextField<String?> bank;
  @override
  final BasicTextField<String?> accountName;
  @override
  final BasicTextField<String?> accountNumber;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'BankAccount(id: $id, riderId: $riderId, bank: $bank, accountName: $accountName, accountNumber: $accountNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.riderId, riderId) || other.riderId == riderId) &&
            (identical(other.bank, bank) || other.bank == bank) &&
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
  int get hashCode => Object.hash(runtimeType, id, riderId, bank, accountName,
      accountNumber, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  _$BankAccountCopyWith<_BankAccount> get copyWith =>
      __$BankAccountCopyWithImpl<_BankAccount>(this, _$identity);
}

abstract class _BankAccount extends BankAccount {
  const factory _BankAccount(
      {required UniqueId<String?> id,
      required BasicTextField<String?> riderId,
      required BasicTextField<String?> bank,
      required BasicTextField<String?> accountName,
      required BasicTextField<String?> accountNumber,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_BankAccount;
  const _BankAccount._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  BasicTextField<String?> get riderId;
  @override
  BasicTextField<String?> get bank;
  @override
  BasicTextField<String?> get accountName;
  @override
  BasicTextField<String?> get accountNumber;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$BankAccountCopyWith<_BankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
