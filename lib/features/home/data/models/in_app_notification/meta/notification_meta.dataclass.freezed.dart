// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of notification_meta.dataclass.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationMetaDTO _$NotificationMetaDTOFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'order':
      return _NotificationOrderMeta.fromJson(json);
    case 'package':
      return _NotificationPackageMeta.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'NotificationMetaDTO',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$NotificationMetaDTOTearOff {
  const _$NotificationMetaDTOTearOff();

  _NotificationOrderMeta order(
      {@NotificationTypeSerializer() required NotificationType type,
      required UserOrderDTO order}) {
    return _NotificationOrderMeta(
      type: type,
      order: order,
    );
  }

  _NotificationPackageMeta package(
      {@NotificationTypeSerializer() required NotificationType type,
      required SendPackageDTO package}) {
    return _NotificationPackageMeta(
      type: type,
      package: package,
    );
  }

  NotificationMetaDTO fromJson(Map<String, Object?> json) {
    return NotificationMetaDTO.fromJson(json);
  }
}

/// @nodoc
const $NotificationMetaDTO = _$NotificationMetaDTOTearOff();

/// @nodoc
mixin _$NotificationMetaDTO {
  @NotificationTypeSerializer()
  NotificationType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @NotificationTypeSerializer() NotificationType type,
            UserOrderDTO order)
        order,
    required TResult Function(
            @NotificationTypeSerializer() NotificationType type,
            SendPackageDTO package)
        package,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            UserOrderDTO order)?
        order,
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            SendPackageDTO package)?
        package,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            UserOrderDTO order)?
        order,
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            SendPackageDTO package)?
        package,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationOrderMeta value) order,
    required TResult Function(_NotificationPackageMeta value) package,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationPackageMeta value)? package,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationPackageMeta value)? package,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationMetaDTOCopyWith<NotificationMetaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMetaDTOCopyWith<$Res> {
  factory $NotificationMetaDTOCopyWith(
          NotificationMetaDTO value, $Res Function(NotificationMetaDTO) then) =
      _$NotificationMetaDTOCopyWithImpl<$Res>;
  $Res call({@NotificationTypeSerializer() NotificationType type});
}

/// @nodoc
class _$NotificationMetaDTOCopyWithImpl<$Res>
    implements $NotificationMetaDTOCopyWith<$Res> {
  _$NotificationMetaDTOCopyWithImpl(this._value, this._then);

  final NotificationMetaDTO _value;
  // ignore: unused_field
  final $Res Function(NotificationMetaDTO) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
    ));
  }
}

/// @nodoc
abstract class _$NotificationOrderMetaCopyWith<$Res>
    implements $NotificationMetaDTOCopyWith<$Res> {
  factory _$NotificationOrderMetaCopyWith(_NotificationOrderMeta value,
          $Res Function(_NotificationOrderMeta) then) =
      __$NotificationOrderMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@NotificationTypeSerializer() NotificationType type,
      UserOrderDTO order});

  $UserOrderDTOCopyWith<$Res> get order;
}

/// @nodoc
class __$NotificationOrderMetaCopyWithImpl<$Res>
    extends _$NotificationMetaDTOCopyWithImpl<$Res>
    implements _$NotificationOrderMetaCopyWith<$Res> {
  __$NotificationOrderMetaCopyWithImpl(_NotificationOrderMeta _value,
      $Res Function(_NotificationOrderMeta) _then)
      : super(_value, (v) => _then(v as _NotificationOrderMeta));

  @override
  _NotificationOrderMeta get _value => super._value as _NotificationOrderMeta;

  @override
  $Res call({
    Object? type = freezed,
    Object? order = freezed,
  }) {
    return _then(_NotificationOrderMeta(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      order: order == freezed
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
@FreezedUnionValue('${NotificationType.cart_order}')
class _$_NotificationOrderMeta extends _NotificationOrderMeta {
  const _$_NotificationOrderMeta(
      {@NotificationTypeSerializer() required this.type, required this.order})
      : super._();

  factory _$_NotificationOrderMeta.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationOrderMetaFromJson(json);

  @override
  @NotificationTypeSerializer()
  final NotificationType type;
  @override
  final UserOrderDTO order;

  @override
  String toString() {
    return 'NotificationMetaDTO.order(type: $type, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationOrderMeta &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(order));

  @JsonKey(ignore: true)
  @override
  _$NotificationOrderMetaCopyWith<_NotificationOrderMeta> get copyWith =>
      __$NotificationOrderMetaCopyWithImpl<_NotificationOrderMeta>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @NotificationTypeSerializer() NotificationType type,
            UserOrderDTO order)
        order,
    required TResult Function(
            @NotificationTypeSerializer() NotificationType type,
            SendPackageDTO package)
        package,
  }) {
    return order(type, this.order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            UserOrderDTO order)?
        order,
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            SendPackageDTO package)?
        package,
  }) {
    return order?.call(type, this.order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            UserOrderDTO order)?
        order,
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            SendPackageDTO package)?
        package,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order(type, this.order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationOrderMeta value) order,
    required TResult Function(_NotificationPackageMeta value) package,
  }) {
    return order(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationPackageMeta value)? package,
  }) {
    return order?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationPackageMeta value)? package,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationOrderMetaToJson(this);
  }
}

