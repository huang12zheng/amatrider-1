// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of logistics_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogisticsDTO _$LogisticsDTOFromJson(Map<String, dynamic> json) {
  return _LogisticsDTO.fromJson(json);
}

/// @nodoc
class _$LogisticsDTOTearOff {
  const _$LogisticsDTOTearOff();

  _LogisticsDTO call({UserOrderDTO? order, SendPackageDTO? package}) {
    return _LogisticsDTO(
      order: order,
      package: package,
    );
  }

  LogisticsDTO fromJson(Map<String, Object?> json) {
    return LogisticsDTO.fromJson(json);
  }
}

/// @nodoc
const $LogisticsDTO = _$LogisticsDTOTearOff();

/// @nodoc
mixin _$LogisticsDTO {
  UserOrderDTO? get order => throw _privateConstructorUsedError;
  SendPackageDTO? get package => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogisticsDTOCopyWith<LogisticsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogisticsDTOCopyWith<$Res> {
  factory $LogisticsDTOCopyWith(
          LogisticsDTO value, $Res Function(LogisticsDTO) then) =
      _$LogisticsDTOCopyWithImpl<$Res>;
  $Res call({UserOrderDTO? order, SendPackageDTO? package});

  $UserOrderDTOCopyWith<$Res>? get order;
  $SendPackageDTOCopyWith<$Res>? get package;
}

/// @nodoc
class _$LogisticsDTOCopyWithImpl<$Res> implements $LogisticsDTOCopyWith<$Res> {
  _$LogisticsDTOCopyWithImpl(this._value, this._then);

  final LogisticsDTO _value;
  // ignore: unused_field
  final $Res Function(LogisticsDTO) _then;

  @override
  $Res call({
    Object? order = freezed,
    Object? package = freezed,
  }) {
    return _then(_value.copyWith(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as UserOrderDTO?,
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as SendPackageDTO?,
    ));
  }

  @override
  $UserOrderDTOCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $UserOrderDTOCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value));
    });
  }

  @override
  $SendPackageDTOCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $SendPackageDTOCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value));
    });
  }
}

/// @nodoc
abstract class _$LogisticsDTOCopyWith<$Res>
    implements $LogisticsDTOCopyWith<$Res> {
  factory _$LogisticsDTOCopyWith(
          _LogisticsDTO value, $Res Function(_LogisticsDTO) then) =
      __$LogisticsDTOCopyWithImpl<$Res>;
  @override
  $Res call({UserOrderDTO? order, SendPackageDTO? package});

  @override
  $UserOrderDTOCopyWith<$Res>? get order;
  @override
  $SendPackageDTOCopyWith<$Res>? get package;
}

