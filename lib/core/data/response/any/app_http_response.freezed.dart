// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of app_http_response.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppHttpResponse _$AppHttpResponseFromJson(Map<String, dynamic> json) {
  return _AppHttpResponse.fromJson(json);
}

/// @nodoc
class _$AppHttpResponseTearOff {
  const _$AppHttpResponseTearOff();

  _AppHttpResponse call(@AnyResponseSerializer() AnyResponse response,
      {@JsonKey(ignore: true) dynamic data,
      @JsonKey(ignore: true) _d.DioError? exception,
      @JsonKey(ignore: true) AppNetworkExceptionReason? failureReason}) {
    return _AppHttpResponse(
      response,
      data: data,
      exception: exception,
      failureReason: failureReason,
    );
  }

  AppHttpResponse fromJson(Map<String, Object?> json) {
    return AppHttpResponse.fromJson(json);
  }
}

/// @nodoc
const $AppHttpResponse = _$AppHttpResponseTearOff();

/// @nodoc
mixin _$AppHttpResponse {
  @AnyResponseSerializer()
  AnyResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _d.DioError? get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  AppNetworkExceptionReason? get failureReason =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppHttpResponseCopyWith<AppHttpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppHttpResponseCopyWith<$Res> {
  factory $AppHttpResponseCopyWith(
          AppHttpResponse value, $Res Function(AppHttpResponse) then) =
      _$AppHttpResponseCopyWithImpl<$Res>;
  $Res call(
      {@AnyResponseSerializer() AnyResponse response,
      @JsonKey(ignore: true) dynamic data,
      @JsonKey(ignore: true) _d.DioError? exception,
      @JsonKey(ignore: true) AppNetworkExceptionReason? failureReason});

  $AnyResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$AppHttpResponseCopyWithImpl<$Res>
    implements $AppHttpResponseCopyWith<$Res> {
  _$AppHttpResponseCopyWithImpl(this._value, this._then);

  final AppHttpResponse _value;
  // ignore: unused_field
  final $Res Function(AppHttpResponse) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? exception = freezed,
    Object? failureReason = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AnyResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as _d.DioError?,
      failureReason: failureReason == freezed
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as AppNetworkExceptionReason?,
    ));
  }

  @override
  $AnyResponseCopyWith<$Res> get response {
    return $AnyResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$AppHttpResponseCopyWith<$Res>
    implements $AppHttpResponseCopyWith<$Res> {
  factory _$AppHttpResponseCopyWith(
          _AppHttpResponse value, $Res Function(_AppHttpResponse) then) =
      __$AppHttpResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@AnyResponseSerializer() AnyResponse response,
      @JsonKey(ignore: true) dynamic data,
      @JsonKey(ignore: true) _d.DioError? exception,
      @JsonKey(ignore: true) AppNetworkExceptionReason? failureReason});

  @override
  $AnyResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$AppHttpResponseCopyWithImpl<$Res>
    extends _$AppHttpResponseCopyWithImpl<$Res>
    implements _$AppHttpResponseCopyWith<$Res> {
  __$AppHttpResponseCopyWithImpl(
      _AppHttpResponse _value, $Res Function(_AppHttpResponse) _then)
      : super(_value, (v) => _then(v as _AppHttpResponse));

  @override
  _AppHttpResponse get _value => super._value as _AppHttpResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? exception = freezed,
    Object? failureReason = freezed,
  }) {
    return _then(_AppHttpResponse(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AnyResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as _d.DioError?,
      failureReason: failureReason == freezed
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as AppNetworkExceptionReason?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppHttpResponse extends _AppHttpResponse {
  const _$_AppHttpResponse(@AnyResponseSerializer() this.response,
      {@JsonKey(ignore: true) this.data,
      @JsonKey(ignore: true) this.exception,
      @JsonKey(ignore: true) this.failureReason})
      : super._();

  factory _$_AppHttpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AppHttpResponseFromJson(json);

  @override
  @AnyResponseSerializer()
  final AnyResponse response;
  @override
  @JsonKey(ignore: true)
  final dynamic data;
  @override
  @JsonKey(ignore: true)
  final _d.DioError? exception;
  @override
  @JsonKey(ignore: true)
  final AppNetworkExceptionReason? failureReason;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppHttpResponse &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality()
                .equals(other.failureReason, failureReason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(failureReason));

  @JsonKey(ignore: true)
  @override
  _$AppHttpResponseCopyWith<_AppHttpResponse> get copyWith =>
      __$AppHttpResponseCopyWithImpl<_AppHttpResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppHttpResponseToJson(this);
  }
}

abstract class _AppHttpResponse extends AppHttpResponse {
  const factory _AppHttpResponse(@AnyResponseSerializer() AnyResponse response,
          {@JsonKey(ignore: true) dynamic data,
          @JsonKey(ignore: true) _d.DioError? exception,
          @JsonKey(ignore: true) AppNetworkExceptionReason? failureReason}) =
      _$_AppHttpResponse;
  const _AppHttpResponse._() : super._();

  factory _AppHttpResponse.fromJson(Map<String, dynamic> json) =
      _$_AppHttpResponse.fromJson;

  @override
  @AnyResponseSerializer()
  AnyResponse get response;
  @override
  @JsonKey(ignore: true)
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _d.DioError? get exception;
  @override
  @JsonKey(ignore: true)
  AppNetworkExceptionReason? get failureReason;
  @override
  @JsonKey(ignore: true)
  _$AppHttpResponseCopyWith<_AppHttpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
