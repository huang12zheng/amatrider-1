// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of paginated_list_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginatedListWrapperDTOTearOff {
  const _$PaginatedListWrapperDTOTearOff();

  _PaginatedListWrapperDTO<T> call<T>(
      {@JsonKey(defaultValue: [])
          List<T> data = const [],
      @JsonKey(name: 'current_page')
          int? currentPage,
      int? from,
      @JsonKey(name: 'last_page')
          int? lastPage,
      @JsonKey(defaultValue: [], name: 'links')
          List<PaginationLinks> paginationLinks = const [],
      String? path,
      @JsonKey(name: 'per_page')
          int? perPage,
      int? to,
      int? total}) {
    return _PaginatedListWrapperDTO<T>(
      data: data,
      currentPage: currentPage,
      from: from,
      lastPage: lastPage,
      paginationLinks: paginationLinks,
      path: path,
      perPage: perPage,
      to: to,
      total: total,
    );
  }
}

/// @nodoc
const $PaginatedListWrapperDTO = _$PaginatedListWrapperDTOTearOff();

/// @nodoc
mixin _$PaginatedListWrapperDTO<T> {
  @JsonKey(defaultValue: [])
  List<T> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [], name: 'links')
  List<PaginationLinks> get paginationLinks =>
      throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedListWrapperDTOCopyWith<T, PaginatedListWrapperDTO<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedListWrapperDTOCopyWith<T, $Res> {
  factory $PaginatedListWrapperDTOCopyWith(PaginatedListWrapperDTO<T> value,
          $Res Function(PaginatedListWrapperDTO<T>) then) =
      _$PaginatedListWrapperDTOCopyWithImpl<T, $Res>;
  $Res call(
      {@JsonKey(defaultValue: [])
          List<T> data,
      @JsonKey(name: 'current_page')
          int? currentPage,
      int? from,
      @JsonKey(name: 'last_page')
          int? lastPage,
      @JsonKey(defaultValue: [], name: 'links')
          List<PaginationLinks> paginationLinks,
      String? path,
      @JsonKey(name: 'per_page')
          int? perPage,
      int? to,
      int? total});
}

/// @nodoc
class _$PaginatedListWrapperDTOCopyWithImpl<T, $Res>
    implements $PaginatedListWrapperDTOCopyWith<T, $Res> {
  _$PaginatedListWrapperDTOCopyWithImpl(this._value, this._then);

  final PaginatedListWrapperDTO<T> _value;
  // ignore: unused_field
  final $Res Function(PaginatedListWrapperDTO<T>) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? paginationLinks = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
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
      paginationLinks: paginationLinks == freezed
          ? _value.paginationLinks
          : paginationLinks // ignore: cast_nullable_to_non_nullable
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
abstract class _$PaginatedListWrapperDTOCopyWith<T, $Res>
    implements $PaginatedListWrapperDTOCopyWith<T, $Res> {
  factory _$PaginatedListWrapperDTOCopyWith(_PaginatedListWrapperDTO<T> value,
          $Res Function(_PaginatedListWrapperDTO<T>) then) =
      __$PaginatedListWrapperDTOCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: [])
          List<T> data,
      @JsonKey(name: 'current_page')
          int? currentPage,
      int? from,
      @JsonKey(name: 'last_page')
          int? lastPage,
      @JsonKey(defaultValue: [], name: 'links')
          List<PaginationLinks> paginationLinks,
      String? path,
      @JsonKey(name: 'per_page')
          int? perPage,
      int? to,
      int? total});
}

