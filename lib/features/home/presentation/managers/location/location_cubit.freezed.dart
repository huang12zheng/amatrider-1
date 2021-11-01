// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of location_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationState call(
      {bool isLoading = false,
      bool validate = false,
      bool isRequestingPermissions = false,
      bool isRequestingService = false,
      bool hasPermissions = false,
      bool isServiceEnabled = false,
      bool isBackgroundEnabled = false,
      RiderLocation? position,
      KtList<Future<dynamic>> operations = const KtList.empty(),
      Option<AppHttpResponse?> status = const None()}) {
    return _LocationState(
      isLoading: isLoading,
      validate: validate,
      isRequestingPermissions: isRequestingPermissions,
      isRequestingService: isRequestingService,
      hasPermissions: hasPermissions,
      isServiceEnabled: isServiceEnabled,
      isBackgroundEnabled: isBackgroundEnabled,
      position: position,
      operations: operations,
      status: status,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isRequestingPermissions => throw _privateConstructorUsedError;
  bool get isRequestingService => throw _privateConstructorUsedError;
  bool get hasPermissions => throw _privateConstructorUsedError;
  bool get isServiceEnabled => throw _privateConstructorUsedError;
  bool get isBackgroundEnabled => throw _privateConstructorUsedError;
  RiderLocation? get position => throw _privateConstructorUsedError;
  KtList<Future<dynamic>> get operations => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      bool isRequestingPermissions,
      bool isRequestingService,
      bool hasPermissions,
      bool isServiceEnabled,
      bool isBackgroundEnabled,
      RiderLocation? position,
      KtList<Future<dynamic>> operations,
      Option<AppHttpResponse?> status});

  $RiderLocationCopyWith<$Res>? get position;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? isRequestingPermissions = freezed,
    Object? isRequestingService = freezed,
    Object? hasPermissions = freezed,
    Object? isServiceEnabled = freezed,
    Object? isBackgroundEnabled = freezed,
    Object? position = freezed,
    Object? operations = freezed,
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
      isRequestingPermissions: isRequestingPermissions == freezed
          ? _value.isRequestingPermissions
          : isRequestingPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequestingService: isRequestingService == freezed
          ? _value.isRequestingService
          : isRequestingService // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPermissions: hasPermissions == freezed
          ? _value.hasPermissions
          : hasPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      isServiceEnabled: isServiceEnabled == freezed
          ? _value.isServiceEnabled
          : isServiceEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBackgroundEnabled: isBackgroundEnabled == freezed
          ? _value.isBackgroundEnabled
          : isBackgroundEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as RiderLocation?,
      operations: operations == freezed
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as KtList<Future<dynamic>>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }

  @override
  $RiderLocationCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $RiderLocationCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
abstract class _$LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(
          _LocationState value, $Res Function(_LocationState) then) =
      __$LocationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      bool isRequestingPermissions,
      bool isRequestingService,
      bool hasPermissions,
      bool isServiceEnabled,
      bool isBackgroundEnabled,
      RiderLocation? position,
      KtList<Future<dynamic>> operations,
      Option<AppHttpResponse?> status});

  @override
  $RiderLocationCopyWith<$Res>? get position;
}

/// @nodoc
class __$LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(
      _LocationState _value, $Res Function(_LocationState) _then)
      : super(_value, (v) => _then(v as _LocationState));

  @override
  _LocationState get _value => super._value as _LocationState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? isRequestingPermissions = freezed,
    Object? isRequestingService = freezed,
    Object? hasPermissions = freezed,
    Object? isServiceEnabled = freezed,
    Object? isBackgroundEnabled = freezed,
    Object? position = freezed,
    Object? operations = freezed,
    Object? status = freezed,
  }) {
    return _then(_LocationState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequestingPermissions: isRequestingPermissions == freezed
          ? _value.isRequestingPermissions
          : isRequestingPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequestingService: isRequestingService == freezed
          ? _value.isRequestingService
          : isRequestingService // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPermissions: hasPermissions == freezed
          ? _value.hasPermissions
          : hasPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      isServiceEnabled: isServiceEnabled == freezed
          ? _value.isServiceEnabled
          : isServiceEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBackgroundEnabled: isBackgroundEnabled == freezed
          ? _value.isBackgroundEnabled
          : isBackgroundEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as RiderLocation?,
      operations: operations == freezed
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as KtList<Future<dynamic>>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_LocationState extends _LocationState {
  const _$_LocationState(
      {this.isLoading = false,
      this.validate = false,
      this.isRequestingPermissions = false,
      this.isRequestingService = false,
      this.hasPermissions = false,
      this.isServiceEnabled = false,
      this.isBackgroundEnabled = false,
      this.position,
      this.operations = const KtList.empty(),
      this.status = const None()})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: false)
  @override
  final bool isRequestingPermissions;
  @JsonKey(defaultValue: false)
  @override
  final bool isRequestingService;
  @JsonKey(defaultValue: false)
  @override
  final bool hasPermissions;
  @JsonKey(defaultValue: false)
  @override
  final bool isServiceEnabled;
  @JsonKey(defaultValue: false)
  @override
  final bool isBackgroundEnabled;
  @override
  final RiderLocation? position;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Future<dynamic>> operations;
  @JsonKey(defaultValue: const None())
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'LocationState(isLoading: $isLoading, validate: $validate, isRequestingPermissions: $isRequestingPermissions, isRequestingService: $isRequestingService, hasPermissions: $hasPermissions, isServiceEnabled: $isServiceEnabled, isBackgroundEnabled: $isBackgroundEnabled, position: $position, operations: $operations, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(
                    other.isRequestingPermissions, isRequestingPermissions) ||
                other.isRequestingPermissions == isRequestingPermissions) &&
            (identical(other.isRequestingService, isRequestingService) ||
                other.isRequestingService == isRequestingService) &&
            (identical(other.hasPermissions, hasPermissions) ||
                other.hasPermissions == hasPermissions) &&
            (identical(other.isServiceEnabled, isServiceEnabled) ||
                other.isServiceEnabled == isServiceEnabled) &&
            (identical(other.isBackgroundEnabled, isBackgroundEnabled) ||
                other.isBackgroundEnabled == isBackgroundEnabled) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.operations, operations) ||
                other.operations == operations) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      validate,
      isRequestingPermissions,
      isRequestingService,
      hasPermissions,
      isServiceEnabled,
      isBackgroundEnabled,
      position,
      operations,
      status);

  @JsonKey(ignore: true)
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState extends LocationState {
  const factory _LocationState(
      {bool isLoading,
      bool validate,
      bool isRequestingPermissions,
      bool isRequestingService,
      bool hasPermissions,
      bool isServiceEnabled,
      bool isBackgroundEnabled,
      RiderLocation? position,
      KtList<Future<dynamic>> operations,
      Option<AppHttpResponse?> status}) = _$_LocationState;
  const _LocationState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  bool get isRequestingPermissions;
  @override
  bool get isRequestingService;
  @override
  bool get hasPermissions;
  @override
  bool get isServiceEnabled;
  @override
  bool get isBackgroundEnabled;
  @override
  RiderLocation? get position;
  @override
  KtList<Future<dynamic>> get operations;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
