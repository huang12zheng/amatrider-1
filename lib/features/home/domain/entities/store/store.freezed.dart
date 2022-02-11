// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of store.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreTearOff {
  const _$StoreTearOff();

  _Store call(
      {required UniqueId<String?> id,
      required BasicTextField<String?> name,
      required BasicTextField<String?> speciality,
      required BasicTextField<String?> phone,
      bool isStoreOpen = false,
      bool allowWeekendOrders = false,
      required MediaField image,
      StoreLocation? location,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) {
    return _Store(
      id: id,
      name: name,
      speciality: speciality,
      phone: phone,
      isStoreOpen: isStoreOpen,
      allowWeekendOrders: allowWeekendOrders,
      image: image,
      location: location,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
const $Store = _$StoreTearOff();

/// @nodoc
mixin _$Store {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  BasicTextField<String?> get name => throw _privateConstructorUsedError;
  BasicTextField<String?> get speciality => throw _privateConstructorUsedError;
  BasicTextField<String?> get phone => throw _privateConstructorUsedError;
  bool get isStoreOpen => throw _privateConstructorUsedError;
  bool get allowWeekendOrders => throw _privateConstructorUsedError;
  MediaField get image => throw _privateConstructorUsedError;
  StoreLocation? get location => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      BasicTextField<String?> name,
      BasicTextField<String?> speciality,
      BasicTextField<String?> phone,
      bool isStoreOpen,
      bool allowWeekendOrders,
      MediaField image,
      StoreLocation? location,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  $StoreLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$StoreCopyWithImpl<$Res> implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  final Store _value;
  // ignore: unused_field
  final $Res Function(Store) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? speciality = freezed,
    Object? phone = freezed,
    Object? isStoreOpen = freezed,
    Object? allowWeekendOrders = freezed,
    Object? image = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      speciality: speciality == freezed
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      isStoreOpen: isStoreOpen == freezed
          ? _value.isStoreOpen
          : isStoreOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      allowWeekendOrders: allowWeekendOrders == freezed
          ? _value.allowWeekendOrders
          : allowWeekendOrders // ignore: cast_nullable_to_non_nullable
              as bool,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as MediaField,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as StoreLocation?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $StoreLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $StoreLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) then) =
      __$StoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      BasicTextField<String?> name,
      BasicTextField<String?> speciality,
      BasicTextField<String?> phone,
      bool isStoreOpen,
      bool allowWeekendOrders,
      MediaField image,
      StoreLocation? location,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  @override
  $StoreLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$StoreCopyWithImpl<$Res> extends _$StoreCopyWithImpl<$Res>
    implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(_Store _value, $Res Function(_Store) _then)
      : super(_value, (v) => _then(v as _Store));

  @override
  _Store get _value => super._value as _Store;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? speciality = freezed,
    Object? phone = freezed,
    Object? isStoreOpen = freezed,
    Object? allowWeekendOrders = freezed,
    Object? image = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_Store(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      speciality: speciality == freezed
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      isStoreOpen: isStoreOpen == freezed
          ? _value.isStoreOpen
          : isStoreOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      allowWeekendOrders: allowWeekendOrders == freezed
          ? _value.allowWeekendOrders
          : allowWeekendOrders // ignore: cast_nullable_to_non_nullable
              as bool,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as MediaField,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as StoreLocation?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Store extends _Store {
  const _$_Store(
      {required this.id,
      required this.name,
      required this.speciality,
      required this.phone,
      this.isStoreOpen = false,
      this.allowWeekendOrders = false,
      required this.image,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final BasicTextField<String?> name;
  @override
  final BasicTextField<String?> speciality;
  @override
  final BasicTextField<String?> phone;
  @JsonKey()
  @override
  final bool isStoreOpen;
  @JsonKey()
  @override
  final bool allowWeekendOrders;
  @override
  final MediaField image;
  @override
  final StoreLocation? location;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Store(id: $id, name: $name, speciality: $speciality, phone: $phone, isStoreOpen: $isStoreOpen, allowWeekendOrders: $allowWeekendOrders, image: $image, location: $location, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Store &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.speciality, speciality) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.isStoreOpen, isStoreOpen) &&
            const DeepCollectionEquality()
                .equals(other.allowWeekendOrders, allowWeekendOrders) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(speciality),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(isStoreOpen),
      const DeepCollectionEquality().hash(allowWeekendOrders),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$StoreCopyWith<_Store> get copyWith =>
      __$StoreCopyWithImpl<_Store>(this, _$identity);
}

abstract class _Store extends Store {
  const factory _Store(
      {required UniqueId<String?> id,
      required BasicTextField<String?> name,
      required BasicTextField<String?> speciality,
      required BasicTextField<String?> phone,
      bool isStoreOpen,
      bool allowWeekendOrders,
      required MediaField image,
      StoreLocation? location,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) = _$_Store;
  const _Store._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  BasicTextField<String?> get name;
  @override
  BasicTextField<String?> get speciality;
  @override
  BasicTextField<String?> get phone;
  @override
  bool get isStoreOpen;
  @override
  bool get allowWeekendOrders;
  @override
  MediaField get image;
  @override
  StoreLocation? get location;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$StoreCopyWith<_Store> get copyWith => throw _privateConstructorUsedError;
}