/// @nodoc
class __$PaginatedListWrapperDTOCopyWithImpl<T, $Res>
    extends _$PaginatedListWrapperDTOCopyWithImpl<T, $Res>
    implements _$PaginatedListWrapperDTOCopyWith<T, $Res> {
  __$PaginatedListWrapperDTOCopyWithImpl(_PaginatedListWrapperDTO<T> _value,
      $Res Function(_PaginatedListWrapperDTO<T>) _then)
      : super(_value, (v) => _then(v as _PaginatedListWrapperDTO<T>));

  @override
  _PaginatedListWrapperDTO<T> get _value =>
      super._value as _PaginatedListWrapperDTO<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? paginationLinks = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_PaginatedListWrapperDTO<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
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
      paginationLinks: paginationLinks == freezed
          ? _value.paginationLinks
          : paginationLinks // ignore: cast_nullable_to_non_nullable
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

class _$_PaginatedListWrapperDTO<T> extends _PaginatedListWrapperDTO<T> {
  const _$_PaginatedListWrapperDTO(
      {@JsonKey(defaultValue: []) this.data = const [],
      @JsonKey(name: 'current_page') this.currentPage,
      this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(defaultValue: [], name: 'links') this.paginationLinks = const [],
      this.path,
      @JsonKey(name: 'per_page') this.perPage,
      this.to,
      this.total})
      : super._();

  @override
  @JsonKey(defaultValue: [])
  final List<T> data;
  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(defaultValue: [], name: 'links')
  final List<PaginationLinks> paginationLinks;
  @override
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'PaginatedListWrapperDTO<$T>(data: $data, currentPage: $currentPage, from: $from, lastPage: $lastPage, paginationLinks: $paginationLinks, path: $path, perPage: $perPage, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginatedListWrapperDTO<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            const DeepCollectionEquality()
                .equals(other.paginationLinks, paginationLinks) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      currentPage,
      from,
      lastPage,
      const DeepCollectionEquality().hash(paginationLinks),
      path,
      perPage,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  _$PaginatedListWrapperDTOCopyWith<T, _PaginatedListWrapperDTO<T>>
      get copyWith => __$PaginatedListWrapperDTOCopyWithImpl<T,
          _PaginatedListWrapperDTO<T>>(this, _$identity);
}

abstract class _PaginatedListWrapperDTO<T> extends PaginatedListWrapperDTO<T> {
  const factory _PaginatedListWrapperDTO(
      {@JsonKey(defaultValue: [])
          List<T> data,
      @JsonKey(name: 'current_page')
          int? currentPage,
      int? from,
      @JsonKey(name: 'last_page')
          int? lastPage,
      @JsonKey(defaultValue: [], name: 'links')
          List<PaginationLinks> paginationLinks,
      String? path,
      @JsonKey(name: 'per_page')
          int? perPage,
      int? to,
      int? total}) = _$_PaginatedListWrapperDTO<T>;
  const _PaginatedListWrapperDTO._() : super._();

  @override
  @JsonKey(defaultValue: [])
  List<T> get data;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(defaultValue: [], name: 'links')
  List<PaginationLinks> get paginationLinks;
  @override
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$PaginatedListWrapperDTOCopyWith<T, _PaginatedListWrapperDTO<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PaginatedListDTOTearOff {
  const _$PaginatedListDTOTearOff();

  _PaginatedListDTO<T> call<T>(
      {@JsonKey(defaultValue: []) List<T> data = const [],
      PaginationLinks? links,
      MetaField? meta}) {
    return _PaginatedListDTO<T>(
      data: data,
      links: links,
      meta: meta,
    );
  }
}

/// @nodoc
const $PaginatedListDTO = _$PaginatedListDTOTearOff();

/// @nodoc
mixin _$PaginatedListDTO<T> {
  @JsonKey(defaultValue: [])
  List<T> get data => throw _privateConstructorUsedError;
  PaginationLinks? get links => throw _privateConstructorUsedError;
  MetaField? get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedListDTOCopyWith<T, PaginatedListDTO<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedListDTOCopyWith<T, $Res> {
  factory $PaginatedListDTOCopyWith(
          PaginatedListDTO<T> value, $Res Function(PaginatedListDTO<T>) then) =
      _$PaginatedListDTOCopyWithImpl<T, $Res>;
  $Res call(
      {@JsonKey(defaultValue: []) List<T> data,
      PaginationLinks? links,
      MetaField? meta});

  $PaginationLinksCopyWith<$Res>? get links;
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class _$PaginatedListDTOCopyWithImpl<T, $Res>
    implements $PaginatedListDTOCopyWith<T, $Res> {
  _$PaginatedListDTOCopyWithImpl(this._value, this._then);

  final PaginatedListDTO<T> _value;
  // ignore: unused_field
  final $Res Function(PaginatedListDTO<T>) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinks?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaField?,
    ));
  }

  @override
  $PaginationLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $PaginationLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value));
    });
  }

  @override
  $MetaFieldCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaFieldCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$PaginatedListDTOCopyWith<T, $Res>
    implements $PaginatedListDTOCopyWith<T, $Res> {
  factory _$PaginatedListDTOCopyWith(_PaginatedListDTO<T> value,
          $Res Function(_PaginatedListDTO<T>) then) =
      __$PaginatedListDTOCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: []) List<T> data,
      PaginationLinks? links,
      MetaField? meta});

  @override
  $PaginationLinksCopyWith<$Res>? get links;
  @override
  $MetaFieldCopyWith<$Res>? get meta;
}

/// @nodoc
class __$PaginatedListDTOCopyWithImpl<T, $Res>
    extends _$PaginatedListDTOCopyWithImpl<T, $Res>
    implements _$PaginatedListDTOCopyWith<T, $Res> {
  __$PaginatedListDTOCopyWithImpl(
      _PaginatedListDTO<T> _value, $Res Function(_PaginatedListDTO<T>) _then)
      : super(_value, (v) => _then(v as _PaginatedListDTO<T>));

  @override
  _PaginatedListDTO<T> get _value => super._value as _PaginatedListDTO<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_PaginatedListDTO<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinks?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaField?,
    ));
  }
}

/// @nodoc

class _$_PaginatedListDTO<T> extends _PaginatedListDTO<T> {
  const _$_PaginatedListDTO(
      {@JsonKey(defaultValue: []) this.data = const [], this.links, this.meta})
      : super._();

  @override
  @JsonKey(defaultValue: [])
  final List<T> data;
  @override
  final PaginationLinks? links;
  @override
  final MetaField? meta;

  @override
  String toString() {
    return 'PaginatedListDTO<$T>(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginatedListDTO<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), links, meta);

  @JsonKey(ignore: true)
  @override
  _$PaginatedListDTOCopyWith<T, _PaginatedListDTO<T>> get copyWith =>
      __$PaginatedListDTOCopyWithImpl<T, _PaginatedListDTO<T>>(
          this, _$identity);
}

abstract class _PaginatedListDTO<T> extends PaginatedListDTO<T> {
  const factory _PaginatedListDTO(
      {@JsonKey(defaultValue: []) List<T> data,
      PaginationLinks? links,
      MetaField? meta}) = _$_PaginatedListDTO<T>;
  const _PaginatedListDTO._() : super._();

  @override
  @JsonKey(defaultValue: [])
  List<T> get data;
  @override
  PaginationLinks? get links;
  @override
  MetaField? get meta;
  @override
  @JsonKey(ignore: true)
  _$PaginatedListDTOCopyWith<T, _PaginatedListDTO<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