/// @nodoc
class __$LogisticsDTOCopyWithImpl<$Res> extends _$LogisticsDTOCopyWithImpl<$Res>
    implements _$LogisticsDTOCopyWith<$Res> {
  __$LogisticsDTOCopyWithImpl(
      _LogisticsDTO _value, $Res Function(_LogisticsDTO) _then)
      : super(_value, (v) => _then(v as _LogisticsDTO));

  @override
  _LogisticsDTO get _value => super._value as _LogisticsDTO;

  @override
  $Res call({
    Object? order = freezed,
    Object? package = freezed,
  }) {
    return _then(_LogisticsDTO(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as UserOrderDTO?,
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as SendPackageDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogisticsDTO extends _LogisticsDTO {
  const _$_LogisticsDTO({this.order, this.package}) : super._();

  factory _$_LogisticsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LogisticsDTOFromJson(json);

  @override
  final UserOrderDTO? order;
  @override
  final SendPackageDTO? package;

  @override
  String toString() {
    return 'LogisticsDTO(order: $order, package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogisticsDTO &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.package, package));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(package));

  @JsonKey(ignore: true)
  @override
  _$LogisticsDTOCopyWith<_LogisticsDTO> get copyWith =>
      __$LogisticsDTOCopyWithImpl<_LogisticsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogisticsDTOToJson(this);
  }
}

abstract class _LogisticsDTO extends LogisticsDTO {
  const factory _LogisticsDTO({UserOrderDTO? order, SendPackageDTO? package}) =
      _$_LogisticsDTO;
  const _LogisticsDTO._() : super._();

  factory _LogisticsDTO.fromJson(Map<String, dynamic> json) =
      _$_LogisticsDTO.fromJson;

  @override
  UserOrderDTO? get order;
  @override
  SendPackageDTO? get package;
  @override
  @JsonKey(ignore: true)
  _$LogisticsDTOCopyWith<_LogisticsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

LogisticsListDTO _$LogisticsListDTOFromJson(Map<String, dynamic> json) {
  return _LogisticsListDTO.fromJson(json);
}

/// @nodoc
class _$LogisticsListDTOTearOff {
  const _$LogisticsListDTOTearOff();

  _LogisticsListDTO call(
      {List<UserOrderDTO> orders = const [],
      List<SendPackageDTO> packages = const [],
      @JsonKey(name: 'potential')
          List<UserOrderDTO> potentialOrders = const []}) {
    return _LogisticsListDTO(
      orders: orders,
      packages: packages,
      potentialOrders: potentialOrders,
    );
  }

  LogisticsListDTO fromJson(Map<String, Object?> json) {
    return LogisticsListDTO.fromJson(json);
  }
}

/// @nodoc
const $LogisticsListDTO = _$LogisticsListDTOTearOff();

/// @nodoc
mixin _$LogisticsListDTO {
  List<UserOrderDTO> get orders => throw _privateConstructorUsedError;
  List<SendPackageDTO> get packages => throw _privateConstructorUsedError;
  @JsonKey(name: 'potential')
  List<UserOrderDTO> get potentialOrders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogisticsListDTOCopyWith<LogisticsListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogisticsListDTOCopyWith<$Res> {
  factory $LogisticsListDTOCopyWith(
          LogisticsListDTO value, $Res Function(LogisticsListDTO) then) =
      _$LogisticsListDTOCopyWithImpl<$Res>;
  $Res call(
      {List<UserOrderDTO> orders,
      List<SendPackageDTO> packages,
      @JsonKey(name: 'potential') List<UserOrderDTO> potentialOrders});
}

/// @nodoc
class _$LogisticsListDTOCopyWithImpl<$Res>
    implements $LogisticsListDTOCopyWith<$Res> {
  _$LogisticsListDTOCopyWithImpl(this._value, this._then);

  final LogisticsListDTO _value;
  // ignore: unused_field
  final $Res Function(LogisticsListDTO) _then;

  @override
  $Res call({
    Object? orders = freezed,
    Object? packages = freezed,
    Object? potentialOrders = freezed,
  }) {
    return _then(_value.copyWith(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<UserOrderDTO>,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<SendPackageDTO>,
      potentialOrders: potentialOrders == freezed
          ? _value.potentialOrders
          : potentialOrders // ignore: cast_nullable_to_non_nullable
              as List<UserOrderDTO>,
    ));
  }
}

/// @nodoc
abstract class _$LogisticsListDTOCopyWith<$Res>
    implements $LogisticsListDTOCopyWith<$Res> {
  factory _$LogisticsListDTOCopyWith(
          _LogisticsListDTO value, $Res Function(_LogisticsListDTO) then) =
      __$LogisticsListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<UserOrderDTO> orders,
      List<SendPackageDTO> packages,
      @JsonKey(name: 'potential') List<UserOrderDTO> potentialOrders});
}

/// @nodoc
class __$LogisticsListDTOCopyWithImpl<$Res>
    extends _$LogisticsListDTOCopyWithImpl<$Res>
    implements _$LogisticsListDTOCopyWith<$Res> {
  __$LogisticsListDTOCopyWithImpl(
      _LogisticsListDTO _value, $Res Function(_LogisticsListDTO) _then)
      : super(_value, (v) => _then(v as _LogisticsListDTO));

  @override
  _LogisticsListDTO get _value => super._value as _LogisticsListDTO;

  @override
  $Res call({
    Object? orders = freezed,
    Object? packages = freezed,
    Object? potentialOrders = freezed,
  }) {
    return _then(_LogisticsListDTO(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<UserOrderDTO>,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<SendPackageDTO>,
      potentialOrders: potentialOrders == freezed
          ? _value.potentialOrders
          : potentialOrders // ignore: cast_nullable_to_non_nullable
              as List<UserOrderDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogisticsListDTO extends _LogisticsListDTO {
  const _$_LogisticsListDTO(
      {this.orders = const [],
      this.packages = const [],
      @JsonKey(name: 'potential') this.potentialOrders = const []})
      : super._();

  factory _$_LogisticsListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LogisticsListDTOFromJson(json);

  @JsonKey()
  @override
  final List<UserOrderDTO> orders;
  @JsonKey()
  @override
  final List<SendPackageDTO> packages;
  @override
  @JsonKey(name: 'potential')
  final List<UserOrderDTO> potentialOrders;

  @override
  String toString() {
    return 'LogisticsListDTO(orders: $orders, packages: $packages, potentialOrders: $potentialOrders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogisticsListDTO &&
            const DeepCollectionEquality().equals(other.orders, orders) &&
            const DeepCollectionEquality().equals(other.packages, packages) &&
            const DeepCollectionEquality()
                .equals(other.potentialOrders, potentialOrders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orders),
      const DeepCollectionEquality().hash(packages),
      const DeepCollectionEquality().hash(potentialOrders));

  @JsonKey(ignore: true)
  @override
  _$LogisticsListDTOCopyWith<_LogisticsListDTO> get copyWith =>
      __$LogisticsListDTOCopyWithImpl<_LogisticsListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogisticsListDTOToJson(this);
  }
}

abstract class _LogisticsListDTO extends LogisticsListDTO {
  const factory _LogisticsListDTO(
          {List<UserOrderDTO> orders,
          List<SendPackageDTO> packages,
          @JsonKey(name: 'potential') List<UserOrderDTO> potentialOrders}) =
      _$_LogisticsListDTO;
  const _LogisticsListDTO._() : super._();

  factory _LogisticsListDTO.fromJson(Map<String, dynamic> json) =
      _$_LogisticsListDTO.fromJson;

  @override
  List<UserOrderDTO> get orders;
  @override
  List<SendPackageDTO> get packages;
  @override
  @JsonKey(name: 'potential')
  List<UserOrderDTO> get potentialOrders;
  @override
  @JsonKey(ignore: true)
  _$LogisticsListDTOCopyWith<_LogisticsListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
