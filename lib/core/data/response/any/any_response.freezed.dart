// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of any_response.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnyResponse _$AnyResponseFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'info':
      return InfoResponseType.fromJson(json);
    case 'success':
      return SuccessfulResponse.fromJson(json);

    default:
      return ErrorResponse.fromJson(json);
  }
}

/// @nodoc
class _$AnyResponseTearOff {
  const _$AnyResponseTearOff();

  ErrorResponse error(
      {int? code,
      String? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      String? error,
      ServerFieldErrors? errors,
      @JsonKey(ignore: true) bool pop = false,
      @JsonKey(ignore: true) Exception? exception}) {
    return ErrorResponse(
      code: code,
      status: status,
      messageTxt: messageTxt,
      details: details,
      error: error,
      errors: errors,
      pop: pop,
      exception: exception,
    );
  }

  InfoResponseType info(
      {String? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop = false}) {
    return InfoResponseType(
      status: status,
      messageTxt: messageTxt,
      details: details,
      pop: pop,
    );
  }

  SuccessfulResponse success(
      {String? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop = false}) {
    return SuccessfulResponse(
      status: status,
      messageTxt: messageTxt,
      details: details,
      pop: pop,
    );
  }

  AnyResponse fromJson(Map<String, Object?> json) {
    return AnyResponse.fromJson(json);
  }
}

/// @nodoc
const $AnyResponse = _$AnyResponseTearOff();

/// @nodoc
mixin _$AnyResponse {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'message')
  String? get messageTxt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get pop => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)
        error,
    required TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        info,
    required TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorResponse value) error,
    required TResult Function(InfoResponseType value) info,
    required TResult Function(SuccessfulResponse value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnyResponseCopyWith<AnyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnyResponseCopyWith<$Res> {
  factory $AnyResponseCopyWith(
          AnyResponse value, $Res Function(AnyResponse) then) =
      _$AnyResponseCopyWithImpl<$Res>;
  $Res call(
      {String? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop});
}

/// @nodoc
class _$AnyResponseCopyWithImpl<$Res> implements $AnyResponseCopyWith<$Res> {
  _$AnyResponseCopyWithImpl(this._value, this._then);

  final AnyResponse _value;
  // ignore: unused_field
  final $Res Function(AnyResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? messageTxt = freezed,
    Object? details = freezed,
    Object? pop = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      messageTxt: messageTxt == freezed
          ? _value.messageTxt
          : messageTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $ErrorResponseCopyWith<$Res>
    implements $AnyResponseCopyWith<$Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse value, $Res Function(ErrorResponse) then) =
      _$ErrorResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? code,
      String? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      String? error,
      ServerFieldErrors? errors,
      @JsonKey(ignore: true) bool pop,
      @JsonKey(ignore: true) Exception? exception});

  $ServerFieldErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$ErrorResponseCopyWithImpl<$Res> extends _$AnyResponseCopyWithImpl<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  _$ErrorResponseCopyWithImpl(
      ErrorResponse _value, $Res Function(ErrorResponse) _then)
      : super(_value, (v) => _then(v as ErrorResponse));

  @override
  ErrorResponse get _value => super._value as ErrorResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? messageTxt = freezed,
    Object? details = freezed,
    Object? error = freezed,
    Object? errors = freezed,
    Object? pop = freezed,
    Object? exception = freezed,
  }) {
    return _then(ErrorResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      messageTxt: messageTxt == freezed
          ? _value.messageTxt
          : messageTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ServerFieldErrors?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }

  @override
  $ServerFieldErrorsCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $ServerFieldErrorsCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@With<Failure>()
class _$ErrorResponse extends ErrorResponse with Failure {
  const _$ErrorResponse(
      {this.code,
      this.status,
      @JsonKey(includeIfNull: false, name: 'message') this.messageTxt,
      @JsonKey(ignore: true) this.details,
      this.error,
      this.errors,
      @JsonKey(ignore: true) this.pop = false,
      @JsonKey(ignore: true) this.exception})
      : super._();

  factory _$ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  final String? messageTxt;
  @override
  @JsonKey(ignore: true)
  final String? details;
  @override
  final String? error;
  @override
  final ServerFieldErrors? errors;
  @override
  @JsonKey(ignore: true)
  final bool pop;
  @override
  @JsonKey(ignore: true)
  final Exception? exception;

  @override
  String toString() {
    return 'AnyResponse.error(code: $code, status: $status, messageTxt: $messageTxt, details: $details, error: $error, errors: $errors, pop: $pop, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorResponse &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.messageTxt, messageTxt) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.errors, errors) &&
            const DeepCollectionEquality().equals(other.pop, pop) &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(messageTxt),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(errors),
      const DeepCollectionEquality().hash(pop),
      const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  $ErrorResponseCopyWith<ErrorResponse> get copyWith =>
      _$ErrorResponseCopyWithImpl<ErrorResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)
        error,
    required TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        info,
    required TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        success,
  }) {
    return error(
        code, status, messageTxt, details, this.error, errors, pop, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
  }) {
    return error?.call(
        code, status, messageTxt, details, this.error, errors, pop, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(code, status, messageTxt, details, this.error, errors, pop,
          exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorResponse value) error,
    required TResult Function(InfoResponseType value) info,
    required TResult Function(SuccessfulResponse value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseToJson(this);
  }
}

abstract class ErrorResponse extends AnyResponse implements Failure {
  const factory ErrorResponse(
      {int? code,
      String? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      String? error,
      ServerFieldErrors? errors,
      @JsonKey(ignore: true) bool pop,
      @JsonKey(ignore: true) Exception? exception}) = _$ErrorResponse;
  const ErrorResponse._() : super._();

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$ErrorResponse.fromJson;

  int? get code;
  @override
  String? get status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  String? get messageTxt;
  @override
  @JsonKey(ignore: true)
  String? get details;
  String? get error;
  ServerFieldErrors? get errors;
  @override
  @JsonKey(ignore: true)
  bool get pop;
  @JsonKey(ignore: true)
  Exception? get exception;
  @override
  @JsonKey(ignore: true)
  $ErrorResponseCopyWith<ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoResponseTypeCopyWith<$Res>
    implements $AnyResponseCopyWith<$Res> {
  factory $InfoResponseTypeCopyWith(
          InfoResponseType value, $Res Function(InfoResponseType) then) =
      _$InfoResponseTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop});
}

