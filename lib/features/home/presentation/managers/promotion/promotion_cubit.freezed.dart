// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of promotion_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PromotionStateTearOff {
  const _$PromotionStateTearOff();

  _PromotionState call(
      {bool isLoading = false,
      bool isLoadingMorePromotions = false,
      bool validate = false,
      required Promotion currentPromotion,
      KtList<Promotion> promotions = const KtList.empty(),
      Option<AppHttpResponse?> status = const None()}) {
    return _PromotionState(
      isLoading: isLoading,
      isLoadingMorePromotions: isLoadingMorePromotions,
      validate: validate,
      currentPromotion: currentPromotion,
      promotions: promotions,
      status: status,
    );
  }
}

/// @nodoc
const $PromotionState = _$PromotionStateTearOff();

/// @nodoc
mixin _$PromotionState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMorePromotions => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError; //
  Promotion get currentPromotion => throw _privateConstructorUsedError;
  KtList<Promotion> get promotions => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionStateCopyWith<PromotionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionStateCopyWith<$Res> {
  factory $PromotionStateCopyWith(
          PromotionState value, $Res Function(PromotionState) then) =
      _$PromotionStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isLoadingMorePromotions,
      bool validate,
      Promotion currentPromotion,
      KtList<Promotion> promotions,
      Option<AppHttpResponse?> status});

  $PromotionCopyWith<$Res> get currentPromotion;
}

/// @nodoc
class _$PromotionStateCopyWithImpl<$Res>
    implements $PromotionStateCopyWith<$Res> {
  _$PromotionStateCopyWithImpl(this._value, this._then);

  final PromotionState _value;
  // ignore: unused_field
  final $Res Function(PromotionState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingMorePromotions = freezed,
    Object? validate = freezed,
    Object? currentPromotion = freezed,
    Object? promotions = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMorePromotions: isLoadingMorePromotions == freezed
          ? _value.isLoadingMorePromotions
          : isLoadingMorePromotions // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPromotion: currentPromotion == freezed
          ? _value.currentPromotion
          : currentPromotion // ignore: cast_nullable_to_non_nullable
              as Promotion,
      promotions: promotions == freezed
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as KtList<Promotion>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }

  @override
  $PromotionCopyWith<$Res> get currentPromotion {
    return $PromotionCopyWith<$Res>(_value.currentPromotion, (value) {
      return _then(_value.copyWith(currentPromotion: value));
    });
  }
}

/// @nodoc
abstract class _$PromotionStateCopyWith<$Res>
    implements $PromotionStateCopyWith<$Res> {
  factory _$PromotionStateCopyWith(
          _PromotionState value, $Res Function(_PromotionState) then) =
      __$PromotionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isLoadingMorePromotions,
      bool validate,
      Promotion currentPromotion,
      KtList<Promotion> promotions,
      Option<AppHttpResponse?> status});

  @override
  $PromotionCopyWith<$Res> get currentPromotion;
}

/// @nodoc
class __$PromotionStateCopyWithImpl<$Res>
    extends _$PromotionStateCopyWithImpl<$Res>
    implements _$PromotionStateCopyWith<$Res> {
  __$PromotionStateCopyWithImpl(
      _PromotionState _value, $Res Function(_PromotionState) _then)
      : super(_value, (v) => _then(v as _PromotionState));

  @override
  _PromotionState get _value => super._value as _PromotionState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingMorePromotions = freezed,
    Object? validate = freezed,
    Object? currentPromotion = freezed,
    Object? promotions = freezed,
    Object? status = freezed,
  }) {
    return _then(_PromotionState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMorePromotions: isLoadingMorePromotions == freezed
          ? _value.isLoadingMorePromotions
          : isLoadingMorePromotions // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPromotion: currentPromotion == freezed
          ? _value.currentPromotion
          : currentPromotion // ignore: cast_nullable_to_non_nullable
              as Promotion,
      promotions: promotions == freezed
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as KtList<Promotion>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_PromotionState extends _PromotionState {
  const _$_PromotionState(
      {this.isLoading = false,
      this.isLoadingMorePromotions = false,
      this.validate = false,
      required this.currentPromotion,
      this.promotions = const KtList.empty(),
      this.status = const None()})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isLoadingMorePromotions;
  @JsonKey()
  @override
  final bool validate;
  @override //
  final Promotion currentPromotion;
  @JsonKey()
  @override
  final KtList<Promotion> promotions;
  @JsonKey()
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'PromotionState(isLoading: $isLoading, isLoadingMorePromotions: $isLoadingMorePromotions, validate: $validate, currentPromotion: $currentPromotion, promotions: $promotions, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PromotionState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(
                other.isLoadingMorePromotions, isLoadingMorePromotions) &&
            const DeepCollectionEquality().equals(other.validate, validate) &&
            const DeepCollectionEquality()
                .equals(other.currentPromotion, currentPromotion) &&
            const DeepCollectionEquality()
                .equals(other.promotions, promotions) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoadingMorePromotions),
      const DeepCollectionEquality().hash(validate),
      const DeepCollectionEquality().hash(currentPromotion),
      const DeepCollectionEquality().hash(promotions),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$PromotionStateCopyWith<_PromotionState> get copyWith =>
      __$PromotionStateCopyWithImpl<_PromotionState>(this, _$identity);
}

abstract class _PromotionState extends PromotionState {
  const factory _PromotionState(
      {bool isLoading,
      bool isLoadingMorePromotions,
      bool validate,
      required Promotion currentPromotion,
      KtList<Promotion> promotions,
      Option<AppHttpResponse?> status}) = _$_PromotionState;
  const _PromotionState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isLoadingMorePromotions;
  @override
  bool get validate;
  @override //
  Promotion get currentPromotion;
  @override
  KtList<Promotion> get promotions;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$PromotionStateCopyWith<_PromotionState> get copyWith =>
      throw _privateConstructorUsedError;
}
