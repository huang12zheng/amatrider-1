// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of meta_object.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaObjectDTO _$MetaObjectDTOFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'package.new':
      return _MetaObjectSendPackageDTO.fromJson(json);
    case 'order.new':
      return _MetaObjectUserOrderDTO.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'MetaObjectDTO',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$MetaObjectDTOTearOff {
  const _$MetaObjectDTOTearOff();

  _MetaObjectSendPackageDTO package(SendPackageDTO package) {
    return _MetaObjectSendPackageDTO(
      package,
    );
  }

  _MetaObjectUserOrderDTO order(UserOrderDTO order) {
    return _MetaObjectUserOrderDTO(
      order,
    );
  }

  MetaObjectDTO fromJson(Map<String, Object?> json) {
    return MetaObjectDTO.fromJson(json);
  }
}

/// @nodoc
const $MetaObjectDTO = _$MetaObjectDTOTearOff();

/// @nodoc
mixin _$MetaObjectDTO {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendPackageDTO package) package,
    required TResult Function(UserOrderDTO order) order,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SendPackageDTO package)? package,
    TResult Function(UserOrderDTO order)? order,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MetaObjectSendPackageDTO value) package,
    required TResult Function(_MetaObjectUserOrderDTO value) order,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MetaObjectSendPackageDTO value)? package,
    TResult Function(_MetaObjectUserOrderDTO value)? order,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaObjectDTOCopyWith<$Res> {
  factory $MetaObjectDTOCopyWith(
          MetaObjectDTO value, $Res Function(MetaObjectDTO) then) =
      _$MetaObjectDTOCopyWithImpl<$Res>;
}

/// @nodoc
class _$MetaObjectDTOCopyWithImpl<$Res>
    implements $MetaObjectDTOCopyWith<$Res> {
  _$MetaObjectDTOCopyWithImpl(this._value, this._then);

  final MetaObjectDTO _value;
  // ignore: unused_field
  final $Res Function(MetaObjectDTO) _then;
}

/// @nodoc
abstract class _$MetaObjectSendPackageDTOCopyWith<$Res> {
  factory _$MetaObjectSendPackageDTOCopyWith(_MetaObjectSendPackageDTO value,
          $Res Function(_MetaObjectSendPackageDTO) then) =
      __$MetaObjectSendPackageDTOCopyWithImpl<$Res>;
  $Res call({SendPackageDTO package});

  $SendPackageDTOCopyWith<$Res> get package;
}

/// @nodoc
class __$MetaObjectSendPackageDTOCopyWithImpl<$Res>
    extends _$MetaObjectDTOCopyWithImpl<$Res>
    implements _$MetaObjectSendPackageDTOCopyWith<$Res> {
  __$MetaObjectSendPackageDTOCopyWithImpl(_MetaObjectSendPackageDTO _value,
      $Res Function(_MetaObjectSendPackageDTO) _then)
      : super(_value, (v) => _then(v as _MetaObjectSendPackageDTO));

  @override
  _MetaObjectSendPackageDTO get _value =>
      super._value as _MetaObjectSendPackageDTO;

  @override
  $Res call({
    Object? package = freezed,
  }) {
    return _then(_MetaObjectSendPackageDTO(
      package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as SendPackageDTO,
    ));
  }

  @override
  $SendPackageDTOCopyWith<$Res> get package {
    return $SendPackageDTOCopyWith<$Res>(_value.package, (value) {
      return _then(_value.copyWith(package: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('${MetaType.newPackage}')
class _$_MetaObjectSendPackageDTO extends _MetaObjectSendPackageDTO {
  const _$_MetaObjectSendPackageDTO(this.package, {String? $type})
      : $type = $type ?? 'package.new',
        super._();

  factory _$_MetaObjectSendPackageDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MetaObjectSendPackageDTOFromJson(json);

  @override
  final SendPackageDTO package;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MetaObjectDTO.package(package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MetaObjectSendPackageDTO &&
            const DeepCollectionEquality().equals(other.package, package));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(package));

  @JsonKey(ignore: true)
  @override
  _$MetaObjectSendPackageDTOCopyWith<_MetaObjectSendPackageDTO> get copyWith =>
      __$MetaObjectSendPackageDTOCopyWithImpl<_MetaObjectSendPackageDTO>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendPackageDTO package) package,
    required TResult Function(UserOrderDTO order) order,
  }) {
    return package(this.package);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SendPackageDTO package)? package,
    TResult Function(UserOrderDTO order)? order,
  }) {
    return package?.call(this.package);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MetaObjectSendPackageDTO value) package,
    required TResult Function(_MetaObjectUserOrderDTO value) order,
  }) {
    return package(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MetaObjectSendPackageDTO value)? package,
    TResult Function(_MetaObjectUserOrderDTO value)? order,
  }) {
    return package?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaObjectSendPackageDTOToJson(this);
  }
}

