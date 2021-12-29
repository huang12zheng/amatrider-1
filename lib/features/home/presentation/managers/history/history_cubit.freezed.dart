// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of history_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

  _HistoryState call(
      {bool isLoading = false,
      bool validate = false,
      KtMap<DateTime?, KtList<DeliveryHistory>> historyCollection =
          const KtMap.empty(),
      KtList<DeliveryHistory> histories = const KtList.empty(),
      Option<AppHttpResponse?> status = const None()}) {
    return _HistoryState(
      isLoading: isLoading,
      validate: validate,
      historyCollection: historyCollection,
      histories: histories,
      status: status,
    );
  }
}

/// @nodoc
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  KtMap<DateTime?, KtList<DeliveryHistory>> get historyCollection =>
      throw _privateConstructorUsedError;
  KtList<DeliveryHistory> get histories => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      KtMap<DateTime?, KtList<DeliveryHistory>> historyCollection,
      KtList<DeliveryHistory> histories,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? historyCollection = freezed,
    Object? histories = freezed,
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
      historyCollection: historyCollection == freezed
          ? _value.historyCollection
          : historyCollection // ignore: cast_nullable_to_non_nullable
              as KtMap<DateTime?, KtList<DeliveryHistory>>,
      histories: histories == freezed
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as KtList<DeliveryHistory>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc
abstract class _$HistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$HistoryStateCopyWith(
          _HistoryState value, $Res Function(_HistoryState) then) =
      __$HistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      KtMap<DateTime?, KtList<DeliveryHistory>> historyCollection,
      KtList<DeliveryHistory> histories,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class __$HistoryStateCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
    implements _$HistoryStateCopyWith<$Res> {
  __$HistoryStateCopyWithImpl(
      _HistoryState _value, $Res Function(_HistoryState) _then)
      : super(_value, (v) => _then(v as _HistoryState));

  @override
  _HistoryState get _value => super._value as _HistoryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? historyCollection = freezed,
    Object? histories = freezed,
    Object? status = freezed,
  }) {
    return _then(_HistoryState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      historyCollection: historyCollection == freezed
          ? _value.historyCollection
          : historyCollection // ignore: cast_nullable_to_non_nullable
              as KtMap<DateTime?, KtList<DeliveryHistory>>,
      histories: histories == freezed
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as KtList<DeliveryHistory>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_HistoryState extends _HistoryState {
  const _$_HistoryState(
      {this.isLoading = false,
      this.validate = false,
      this.historyCollection = const KtMap.empty(),
      this.histories = const KtList.empty(),
      this.status = const None()})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool validate;
  @JsonKey()
  @override
  final KtMap<DateTime?, KtList<DeliveryHistory>> historyCollection;
  @JsonKey()
  @override
  final KtList<DeliveryHistory> histories;
  @JsonKey()
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'HistoryState(isLoading: $isLoading, validate: $validate, historyCollection: $historyCollection, histories: $histories, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.validate, validate) &&
            const DeepCollectionEquality()
                .equals(other.historyCollection, historyCollection) &&
            const DeepCollectionEquality().equals(other.histories, histories) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(validate),
      const DeepCollectionEquality().hash(historyCollection),
      const DeepCollectionEquality().hash(histories),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      __$HistoryStateCopyWithImpl<_HistoryState>(this, _$identity);
}

abstract class _HistoryState extends HistoryState {
  const factory _HistoryState(
      {bool isLoading,
      bool validate,
      KtMap<DateTime?, KtList<DeliveryHistory>> historyCollection,
      KtList<DeliveryHistory> histories,
      Option<AppHttpResponse?> status}) = _$_HistoryState;
  const _HistoryState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  KtMap<DateTime?, KtList<DeliveryHistory>> get historyCollection;
  @override
  KtList<DeliveryHistory> get histories;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
