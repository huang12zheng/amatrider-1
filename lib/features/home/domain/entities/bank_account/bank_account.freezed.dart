// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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
      required UniqueId<String?> riderId,
      required BasicTextField<String?> bank,
      required BasicTextField<String?> accountName,
      required BasicTextField<String?> accountNumber,
      required BasicTextField<String?> sortCode,
      required UniqueId<String?> reference,
      required BasicTextField<double?> amount,
      required BasicTextField<String?> transferNote,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _BankAccount(
      id: id,
      riderId: riderId,
      bank: bank,
      accountName: accountName,
      accountNumber: accountNumber,
      sortCode: sortCode,
      reference: reference,
      amount: amount,
      transferNote: transferNote,
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
  UniqueId<String?> get riderId => throw _privateConstructorUsedError;
  BasicTextField<String?> get bank => throw _privateConstructorUsedError;
  BasicTextField<String?> get accountName => throw _privateConstructorUsedError;
  BasicTextField<String?> get accountNumber =>
      throw _privateConstructorUsedError;
  BasicTextField<String?> get sortCode => throw _privateConstructorUsedError; //
  UniqueId<String?> get reference => throw _privateConstructorUsedError;
  BasicTextField<double?> get amount => throw _privateConstructorUsedError;
  BasicTextField<String?> get transferNote =>
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
      UniqueId<String?> riderId,
      BasicTextField<String?> bank,
      BasicTextField<String?> accountName,
      BasicTextField<String?> accountNumber,
      BasicTextField<String?> sortCode,
      UniqueId<String?> reference,
      BasicTextField<double?> amount,
      BasicTextField<String?> transferNote,
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
    Object? sortCode = freezed,
    Object? reference = freezed,
    Object? amount = freezed,
    Object? transferNote = freezed,
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
              as UniqueId<String?>,
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
      sortCode: sortCode == freezed
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      transferNote: transferNote == freezed
          ? _value.transferNote
          : transferNote // ignore: cast_nullable_to_non_nullable
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
      UniqueId<String?> riderId,
      BasicTextField<String?> bank,
      BasicTextField<String?> accountName,
      BasicTextField<String?> accountNumber,
      BasicTextField<String?> sortCode,
      UniqueId<String?> reference,
      BasicTextField<double?> amount,
      BasicTextField<String?> transferNote,
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
    Object? sortCode = freezed,
    Object? reference = freezed,
    Object? amount = freezed,
    Object? transferNote = freezed,
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
              as UniqueId<String?>,
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
      sortCode: sortCode == freezed
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      transferNote: transferNote == freezed
          ? _value.transferNote
          : transferNote // ignore: cast_nullable_to_non_nullable
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
      required this.sortCode,
      required this.reference,
      required this.amount,
      required this.transferNote,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final UniqueId<String?> riderId;
  @override
  final BasicTextField<String?> bank;
  @override
  final BasicTextField<String?> accountName;
  @override
  final BasicTextField<String?> accountNumber;
  @override
  final BasicTextField<String?> sortCode;
  @override //
  final UniqueId<String?> reference;
  @override
  final BasicTextField<double?> amount;
  @override
  final BasicTextField<String?> transferNote;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'BankAccount(id: $id, riderId: $riderId, bank: $bank, accountName: $accountName, accountNumber: $accountNumber, sortCode: $sortCode, reference: $reference, amount: $amount, transferNote: $transferNote, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankAccount &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.riderId, riderId) &&
            const DeepCollectionEquality().equals(other.bank, bank) &&
            const DeepCollectionEquality()
                .equals(other.accountName, accountName) &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality().equals(other.sortCode, sortCode) &&
            const DeepCollectionEquality().equals(other.reference, reference) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.transferNote, transferNote) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(riderId),
      const DeepCollectionEquality().hash(bank),
      const DeepCollectionEquality().hash(accountName),
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(sortCode),
      const DeepCollectionEquality().hash(reference),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(transferNote),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$BankAccountCopyWith<_BankAccount> get copyWith =>
      __$BankAccountCopyWithImpl<_BankAccount>(this, _$identity);
}

abstract class _BankAccount extends BankAccount {
  const factory _BankAccount(
      {required UniqueId<String?> id,
      required UniqueId<String?> riderId,
      required BasicTextField<String?> bank,
      required BasicTextField<String?> accountName,
      required BasicTextField<String?> accountNumber,
      required BasicTextField<String?> sortCode,
      required UniqueId<String?> reference,
      required BasicTextField<double?> amount,
      required BasicTextField<String?> transferNote,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_BankAccount;
  const _BankAccount._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  UniqueId<String?> get riderId;
  @override
  BasicTextField<String?> get bank;
  @override
  BasicTextField<String?> get accountName;
  @override
  BasicTextField<String?> get accountNumber;
  @override
  BasicTextField<String?> get sortCode;
  @override //
  UniqueId<String?> get reference;
  @override
  BasicTextField<double?> get amount;
  @override
  BasicTextField<String?> get transferNote;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$BankAccountCopyWith<_BankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