abstract class _NotificationOrderMeta extends NotificationMetaDTO {
  const factory _NotificationOrderMeta(
      {@NotificationTypeSerializer() required NotificationType type,
      required UserOrderDTO order}) = _$_NotificationOrderMeta;
  const _NotificationOrderMeta._() : super._();

  factory _NotificationOrderMeta.fromJson(Map<String, dynamic> json) =
      _$_NotificationOrderMeta.fromJson;

  @override
  @NotificationTypeSerializer()
  NotificationType get type;
  UserOrderDTO get order;
  @override
  @JsonKey(ignore: true)
  _$NotificationOrderMetaCopyWith<_NotificationOrderMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotificationPackageMetaCopyWith<$Res>
    implements $NotificationMetaDTOCopyWith<$Res> {
  factory _$NotificationPackageMetaCopyWith(_NotificationPackageMeta value,
          $Res Function(_NotificationPackageMeta) then) =
      __$NotificationPackageMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@NotificationTypeSerializer() NotificationType type,
      SendPackageDTO package});

  $SendPackageDTOCopyWith<$Res> get package;
}

/// @nodoc
class __$NotificationPackageMetaCopyWithImpl<$Res>
    extends _$NotificationMetaDTOCopyWithImpl<$Res>
    implements _$NotificationPackageMetaCopyWith<$Res> {
  __$NotificationPackageMetaCopyWithImpl(_NotificationPackageMeta _value,
      $Res Function(_NotificationPackageMeta) _then)
      : super(_value, (v) => _then(v as _NotificationPackageMeta));

  @override
  _NotificationPackageMeta get _value =>
      super._value as _NotificationPackageMeta;

  @override
  $Res call({
    Object? type = freezed,
    Object? package = freezed,
  }) {
    return _then(_NotificationPackageMeta(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      package: package == freezed
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
@FreezedUnionValue('${NotificationType.send_package}')
class _$_NotificationPackageMeta extends _NotificationPackageMeta {
  const _$_NotificationPackageMeta(
      {@NotificationTypeSerializer() required this.type, required this.package})
      : super._();

  factory _$_NotificationPackageMeta.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationPackageMetaFromJson(json);

  @override
  @NotificationTypeSerializer()
  final NotificationType type;
  @override
  final SendPackageDTO package;

  @override
  String toString() {
    return 'NotificationMetaDTO.package(type: $type, package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationPackageMeta &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.package, package));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(package));

  @JsonKey(ignore: true)
  @override
  _$NotificationPackageMetaCopyWith<_NotificationPackageMeta> get copyWith =>
      __$NotificationPackageMetaCopyWithImpl<_NotificationPackageMeta>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @NotificationTypeSerializer() NotificationType type,
            UserOrderDTO order)
        order,
    required TResult Function(
            @NotificationTypeSerializer() NotificationType type,
            SendPackageDTO package)
        package,
  }) {
    return package(type, this.package);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            UserOrderDTO order)?
        order,
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            SendPackageDTO package)?
        package,
  }) {
    return package?.call(type, this.package);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            UserOrderDTO order)?
        order,
    TResult Function(@NotificationTypeSerializer() NotificationType type,
            SendPackageDTO package)?
        package,
    required TResult orElse(),
  }) {
    if (package != null) {
      return package(type, this.package);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationOrderMeta value) order,
    required TResult Function(_NotificationPackageMeta value) package,
  }) {
    return package(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationPackageMeta value)? package,
  }) {
    return package?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationPackageMeta value)? package,
    required TResult orElse(),
  }) {
    if (package != null) {
      return package(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationPackageMetaToJson(this);
  }
}

abstract class _NotificationPackageMeta extends NotificationMetaDTO {
  const factory _NotificationPackageMeta(
      {@NotificationTypeSerializer() required NotificationType type,
      required SendPackageDTO package}) = _$_NotificationPackageMeta;
  const _NotificationPackageMeta._() : super._();

  factory _NotificationPackageMeta.fromJson(Map<String, dynamic> json) =
      _$_NotificationPackageMeta.fromJson;

  @override
  @NotificationTypeSerializer()
  NotificationType get type;
  SendPackageDTO get package;
  @override
  @JsonKey(ignore: true)
  _$NotificationPackageMetaCopyWith<_NotificationPackageMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