abstract class _MetaObjectSendPackageDTO extends MetaObjectDTO {
  const factory _MetaObjectSendPackageDTO(SendPackageDTO package) =
      _$_MetaObjectSendPackageDTO;
  const _MetaObjectSendPackageDTO._() : super._();

  factory _MetaObjectSendPackageDTO.fromJson(Map<String, dynamic> json) =
      _$_MetaObjectSendPackageDTO.fromJson;

  SendPackageDTO get package;
  @JsonKey(ignore: true)
  _$MetaObjectSendPackageDTOCopyWith<_MetaObjectSendPackageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MetaObjectUserOrderDTOCopyWith<$Res> {
  factory _$MetaObjectUserOrderDTOCopyWith(_MetaObjectUserOrderDTO value,
          $Res Function(_MetaObjectUserOrderDTO) then) =
      __$MetaObjectUserOrderDTOCopyWithImpl<$Res>;
  $Res call({UserOrderDTO order});

  $UserOrderDTOCopyWith<$Res> get order;
}

/// @nodoc
class __$MetaObjectUserOrderDTOCopyWithImpl<$Res>
    extends _$MetaObjectDTOCopyWithImpl<$Res>
    implements _$MetaObjectUserOrderDTOCopyWith<$Res> {
  __$MetaObjectUserOrderDTOCopyWithImpl(_MetaObjectUserOrderDTO _value,
      $Res Function(_MetaObjectUserOrderDTO) _then)
      : super(_value, (v) => _then(v as _MetaObjectUserOrderDTO));

  @override
  _MetaObjectUserOrderDTO get _value => super._value as _MetaObjectUserOrderDTO;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(_MetaObjectUserOrderDTO(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as UserOrderDTO,
    ));
  }

  @override
  $UserOrderDTOCopyWith<$Res> get order {
    return $UserOrderDTOCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('${MetaType.newOrder}')
class _$_MetaObjectUserOrderDTO extends _MetaObjectUserOrderDTO {
  const _$_MetaObjectUserOrderDTO(this.order, {String? $type})
      : $type = $type ?? 'order.new',
        super._();

  factory _$_MetaObjectUserOrderDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MetaObjectUserOrderDTOFromJson(json);

  @override
  final UserOrderDTO order;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MetaObjectDTO.order(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MetaObjectUserOrderDTO &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(order));

  @JsonKey(ignore: true)
  @override
  _$MetaObjectUserOrderDTOCopyWith<_MetaObjectUserOrderDTO> get copyWith =>
      __$MetaObjectUserOrderDTOCopyWithImpl<_MetaObjectUserOrderDTO>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendPackageDTO package) package,
    required TResult Function(UserOrderDTO order) order,
  }) {
    return order(this.order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SendPackageDTO package)? package,
    TResult Function(UserOrderDTO order)? order,
  }) {
    return order?.call(this.order);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MetaObjectSendPackageDTO value) package,
    required TResult Function(_MetaObjectUserOrderDTO value) order,
  }) {
    return order(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MetaObjectSendPackageDTO value)? package,
    TResult Function(_MetaObjectUserOrderDTO value)? order,
  }) {
    return order?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaObjectUserOrderDTOToJson(this);
  }
}

abstract class _MetaObjectUserOrderDTO extends MetaObjectDTO {
  const factory _MetaObjectUserOrderDTO(UserOrderDTO order) =
      _$_MetaObjectUserOrderDTO;
  const _MetaObjectUserOrderDTO._() : super._();

  factory _MetaObjectUserOrderDTO.fromJson(Map<String, dynamic> json) =
      _$_MetaObjectUserOrderDTO.fromJson;

  UserOrderDTO get order;
  @JsonKey(ignore: true)
  _$MetaObjectUserOrderDTOCopyWith<_MetaObjectUserOrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
