// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of request_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestStateTearOff {
  const _$RequestStateTearOff();

  _RequestState call(
      {bool isLoading = false,
      bool validate = false,
      bool isAccepting = false,
      bool isDeclining = false,
      bool isLoadingInTransit = false,
      bool isLoadingActive = false,
      bool isLoadingPotential = false,
      Logistics? current,
      KtList<Logistics> inTransit = const KtList.empty(),
      KtList<Logistics> active = const KtList.empty(),
      KtList<Logistics> potential = const KtList.empty(),
      Option<AppHttpResponse?> status = const None()}) {
    return _RequestState(
      isLoading: isLoading,
      validate: validate,
      isAccepting: isAccepting,
      isDeclining: isDeclining,
      isLoadingInTransit: isLoadingInTransit,
      isLoadingActive: isLoadingActive,
      isLoadingPotential: isLoadingPotential,
      current: current,
      inTransit: inTransit,
      active: active,
      potential: potential,
      status: status,
    );
  }
}

/// @nodoc
const $RequestState = _$RequestStateTearOff();

/// @nodoc
mixin _$RequestState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isAccepting => throw _privateConstructorUsedError;
  bool get isDeclining => throw _privateConstructorUsedError;
  bool get isLoadingInTransit => throw _privateConstructorUsedError;
  bool get isLoadingActive => throw _privateConstructorUsedError;
  bool get isLoadingPotential => throw _privateConstructorUsedError;
  Logistics? get current => throw _privateConstructorUsedError;
  KtList<Logistics> get inTransit => throw _privateConstructorUsedError;
  KtList<Logistics> get active => throw _privateConstructorUsedError;
  KtList<Logistics> get potential => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestStateCopyWith<RequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<$Res> {
  factory $RequestStateCopyWith(
          RequestState value, $Res Function(RequestState) then) =
      _$RequestStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      bool isAccepting,
      bool isDeclining,
      bool isLoadingInTransit,
      bool isLoadingActive,
      bool isLoadingPotential,
      Logistics? current,
      KtList<Logistics> inTransit,
      KtList<Logistics> active,
      KtList<Logistics> potential,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class _$RequestStateCopyWithImpl<$Res> implements $RequestStateCopyWith<$Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  final RequestState _value;
  // ignore: unused_field
  final $Res Function(RequestState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? isAccepting = freezed,
    Object? isDeclining = freezed,
    Object? isLoadingInTransit = freezed,
    Object? isLoadingActive = freezed,
    Object? isLoadingPotential = freezed,
    Object? current = freezed,
    Object? inTransit = freezed,
    Object? active = freezed,
    Object? potential = freezed,
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
      isAccepting: isAccepting == freezed
          ? _value.isAccepting
          : isAccepting // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeclining: isDeclining == freezed
          ? _value.isDeclining
          : isDeclining // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingInTransit: isLoadingInTransit == freezed
          ? _value.isLoadingInTransit
          : isLoadingInTransit // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingActive: isLoadingActive == freezed
          ? _value.isLoadingActive
          : isLoadingActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingPotential: isLoadingPotential == freezed
          ? _value.isLoadingPotential
          : isLoadingPotential // ignore: cast_nullable_to_non_nullable
              as bool,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Logistics?,
      inTransit: inTransit == freezed
          ? _value.inTransit
          : inTransit // ignore: cast_nullable_to_non_nullable
              as KtList<Logistics>,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as KtList<Logistics>,
      potential: potential == freezed
          ? _value.potential
          : potential // ignore: cast_nullable_to_non_nullable
              as KtList<Logistics>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc
abstract class _$RequestStateCopyWith<$Res>
    implements $RequestStateCopyWith<$Res> {
  factory _$RequestStateCopyWith(
          _RequestState value, $Res Function(_RequestState) then) =
      __$RequestStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      bool isAccepting,
      bool isDeclining,
      bool isLoadingInTransit,
      bool isLoadingActive,
      bool isLoadingPotential,
      Logistics? current,
      KtList<Logistics> inTransit,
      KtList<Logistics> active,
      KtList<Logistics> potential,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class __$RequestStateCopyWithImpl<$Res> extends _$RequestStateCopyWithImpl<$Res>
    implements _$RequestStateCopyWith<$Res> {
  __$RequestStateCopyWithImpl(
      _RequestState _value, $Res Function(_RequestState) _then)
      : super(_value, (v) => _then(v as _RequestState));

  @override
  _RequestState get _value => super._value as _RequestState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? isAccepting = freezed,
    Object? isDeclining = freezed,
    Object? isLoadingInTransit = freezed,
    Object? isLoadingActive = freezed,
    Object? isLoadingPotential = freezed,
    Object? current = freezed,
    Object? inTransit = freezed,
    Object? active = freezed,
    Object? potential = freezed,
    Object? status = freezed,
  }) {
    return _then(_RequestState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccepting: isAccepting == freezed
          ? _value.isAccepting
          : isAccepting // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeclining: isDeclining == freezed
          ? _value.isDeclining
          : isDeclining // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingInTransit: isLoadingInTransit == freezed
          ? _value.isLoadingInTransit
          : isLoadingInTransit // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingActive: isLoadingActive == freezed
          ? _value.isLoadingActive
          : isLoadingActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingPotential: isLoadingPotential == freezed
          ? _value.isLoadingPotential
          : isLoadingPotential // ignore: cast_nullable_to_non_nullable
              as bool,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Logistics?,
      inTransit: inTransit == freezed
          ? _value.inTransit
          : inTransit // ignore: cast_nullable_to_non_nullable
              as KtList<Logistics>,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as KtList<Logistics>,
      potential: potential == freezed
          ? _value.potential
          : potential // ignore: cast_nullable_to_non_nullable
              as KtList<Logistics>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_RequestState extends _RequestState with DiagnosticableTreeMixin {
  const _$_RequestState(
      {this.isLoading = false,
      this.validate = false,
      this.isAccepting = false,
      this.isDeclining = false,
      this.isLoadingInTransit = false,
      this.isLoadingActive = false,
      this.isLoadingPotential = false,
      this.current,
      this.inTransit = const KtList.empty(),
      this.active = const KtList.empty(),
      this.potential = const KtList.empty(),
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
  final bool isAccepting;
  @JsonKey()
  @override
  final bool isDeclining;
  @JsonKey()
  @override
  final bool isLoadingInTransit;
  @JsonKey()
  @override
  final bool isLoadingActive;
  @JsonKey()
  @override
  final bool isLoadingPotential;
  @override
  final Logistics? current;
  @JsonKey()
  @override
  final KtList<Logistics> inTransit;
  @JsonKey()
  @override
  final KtList<Logistics> active;
  @JsonKey()
  @override
  final KtList<Logistics> potential;
  @JsonKey()
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestState(isLoading: $isLoading, validate: $validate, isAccepting: $isAccepting, isDeclining: $isDeclining, isLoadingInTransit: $isLoadingInTransit, isLoadingActive: $isLoadingActive, isLoadingPotential: $isLoadingPotential, current: $current, inTransit: $inTransit, active: $active, potential: $potential, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('validate', validate))
      ..add(DiagnosticsProperty('isAccepting', isAccepting))
      ..add(DiagnosticsProperty('isDeclining', isDeclining))
      ..add(DiagnosticsProperty('isLoadingInTransit', isLoadingInTransit))
      ..add(DiagnosticsProperty('isLoadingActive', isLoadingActive))
      ..add(DiagnosticsProperty('isLoadingPotential', isLoadingPotential))
      ..add(DiagnosticsProperty('current', current))
      ..add(DiagnosticsProperty('inTransit', inTransit))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('potential', potential))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.validate, validate) &&
            const DeepCollectionEquality()
                .equals(other.isAccepting, isAccepting) &&
            const DeepCollectionEquality()
                .equals(other.isDeclining, isDeclining) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingInTransit, isLoadingInTransit) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingActive, isLoadingActive) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingPotential, isLoadingPotential) &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.inTransit, inTransit) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.potential, potential) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(validate),
      const DeepCollectionEquality().hash(isAccepting),
      const DeepCollectionEquality().hash(isDeclining),
      const DeepCollectionEquality().hash(isLoadingInTransit),
      const DeepCollectionEquality().hash(isLoadingActive),
      const DeepCollectionEquality().hash(isLoadingPotential),
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(inTransit),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(potential),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$RequestStateCopyWith<_RequestState> get copyWith =>
      __$RequestStateCopyWithImpl<_RequestState>(this, _$identity);
}

abstract class _RequestState extends RequestState {
  const factory _RequestState(
      {bool isLoading,
      bool validate,
      bool isAccepting,
      bool isDeclining,
      bool isLoadingInTransit,
      bool isLoadingActive,
      bool isLoadingPotential,
      Logistics? current,
      KtList<Logistics> inTransit,
      KtList<Logistics> active,
      KtList<Logistics> potential,
      Option<AppHttpResponse?> status}) = _$_RequestState;
  const _RequestState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  bool get isAccepting;
  @override
  bool get isDeclining;
  @override
  bool get isLoadingInTransit;
  @override
  bool get isLoadingActive;
  @override
  bool get isLoadingPotential;
  @override
  Logistics? get current;
  @override
  KtList<Logistics> get inTransit;
  @override
  KtList<Logistics> get active;
  @override
  KtList<Logistics> get potential;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$RequestStateCopyWith<_RequestState> get copyWith =>
      throw _privateConstructorUsedError;
}
