// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
      bool validate = false,
      DateFilter dateFilter = DateFilter.monthly,
      required DateTime? selectedDate,
      required Insight insight,
      Option<AppHttpResponse?> status = const None()}) {
    return _InsightsState(
      isLoading: isLoading,
      validate: validate,
      dateFilter: dateFilter,
      selectedDate: selectedDate,
      insight: insight,
      status: status,
    );
  }
}

/// @nodoc
const $InsightsState = _$InsightsStateTearOff();

/// @nodoc
mixin _$InsightsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  DateFilter get dateFilter => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  Insight get insight => throw _privateConstructorUsedError;
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
      bool validate,
      DateFilter dateFilter,
      DateTime? selectedDate,
      Insight insight,
      Option<AppHttpResponse?> status});

  $InsightCopyWith<$Res> get insight;
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
    Object? validate = freezed,
    Object? dateFilter = freezed,
    Object? selectedDate = freezed,
    Object? insight = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
      bool validate,
      DateFilter dateFilter,
      DateTime? selectedDate,
      Insight insight,
      Option<AppHttpResponse?> status});

  @override
  $InsightCopyWith<$Res> get insight;
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
    Object? validate = freezed,
    Object? dateFilter = freezed,
    Object? selectedDate = freezed,
    Object? insight = freezed,
    Object? status = freezed,
  }) {
    return _then(_InsightsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
      this.validate = false,
      this.dateFilter = DateFilter.monthly,
      required this.selectedDate,
      required this.insight,
      this.status = const None()})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: DateFilter.monthly)
  @override
  final DateFilter dateFilter;
  @override
  final DateTime? selectedDate;
  @override
  final Insight insight;
  @JsonKey(defaultValue: const None())
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'InsightsState(isLoading: $isLoading, validate: $validate, dateFilter: $dateFilter, selectedDate: $selectedDate, insight: $insight, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InsightsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.dateFilter, dateFilter) ||
                other.dateFilter == dateFilter) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.insight, insight) || other.insight == insight) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, validate, dateFilter,
      selectedDate, insight, status);

  @JsonKey(ignore: true)
  @override
  _$InsightsStateCopyWith<_InsightsState> get copyWith =>
      __$InsightsStateCopyWithImpl<_InsightsState>(this, _$identity);
}

abstract class _InsightsState extends InsightsState {
  const factory _InsightsState(
      {bool isLoading,
      bool validate,
      DateFilter dateFilter,
      required DateTime? selectedDate,
      required Insight insight,
      Option<AppHttpResponse?> status}) = _$_InsightsState;
  const _InsightsState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  DateFilter get dateFilter;
  @override
  DateTime? get selectedDate;
  @override
  Insight get insight;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$InsightsStateCopyWith<_InsightsState> get copyWith =>
      throw _privateConstructorUsedError;
}
