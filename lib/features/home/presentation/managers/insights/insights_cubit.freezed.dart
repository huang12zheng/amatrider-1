// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of insights_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InsightsStateTearOff {
  const _$InsightsStateTearOff();

  _InsightsState call(
      {bool isLoading = false,
      bool claimBonusLoading = false,
      bool depositCashLoading = false,
      bool validate = false,
      DateFilter dateFilter = DateFilter.all_time,
      required DateTime? selectedDate,
      required Insight insight,
      BankAccount? account,
      bool depositConfirmed = false,
      bool depositDialogOpen = false,
      Option<AppHttpResponse?> status = const None()}) {
    return _InsightsState(
      isLoading: isLoading,
      claimBonusLoading: claimBonusLoading,
      depositCashLoading: depositCashLoading,
      validate: validate,
      dateFilter: dateFilter,
      selectedDate: selectedDate,
      insight: insight,
      account: account,
      depositConfirmed: depositConfirmed,
      depositDialogOpen: depositDialogOpen,
      status: status,
    );
  }
}

/// @nodoc
const $InsightsState = _$InsightsStateTearOff();

/// @nodoc
mixin _$InsightsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get claimBonusLoading => throw _privateConstructorUsedError;
  bool get depositCashLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  DateFilter get dateFilter => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  Insight get insight => throw _privateConstructorUsedError;
  BankAccount? get account => throw _privateConstructorUsedError;
  bool get depositConfirmed => throw _privateConstructorUsedError;
  bool get depositDialogOpen => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InsightsStateCopyWith<InsightsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightsStateCopyWith<$Res> {
  factory $InsightsStateCopyWith(
          InsightsState value, $Res Function(InsightsState) then) =
      _$InsightsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool claimBonusLoading,
      bool depositCashLoading,
      bool validate,
      DateFilter dateFilter,
      DateTime? selectedDate,
      Insight insight,
      BankAccount? account,
      bool depositConfirmed,
      bool depositDialogOpen,
      Option<AppHttpResponse?> status});

  $InsightCopyWith<$Res> get insight;
  $BankAccountCopyWith<$Res>? get account;
}

/// @nodoc
class _$InsightsStateCopyWithImpl<$Res>
    implements $InsightsStateCopyWith<$Res> {
  _$InsightsStateCopyWithImpl(this._value, this._then);

  final InsightsState _value;
  // ignore: unused_field
  final $Res Function(InsightsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? claimBonusLoading = freezed,
    Object? depositCashLoading = freezed,
    Object? validate = freezed,
    Object? dateFilter = freezed,
    Object? selectedDate = freezed,
    Object? insight = freezed,
    Object? account = freezed,
    Object? depositConfirmed = freezed,
    Object? depositDialogOpen = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      claimBonusLoading: claimBonusLoading == freezed
          ? _value.claimBonusLoading
          : claimBonusLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      depositCashLoading: depositCashLoading == freezed
          ? _value.depositCashLoading
          : depositCashLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      dateFilter: dateFilter == freezed
          ? _value.dateFilter
          : dateFilter // ignore: cast_nullable_to_non_nullable
              as DateFilter,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      insight: insight == freezed
          ? _value.insight
          : insight // ignore: cast_nullable_to_non_nullable
              as Insight,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      depositConfirmed: depositConfirmed == freezed
          ? _value.depositConfirmed
          : depositConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      depositDialogOpen: depositDialogOpen == freezed
          ? _value.depositDialogOpen
          : depositDialogOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }

  @override
  $InsightCopyWith<$Res> get insight {
    return $InsightCopyWith<$Res>(_value.insight, (value) {
      return _then(_value.copyWith(insight: value));
    });
  }

  @override
  $BankAccountCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $BankAccountCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
abstract class _$InsightsStateCopyWith<$Res>
    implements $InsightsStateCopyWith<$Res> {
  factory _$InsightsStateCopyWith(
          _InsightsState value, $Res Function(_InsightsState) then) =
      __$InsightsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool claimBonusLoading,
      bool depositCashLoading,
      bool validate,
      DateFilter dateFilter,
      DateTime? selectedDate,
      Insight insight,
      BankAccount? account,
      bool depositConfirmed,
      bool depositDialogOpen,
      Option<AppHttpResponse?> status});

  @override
  $InsightCopyWith<$Res> get insight;
  @override
  $BankAccountCopyWith<$Res>? get account;
}