/// @nodoc
class _$InfoResponseTypeCopyWithImpl<$Res>
    extends _$AnyResponseCopyWithImpl<$Res>
    implements $InfoResponseTypeCopyWith<$Res> {
  _$InfoResponseTypeCopyWithImpl(
      InfoResponseType _value, $Res Function(InfoResponseType) _then)
      : super(_value, (v) => _then(v as InfoResponseType));

  @override
  InfoResponseType get _value => super._value as InfoResponseType;

  @override
  $Res call({
    Object? status = freezed,
    Object? messageTxt = freezed,
    Object? details = freezed,
    Object? pop = freezed,
  }) {
    return _then(InfoResponseType(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      messageTxt: messageTxt == freezed
          ? _value.messageTxt
          : messageTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@With<Info>()
class _$InfoResponseType extends InfoResponseType with Info {
  const _$InfoResponseType(
      {this.status,
      @JsonKey(includeIfNull: false, name: 'message') this.messageTxt,
      @JsonKey(ignore: true) this.details,
      @JsonKey(ignore: true) this.pop = false})
      : super._();

  factory _$InfoResponseType.fromJson(Map<String, dynamic> json) =>
      _$$InfoResponseTypeFromJson(json);

  @override
  final String? status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  final String? messageTxt;
  @override
  @JsonKey(ignore: true)
  final String? details;
  @override
  @JsonKey(ignore: true)
  final bool pop;

  @override
  String toString() {
    return 'AnyResponse.info(status: $status, messageTxt: $messageTxt, details: $details, pop: $pop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoResponseType &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.messageTxt, messageTxt) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.pop, pop));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(messageTxt),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(pop));

  @JsonKey(ignore: true)
  @override
  $InfoResponseTypeCopyWith<InfoResponseType> get copyWith =>
      _$InfoResponseTypeCopyWithImpl<InfoResponseType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)
        error,
    required TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        info,
    required TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        success,
  }) {
    return info(status, messageTxt, details, pop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
  }) {
    return info?.call(status, messageTxt, details, pop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(status, messageTxt, details, pop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorResponse value) error,
    required TResult Function(InfoResponseType value) info,
    required TResult Function(SuccessfulResponse value) success,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
  }) {
    return info?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoResponseTypeToJson(this);
  }
}

abstract class InfoResponseType extends AnyResponse implements Info {
  const factory InfoResponseType(
      {String? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop}) = _$InfoResponseType;
  const InfoResponseType._() : super._();

  factory InfoResponseType.fromJson(Map<String, dynamic> json) =
      _$InfoResponseType.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  String? get messageTxt;
  @override
  @JsonKey(ignore: true)
  String? get details;
  @override
  @JsonKey(ignore: true)
  bool get pop;
  @override
  @JsonKey(ignore: true)
  $InfoResponseTypeCopyWith<InfoResponseType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessfulResponseCopyWith<$Res>
    implements $AnyResponseCopyWith<$Res> {
  factory $SuccessfulResponseCopyWith(
          SuccessfulResponse value, $Res Function(SuccessfulResponse) then) =
      _$SuccessfulResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop});
}

/// @nodoc
class _$SuccessfulResponseCopyWithImpl<$Res>
    extends _$AnyResponseCopyWithImpl<$Res>
    implements $SuccessfulResponseCopyWith<$Res> {
  _$SuccessfulResponseCopyWithImpl(
      SuccessfulResponse _value, $Res Function(SuccessfulResponse) _then)
      : super(_value, (v) => _then(v as SuccessfulResponse));

  @override
  SuccessfulResponse get _value => super._value as SuccessfulResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? messageTxt = freezed,
    Object? details = freezed,
    Object? pop = freezed,
  }) {
    return _then(SuccessfulResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      messageTxt: messageTxt == freezed
          ? _value.messageTxt
          : messageTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@With<Success>()
class _$SuccessfulResponse extends SuccessfulResponse with Success {
  const _$SuccessfulResponse(
      {this.status,
      @JsonKey(includeIfNull: false, name: 'message') this.messageTxt,
      @JsonKey(ignore: true) this.details,
      @JsonKey(ignore: true) this.pop = false})
      : super._();

  factory _$SuccessfulResponse.fromJson(Map<String, dynamic> json) =>
      _$$SuccessfulResponseFromJson(json);

  @override
  final String? status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  final String? messageTxt;
  @override
  @JsonKey(ignore: true)
  final String? details;
  @override
  @JsonKey(ignore: true)
  final bool pop;

  @override
  String toString() {
    return 'AnyResponse.success(status: $status, messageTxt: $messageTxt, details: $details, pop: $pop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessfulResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.messageTxt, messageTxt) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.pop, pop));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(messageTxt),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(pop));

  @JsonKey(ignore: true)
  @override
  $SuccessfulResponseCopyWith<SuccessfulResponse> get copyWith =>
      _$SuccessfulResponseCopyWithImpl<SuccessfulResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)
        error,
    required TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        info,
    required TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)
        success,
  }) {
    return success(status, messageTxt, details, pop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
  }) {
    return success?.call(status, messageTxt, details, pop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? code,
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            String? error,
            ServerFieldErrors? errors,
            @JsonKey(ignore: true) bool pop,
            @JsonKey(ignore: true) Exception? exception)?
        error,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        info,
    TResult Function(
            String? status,
            @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
            @JsonKey(ignore: true) String? details,
            @JsonKey(ignore: true) bool pop)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status, messageTxt, details, pop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorResponse value) error,
    required TResult Function(InfoResponseType value) info,
    required TResult Function(SuccessfulResponse value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorResponse value)? error,
    TResult Function(InfoResponseType value)? info,
    TResult Function(SuccessfulResponse value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessfulResponseToJson(this);
  }
}

abstract class SuccessfulResponse extends AnyResponse implements Success {
  const factory SuccessfulResponse(
      {String? status,
      @JsonKey(includeIfNull: false, name: 'message') String? messageTxt,
      @JsonKey(ignore: true) String? details,
      @JsonKey(ignore: true) bool pop}) = _$SuccessfulResponse;
  const SuccessfulResponse._() : super._();

  factory SuccessfulResponse.fromJson(Map<String, dynamic> json) =
      _$SuccessfulResponse.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(includeIfNull: false, name: 'message')
  String? get messageTxt;
  @override
  @JsonKey(ignore: true)
  String? get details;
  @override
  @JsonKey(ignore: true)
  bool get pop;
  @override
  @JsonKey(ignore: true)
  $SuccessfulResponseCopyWith<SuccessfulResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
