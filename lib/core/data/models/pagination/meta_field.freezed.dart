// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of meta_field;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaField _$MetaFieldFromJson(Map<String, dynamic> json) {
  return _MetaField.fromJson(json);
}

/// @nodoc
class _$MetaFieldTearOff {
  const _$MetaFieldTearOff();

  _MetaField call(
      {int? currentPage,
      int? from,
      int? lastPage,
      List<PaginationLinks> links = const [],
      String? path,
      int? perPage,
      int? to,
      int? total}) {
    return _MetaField(
      currentPage: currentPage,
      from: from,
      lastPage: lastPage,
      links: links,
      path: path,
      perPage: perPage,
      to: to,
      total: total,
    );
  }

  MetaField fromJson(Map<String, Object?> json) {
    return MetaField.fromJson(json);
  }
}

/// @nodoc
const $MetaField = _$MetaFieldTearOff();

/// @nodoc
mixin _$MetaField {
  int? get currentPage => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  List<PaginationLinks> get links => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaFieldCopyWith<MetaField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaFieldCopyWith<$Res> {
  factory $MetaFieldCopyWith(MetaField value, $Res Function(MetaField) then) =
      _$MetaFieldCopyWithImpl<$Res>;
  $Res call(
      {int? currentPage,
      int? from,
      int? lastPage,
      List<PaginationLinks> links,
      String? path,
      int? perPage,
      int? to,
      int? total});
}

/// @nodoc
class _$MetaFieldCopyWithImpl<$Res> implements $MetaFieldCopyWith<$Res> {
  _$MetaFieldCopyWithImpl(this._value, this._then);

  final MetaField _value;
  // ignore: unused_field
  final $Res Function(MetaField) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? links = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<PaginationLinks>,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MetaFieldCopyWith<$Res> implements $MetaFieldCopyWith<$Res> {
  factory _$MetaFieldCopyWith(
          _MetaField value, $Res Function(_MetaField) then) =
      __$MetaFieldCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? currentPage,
      int? from,
      int? lastPage,
      List<PaginationLinks> links,
      String? path,
      int? perPage,
      int? to,
      int? total});
}

/// @nodoc
class __$MetaFieldCopyWithImpl<$Res> extends _$MetaFieldCopyWithImpl<$Res>
    implements _$MetaFieldCopyWith<$Res> {
  __$MetaFieldCopyWithImpl(_MetaField _value, $Res Function(_MetaField) _then)
      : super(_value, (v) => _then(v as _MetaField));

  @override
  _MetaField get _value => super._value as _MetaField;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? links = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_MetaField(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<PaginationLinks>,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaField extends _MetaField {
  const _$_MetaField(
      {this.currentPage,
      this.from,
      this.lastPage,
      this.links = const [],
      this.path,
      this.perPage,
      this.to,
      this.total})
      : super._();

  factory _$_MetaField.fromJson(Map<String, dynamic> json) =>
      _$$_MetaFieldFromJson(json);

  @override
  final int? currentPage;
  @override
  final int? from;
  @override
  final int? lastPage;
  @JsonKey()
  @override
  final List<PaginationLinks> links;
  @override
  final String? path;
  @override
  final int? perPage;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'MetaField(currentPage: $currentPage, from: $from, lastPage: $lastPage, links: $links, path: $path, perPage: $perPage, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MetaField &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.lastPage, lastPage) &&
            const DeepCollectionEquality().equals(other.links, links) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(lastPage),
      const DeepCollectionEquality().hash(links),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$MetaFieldCopyWith<_MetaField> get copyWith =>
      __$MetaFieldCopyWithImpl<_MetaField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaFieldToJson(this);
  }
}

abstract class _MetaField extends MetaField {
  const factory _MetaField(
      {int? currentPage,
      int? from,
      int? lastPage,
      List<PaginationLinks> links,
      String? path,
      int? perPage,
      int? to,
      int? total}) = _$_MetaField;
  const _MetaField._() : super._();

  factory _MetaField.fromJson(Map<String, dynamic> json) =
      _$_MetaField.fromJson;

  @override
  int? get currentPage;
  @override
  int? get from;
  @override
  int? get lastPage;
  @override
  List<PaginationLinks> get links;
  @override
  String? get path;
  @override
  int? get perPage;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$MetaFieldCopyWith<_MetaField> get copyWith =>
      throw _privateConstructorUsedError;
}
