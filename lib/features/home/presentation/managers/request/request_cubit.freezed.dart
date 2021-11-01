// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
      bool isLoadingTransitPackages = false,
      bool isLoadingActivePackages = false,
      bool isLoadingPotentialPackages = false,
      SendPackage? currentPackage,
      KtList<SendPackage> packagesInTransit = const KtList.empty(),
      KtList<SendPackage> activePackages = const KtList.empty(),
      KtList<SendPackage> potentialPackages = const KtList.empty(),
      Option<AppHttpResponse?> status = const None()}) {
    return _RequestState(
      isLoading: isLoading,
      validate: validate,
      isAccepting: isAccepting,
      isDeclining: isDeclining,
      isLoadingTransitPackages: isLoadingTransitPackages,
      isLoadingActivePackages: isLoadingActivePackages,
      isLoadingPotentialPackages: isLoadingPotentialPackages,
      currentPackage: currentPackage,
      packagesInTransit: packagesInTransit,
      activePackages: activePackages,
      potentialPackages: potentialPackages,
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
  bool get isLoadingTransitPackages => throw _privateConstructorUsedError;
  bool get isLoadingActivePackages => throw _privateConstructorUsedError;
  bool get isLoadingPotentialPackages => throw _privateConstructorUsedError;
  SendPackage? get currentPackage => throw _privateConstructorUsedError;
  KtList<SendPackage> get packagesInTransit =>
      throw _privateConstructorUsedError;
  KtList<SendPackage> get activePackages => throw _privateConstructorUsedError;
  KtList<SendPackage> get potentialPackages =>
      throw _privateConstructorUsedError;
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
      bool isLoadingTransitPackages,
      bool isLoadingActivePackages,
      bool isLoadingPotentialPackages,
      SendPackage? currentPackage,
      KtList<SendPackage> packagesInTransit,
      KtList<SendPackage> activePackages,
      KtList<SendPackage> potentialPackages,
      Option<AppHttpResponse?> status});

  $SendPackageCopyWith<$Res>? get currentPackage;
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
    Object? isLoadingTransitPackages = freezed,
    Object? isLoadingActivePackages = freezed,
    Object? isLoadingPotentialPackages = freezed,
    Object? currentPackage = freezed,
    Object? packagesInTransit = freezed,
    Object? activePackages = freezed,
    Object? potentialPackages = freezed,
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
      isLoadingTransitPackages: isLoadingTransitPackages == freezed
          ? _value.isLoadingTransitPackages
          : isLoadingTransitPackages // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingActivePackages: isLoadingActivePackages == freezed
          ? _value.isLoadingActivePackages
          : isLoadingActivePackages // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingPotentialPackages: isLoadingPotentialPackages == freezed
          ? _value.isLoadingPotentialPackages
          : isLoadingPotentialPackages // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPackage: currentPackage == freezed
          ? _value.currentPackage
          : currentPackage // ignore: cast_nullable_to_non_nullable
              as SendPackage?,
      packagesInTransit: packagesInTransit == freezed
          ? _value.packagesInTransit
          : packagesInTransit // ignore: cast_nullable_to_non_nullable
              as KtList<SendPackage>,
      activePackages: activePackages == freezed
          ? _value.activePackages
          : activePackages // ignore: cast_nullable_to_non_nullable
              as KtList<SendPackage>,
      potentialPackages: potentialPackages == freezed
          ? _value.potentialPackages
          : potentialPackages // ignore: cast_nullable_to_non_nullable
              as KtList<SendPackage>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }

  @override
  $SendPackageCopyWith<$Res>? get currentPackage {
    if (_value.currentPackage == null) {
      return null;
    }

    return $SendPackageCopyWith<$Res>(_value.currentPackage!, (value) {
      return _then(_value.copyWith(currentPackage: value));
    });
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
      bool isLoadingTransitPackages,
      bool isLoadingActivePackages,
      bool isLoadingPotentialPackages,
      SendPackage? currentPackage,
      KtList<SendPackage> packagesInTransit,
      KtList<SendPackage> activePackages,
      KtList<SendPackage> potentialPackages,
      Option<AppHttpResponse?> status});

  @override
  $SendPackageCopyWith<$Res>? get currentPackage;
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
    Object? isLoadingTransitPackages = freezed,
    Object? isLoadingActivePackages = freezed,
    Object? isLoadingPotentialPackages = freezed,
    Object? currentPackage = freezed,
    Object? packagesInTransit = freezed,
    Object? activePackages = freezed,
    Object? potentialPackages = freezed,
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
      isLoadingTransitPackages: isLoadingTransitPackages == freezed
          ? _value.isLoadingTransitPackages
          : isLoadingTransitPackages // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingActivePackages: isLoadingActivePackages == freezed
          ? _value.isLoadingActivePackages
          : isLoadingActivePackages // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingPotentialPackages: isLoadingPotentialPackages == freezed
          ? _value.isLoadingPotentialPackages
          : isLoadingPotentialPackages // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPackage: currentPackage == freezed
          ? _value.currentPackage
          : currentPackage // ignore: cast_nullable_to_non_nullable
              as SendPackage?,
      packagesInTransit: packagesInTransit == freezed
          ? _value.packagesInTransit
          : packagesInTransit // ignore: cast_nullable_to_non_nullable
              as KtList<SendPackage>,
      activePackages: activePackages == freezed
          ? _value.activePackages
          : activePackages // ignore: cast_nullable_to_non_nullable
              as KtList<SendPackage>,
      potentialPackages: potentialPackages == freezed
          ? _value.potentialPackages
          : potentialPackages // ignore: cast_nullable_to_non_nullable
              as KtList<SendPackage>,
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
      this.isLoadingTransitPackages = false,
      this.isLoadingActivePackages = false,
      this.isLoadingPotentialPackages = false,
      this.currentPackage,
      this.packagesInTransit = const KtList.empty(),
      this.activePackages = const KtList.empty(),
      this.potentialPackages = const KtList.empty(),
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
  final bool isAccepting;
  @JsonKey(defaultValue: false)
  @override
  final bool isDeclining;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingTransitPackages;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingActivePackages;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingPotentialPackages;
  @override
  final SendPackage? currentPackage;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<SendPackage> packagesInTransit;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<SendPackage> activePackages;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<SendPackage> potentialPackages;
  @JsonKey(defaultValue: const None())
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestState(isLoading: $isLoading, validate: $validate, isAccepting: $isAccepting, isDeclining: $isDeclining, isLoadingTransitPackages: $isLoadingTransitPackages, isLoadingActivePackages: $isLoadingActivePackages, isLoadingPotentialPackages: $isLoadingPotentialPackages, currentPackage: $currentPackage, packagesInTransit: $packagesInTransit, activePackages: $activePackages, potentialPackages: $potentialPackages, status: $status)';
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
      ..add(DiagnosticsProperty(
          'isLoadingTransitPackages', isLoadingTransitPackages))
      ..add(DiagnosticsProperty(
          'isLoadingActivePackages', isLoadingActivePackages))
      ..add(DiagnosticsProperty(
          'isLoadingPotentialPackages', isLoadingPotentialPackages))
      ..add(DiagnosticsProperty('currentPackage', currentPackage))
      ..add(DiagnosticsProperty('packagesInTransit', packagesInTransit))
      ..add(DiagnosticsProperty('activePackages', activePackages))
      ..add(DiagnosticsProperty('potentialPackages', potentialPackages))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.isAccepting, isAccepting) ||
                other.isAccepting == isAccepting) &&
            (identical(other.isDeclining, isDeclining) ||
                other.isDeclining == isDeclining) &&
            (identical(
                    other.isLoadingTransitPackages, isLoadingTransitPackages) ||
                other.isLoadingTransitPackages == isLoadingTransitPackages) &&
            (identical(
                    other.isLoadingActivePackages, isLoadingActivePackages) ||
                other.isLoadingActivePackages == isLoadingActivePackages) &&
            (identical(other.isLoadingPotentialPackages,
                    isLoadingPotentialPackages) ||
                other.isLoadingPotentialPackages ==
                    isLoadingPotentialPackages) &&
            (identical(other.currentPackage, currentPackage) ||
                other.currentPackage == currentPackage) &&
            (identical(other.packagesInTransit, packagesInTransit) ||
                other.packagesInTransit == packagesInTransit) &&
            (identical(other.activePackages, activePackages) ||
                other.activePackages == activePackages) &&
            (identical(other.potentialPackages, potentialPackages) ||
                other.potentialPackages == potentialPackages) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      validate,
      isAccepting,
      isDeclining,
      isLoadingTransitPackages,
      isLoadingActivePackages,
      isLoadingPotentialPackages,
      currentPackage,
      packagesInTransit,
      activePackages,
      potentialPackages,
      status);

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
      bool isLoadingTransitPackages,
      bool isLoadingActivePackages,
      bool isLoadingPotentialPackages,
      SendPackage? currentPackage,
      KtList<SendPackage> packagesInTransit,
      KtList<SendPackage> activePackages,
      KtList<SendPackage> potentialPackages,
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
  bool get isLoadingTransitPackages;
  @override
  bool get isLoadingActivePackages;
  @override
  bool get isLoadingPotentialPackages;
  @override
  SendPackage? get currentPackage;
  @override
  KtList<SendPackage> get packagesInTransit;
  @override
  KtList<SendPackage> get activePackages;
  @override
  KtList<SendPackage> get potentialPackages;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$RequestStateCopyWith<_RequestState> get copyWith =>
      throw _privateConstructorUsedError;
}
