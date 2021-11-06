// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of reviews_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewsStateTearOff {
  const _$ReviewsStateTearOff();

  _ReviewsState call(
      {bool isLoading = false,
      bool validate = false,
      required Review review,
      Option<AppHttpResponse?> status = const None()}) {
    return _ReviewsState(
      isLoading: isLoading,
      validate: validate,
      review: review,
      status: status,
    );
  }
}

/// @nodoc
const $ReviewsState = _$ReviewsStateTearOff();

/// @nodoc
mixin _$ReviewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  Review get review => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewsStateCopyWith<ReviewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsStateCopyWith<$Res> {
  factory $ReviewsStateCopyWith(
          ReviewsState value, $Res Function(ReviewsState) then) =
      _$ReviewsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      Review review,
      Option<AppHttpResponse?> status});

  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class _$ReviewsStateCopyWithImpl<$Res> implements $ReviewsStateCopyWith<$Res> {
  _$ReviewsStateCopyWithImpl(this._value, this._then);

  final ReviewsState _value;
  // ignore: unused_field
  final $Res Function(ReviewsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? review = freezed,
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
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }

  @override
  $ReviewCopyWith<$Res> get review {
    return $ReviewCopyWith<$Res>(_value.review, (value) {
      return _then(_value.copyWith(review: value));
    });
  }
}

/// @nodoc
abstract class _$ReviewsStateCopyWith<$Res>
    implements $ReviewsStateCopyWith<$Res> {
  factory _$ReviewsStateCopyWith(
          _ReviewsState value, $Res Function(_ReviewsState) then) =
      __$ReviewsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      Review review,
      Option<AppHttpResponse?> status});

  @override
  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class __$ReviewsStateCopyWithImpl<$Res> extends _$ReviewsStateCopyWithImpl<$Res>
    implements _$ReviewsStateCopyWith<$Res> {
  __$ReviewsStateCopyWithImpl(
      _ReviewsState _value, $Res Function(_ReviewsState) _then)
      : super(_value, (v) => _then(v as _ReviewsState));

  @override
  _ReviewsState get _value => super._value as _ReviewsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? review = freezed,
    Object? status = freezed,
  }) {
    return _then(_ReviewsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_ReviewsState extends _ReviewsState {
  const _$_ReviewsState(
      {this.isLoading = false,
      this.validate = false,
      required this.review,
      this.status = const None()})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @override
  final Review review;
  @JsonKey(defaultValue: const None())
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'ReviewsState(isLoading: $isLoading, validate: $validate, review: $review, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, validate, review, status);

  @JsonKey(ignore: true)
  @override
  _$ReviewsStateCopyWith<_ReviewsState> get copyWith =>
      __$ReviewsStateCopyWithImpl<_ReviewsState>(this, _$identity);
}

abstract class _ReviewsState extends ReviewsState {
  const factory _ReviewsState(
      {bool isLoading,
      bool validate,
      required Review review,
      Option<AppHttpResponse?> status}) = _$_ReviewsState;
  const _ReviewsState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  Review get review;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$ReviewsStateCopyWith<_ReviewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
