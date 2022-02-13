// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of language.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LanguageTearOff {
  const _$LanguageTearOff();

  _Language call(
      {String? languageName,
      required String languageCode,
      required String countryCode,
      String? countryName}) {
    return _Language(
      languageName: languageName,
      languageCode: languageCode,
      countryCode: countryCode,
      countryName: countryName,
    );
  }
}

/// @nodoc
const $Language = _$LanguageTearOff();

/// @nodoc
mixin _$Language {
  String? get languageName => throw _privateConstructorUsedError;
  String get languageCode => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String? get countryName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res>;
  $Res call(
      {String? languageName,
      String languageCode,
      String countryCode,
      String? countryName});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  final Language _value;
  // ignore: unused_field
  final $Res Function(Language) _then;

  @override
  $Res call({
    Object? languageName = freezed,
    Object? languageCode = freezed,
    Object? countryCode = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_value.copyWith(
      languageName: languageName == freezed
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguageCopyWith<$Res> implements $LanguageCopyWith<$Res> {
  factory _$LanguageCopyWith(_Language value, $Res Function(_Language) then) =
      __$LanguageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? languageName,
      String languageCode,
      String countryCode,
      String? countryName});
}

/// @nodoc
class __$LanguageCopyWithImpl<$Res> extends _$LanguageCopyWithImpl<$Res>
    implements _$LanguageCopyWith<$Res> {
  __$LanguageCopyWithImpl(_Language _value, $Res Function(_Language) _then)
      : super(_value, (v) => _then(v as _Language));

  @override
  _Language get _value => super._value as _Language;

  @override
  $Res call({
    Object? languageName = freezed,
    Object? languageCode = freezed,
    Object? countryCode = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_Language(
      languageName: languageName == freezed
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Language extends _Language {
  const _$_Language(
      {this.languageName,
      required this.languageCode,
      required this.countryCode,
      this.countryName})
      : super._();

  @override
  final String? languageName;
  @override
  final String languageCode;
  @override
  final String countryCode;
  @override
  final String? countryName;

  @override
  String toString() {
    return 'Language(languageName: $languageName, languageCode: $languageCode, countryCode: $countryCode, countryName: $countryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Language &&
            const DeepCollectionEquality()
                .equals(other.languageName, languageName) &&
            const DeepCollectionEquality()
                .equals(other.languageCode, languageCode) &&
            const DeepCollectionEquality()
                .equals(other.countryCode, countryCode) &&
            const DeepCollectionEquality()
                .equals(other.countryName, countryName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(languageName),
      const DeepCollectionEquality().hash(languageCode),
      const DeepCollectionEquality().hash(countryCode),
      const DeepCollectionEquality().hash(countryName));

  @JsonKey(ignore: true)
  @override
  _$LanguageCopyWith<_Language> get copyWith =>
      __$LanguageCopyWithImpl<_Language>(this, _$identity);
}

abstract class _Language extends Language {
  const factory _Language(
      {String? languageName,
      required String languageCode,
      required String countryCode,
      String? countryName}) = _$_Language;
  const _Language._() : super._();

  @override
  String? get languageName;
  @override
  String get languageCode;
  @override
  String get countryCode;
  @override
  String? get countryName;
  @override
  @JsonKey(ignore: true)
  _$LanguageCopyWith<_Language> get copyWith =>
      throw _privateConstructorUsedError;
}