/// @nodoc
class __$InsightsStateCopyWithImpl<$Res>
    extends _$InsightsStateCopyWithImpl<$Res>
    implements _$InsightsStateCopyWith<$Res> {
  __$InsightsStateCopyWithImpl(
      _InsightsState _value, $Res Function(_InsightsState) _then)
      : super(_value, (v) => _then(v as _InsightsState));

  @override
  _InsightsState get _value => super._value as _InsightsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? claimBonusLoading = freezed,
    Object? depositCashLoading = freezed,
    Object? validate = freezed,
    Object? dateFilter = freezed,
    Object? selectedDate = freezed,
    Object? insight = freezed,
    Object? account = freezed,
    Object? depositConfirmed = freezed,
    Object? depositDialogOpen = freezed,
    Object? status = freezed,
  }) {
    return _then(_InsightsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      claimBonusLoading: claimBonusLoading == freezed
          ? _value.claimBonusLoading
          : claimBonusLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      depositCashLoading: depositCashLoading == freezed
          ? _value.depositCashLoading
          : depositCashLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      dateFilter: dateFilter == freezed
          ? _value.dateFilter
          : dateFilter // ignore: cast_nullable_to_non_nullable
              as DateFilter,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      insight: insight == freezed
          ? _value.insight
          : insight // ignore: cast_nullable_to_non_nullable
              as Insight,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      depositConfirmed: depositConfirmed == freezed
          ? _value.depositConfirmed
          : depositConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      depositDialogOpen: depositDialogOpen == freezed
          ? _value.depositDialogOpen
          : depositDialogOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_InsightsState extends _InsightsState {
  const _$_InsightsState(
      {this.isLoading = false,
      this.claimBonusLoading = false,
      this.depositCashLoading = false,
      this.validate = false,
      this.dateFilter = DateFilter.all_time,
      required this.selectedDate,
      required this.insight,
      this.account,
      this.depositConfirmed = false,
      this.depositDialogOpen = false,
      this.status = const None()})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool claimBonusLoading;
  @JsonKey()
  @override
  final bool depositCashLoading;
  @JsonKey()
  @override
  final bool validate;
  @JsonKey()
  @override
  final DateFilter dateFilter;
  @override
  final DateTime? selectedDate;
  @override
  final Insight insight;
  @override
  final BankAccount? account;
  @JsonKey()
  @override
  final bool depositConfirmed;
  @JsonKey()
  @override
  final bool depositDialogOpen;
  @JsonKey()
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'InsightsState(isLoading: $isLoading, claimBonusLoading: $claimBonusLoading, depositCashLoading: $depositCashLoading, validate: $validate, dateFilter: $dateFilter, selectedDate: $selectedDate, insight: $insight, account: $account, depositConfirmed: $depositConfirmed, depositDialogOpen: $depositDialogOpen, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InsightsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.claimBonusLoading, claimBonusLoading) &&
            const DeepCollectionEquality()
                .equals(other.depositCashLoading, depositCashLoading) &&
            const DeepCollectionEquality().equals(other.validate, validate) &&
            const DeepCollectionEquality()
                .equals(other.dateFilter, dateFilter) &&
            const DeepCollectionEquality()
                .equals(other.selectedDate, selectedDate) &&
            const DeepCollectionEquality().equals(other.insight, insight) &&
            const DeepCollectionEquality().equals(other.account, account) &&
            const DeepCollectionEquality()
                .equals(other.depositConfirmed, depositConfirmed) &&
            const DeepCollectionEquality()
                .equals(other.depositDialogOpen, depositDialogOpen) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(claimBonusLoading),
      const DeepCollectionEquality().hash(depositCashLoading),
      const DeepCollectionEquality().hash(validate),
      const DeepCollectionEquality().hash(dateFilter),
      const DeepCollectionEquality().hash(selectedDate),
      const DeepCollectionEquality().hash(insight),
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(depositConfirmed),
      const DeepCollectionEquality().hash(depositDialogOpen),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$InsightsStateCopyWith<_InsightsState> get copyWith =>
      __$InsightsStateCopyWithImpl<_InsightsState>(this, _$identity);
}

abstract class _InsightsState extends InsightsState {
  const factory _InsightsState(
      {bool isLoading,
      bool claimBonusLoading,
      bool depositCashLoading,
      bool validate,
      DateFilter dateFilter,
      required DateTime? selectedDate,
      required Insight insight,
      BankAccount? account,
      bool depositConfirmed,
      bool depositDialogOpen,
      Option<AppHttpResponse?> status}) = _$_InsightsState;
  const _InsightsState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get claimBonusLoading;
  @override
  bool get depositCashLoading;
  @override
  bool get validate;
  @override
  DateFilter get dateFilter;
  @override
  DateTime? get selectedDate;
  @override
  Insight get insight;
  @override
  BankAccount? get account;
  @override
  bool get depositConfirmed;
  @override
  bool get depositDialogOpen;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$InsightsStateCopyWith<_InsightsState> get copyWith =>
      throw _privateConstructorUsedError;
}
