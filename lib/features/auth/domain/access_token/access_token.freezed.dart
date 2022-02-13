// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of access_token.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccessTokenTearOff {
  const _$AccessTokenTearOff();

  _AccessToken call(
      {required BasicTextField<String?> accessToken,
      required TokenType tokenType,
      required BasicTextField<int?> expiryDate}) {
    return _AccessToken(
      accessToken: accessToken,
      tokenType: tokenType,
      expiryDate: expiryDate,
    );
  }
}

/// @nodoc
const $AccessToken = _$AccessTokenTearOff();

/// @nodoc
mixin _$AccessToken {
  BasicTextField<String?> get accessToken => throw _privateConstructorUsedError;
  TokenType get tokenType => throw _privateConstructorUsedError;
  BasicTextField<int?> get expiryDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccessTokenCopyWith<AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenCopyWith<$Res> {
  factory $AccessTokenCopyWith(
          AccessToken value, $Res Function(AccessToken) then) =
      _$AccessTokenCopyWithImpl<$Res>;
  $Res call(
      {BasicTextField<String?> accessToken,
      TokenType tokenType,
      BasicTextField<int?> expiryDate});
}

/// @nodoc
class _$AccessTokenCopyWithImpl<$Res> implements $AccessTokenCopyWith<$Res> {
  _$AccessTokenCopyWithImpl(this._value, this._then);

  final AccessToken _value;
  // ignore: unused_field
  final $Res Function(AccessToken) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiryDate = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
      expiryDate: expiryDate == freezed
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
    ));
  }
}

/// @nodoc
abstract class _$AccessTokenCopyWith<$Res>
    implements $AccessTokenCopyWith<$Res> {
  factory _$AccessTokenCopyWith(
          _AccessToken value, $Res Function(_AccessToken) then) =
      __$AccessTokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {BasicTextField<String?> accessToken,
      TokenType tokenType,
      BasicTextField<int?> expiryDate});
}

/// @nodoc
class __$AccessTokenCopyWithImpl<$Res> extends _$AccessTokenCopyWithImpl<$Res>
    implements _$AccessTokenCopyWith<$Res> {
  __$AccessTokenCopyWithImpl(
      _AccessToken _value, $Res Function(_AccessToken) _then)
      : super(_value, (v) => _then(v as _AccessToken));

  @override
  _AccessToken get _value => super._value as _AccessToken;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiryDate = freezed,
  }) {
    return _then(_AccessToken(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
      expiryDate: expiryDate == freezed
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
    ));
  }
}

/// @nodoc

class _$_AccessToken extends _AccessToken {
  const _$_AccessToken(
      {required this.accessToken,
      required this.tokenType,
      required this.expiryDate})
      : super._();

  @override
  final BasicTextField<String?> accessToken;
  @override
  final TokenType tokenType;
  @override
  final BasicTextField<int?> expiryDate;

  @override
  String toString() {
    return 'AccessToken(accessToken: $accessToken, tokenType: $tokenType, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccessToken &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality().equals(other.tokenType, tokenType) &&
            const DeepCollectionEquality()
                .equals(other.expiryDate, expiryDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(tokenType),
      const DeepCollectionEquality().hash(expiryDate));

  @JsonKey(ignore: true)
  @override
  _$AccessTokenCopyWith<_AccessToken> get copyWith =>
      __$AccessTokenCopyWithImpl<_AccessToken>(this, _$identity);
}

abstract class _AccessToken extends AccessToken {
  const factory _AccessToken(
      {required BasicTextField<String?> accessToken,
      required TokenType tokenType,
      required BasicTextField<int?> expiryDate}) = _$_AccessToken;
  const _AccessToken._() : super._();

  @override
  BasicTextField<String?> get accessToken;
  @override
  TokenType get tokenType;
  @override
  BasicTextField<int?> get expiryDate;
  @override
  @JsonKey(ignore: true)
  _$AccessTokenCopyWith<_AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}
