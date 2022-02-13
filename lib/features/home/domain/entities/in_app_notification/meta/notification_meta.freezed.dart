// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of notification_meta.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationMetaTearOff {
  const _$NotificationMetaTearOff();

  _NotificationOrderMeta order(UserOrder order) {
    return _NotificationOrderMeta(
      order,
    );
  }

  _NotificationSendPackageMeta package(SendPackage package) {
    return _NotificationSendPackageMeta(
      package,
    );
  }
}

/// @nodoc
const $NotificationMeta = _$NotificationMetaTearOff();

/// @nodoc
mixin _$NotificationMeta {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserOrder order) order,
    required TResult Function(SendPackage package) package,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserOrder order)? order,
    TResult Function(SendPackage package)? package,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserOrder order)? order,
    TResult Function(SendPackage package)? package,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationOrderMeta value) order,
    required TResult Function(_NotificationSendPackageMeta value) package,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationSendPackageMeta value)? package,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationSendPackageMeta value)? package,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMetaCopyWith<$Res> {
  factory $NotificationMetaCopyWith(
          NotificationMeta value, $Res Function(NotificationMeta) then) =
      _$NotificationMetaCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationMetaCopyWithImpl<$Res>
    implements $NotificationMetaCopyWith<$Res> {
  _$NotificationMetaCopyWithImpl(this._value, this._then);

  final NotificationMeta _value;
  // ignore: unused_field
  final $Res Function(NotificationMeta) _then;
}

/// @nodoc
abstract class _$NotificationOrderMetaCopyWith<$Res> {
  factory _$NotificationOrderMetaCopyWith(_NotificationOrderMeta value,
          $Res Function(_NotificationOrderMeta) then) =
      __$NotificationOrderMetaCopyWithImpl<$Res>;
  $Res call({UserOrder order});

  $UserOrderCopyWith<$Res> get order;
}

/// @nodoc
class __$NotificationOrderMetaCopyWithImpl<$Res>
    extends _$NotificationMetaCopyWithImpl<$Res>
    implements _$NotificationOrderMetaCopyWith<$Res> {
  __$NotificationOrderMetaCopyWithImpl(_NotificationOrderMeta _value,
      $Res Function(_NotificationOrderMeta) _then)
      : super(_value, (v) => _then(v as _NotificationOrderMeta));

  @override
  _NotificationOrderMeta get _value => super._value as _NotificationOrderMeta;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(_NotificationOrderMeta(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as UserOrder,
    ));
  }

  @override
  $UserOrderCopyWith<$Res> get order {
    return $UserOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$_NotificationOrderMeta extends _NotificationOrderMeta {
  const _$_NotificationOrderMeta(this.order) : super._();

  @override
  final UserOrder order;

  @override
  String toString() {
    return 'NotificationMeta.order(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationOrderMeta &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(order));

  @JsonKey(ignore: true)
  @override
  _$NotificationOrderMetaCopyWith<_NotificationOrderMeta> get copyWith =>
      __$NotificationOrderMetaCopyWithImpl<_NotificationOrderMeta>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserOrder order) order,
    required TResult Function(SendPackage package) package,
  }) {
    return order(this.order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserOrder order)? order,
    TResult Function(SendPackage package)? package,
  }) {
    return order?.call(this.order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserOrder order)? order,
    TResult Function(SendPackage package)? package,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order(this.order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationOrderMeta value) order,
    required TResult Function(_NotificationSendPackageMeta value) package,
  }) {
    return order(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationSendPackageMeta value)? package,
  }) {
    return order?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationSendPackageMeta value)? package,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order(this);
    }
    return orElse();
  }
}

abstract class _NotificationOrderMeta extends NotificationMeta {
  const factory _NotificationOrderMeta(UserOrder order) =
      _$_NotificationOrderMeta;
  const _NotificationOrderMeta._() : super._();

  UserOrder get order;
  @JsonKey(ignore: true)
  _$NotificationOrderMetaCopyWith<_NotificationOrderMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotificationSendPackageMetaCopyWith<$Res> {
  factory _$NotificationSendPackageMetaCopyWith(
          _NotificationSendPackageMeta value,
          $Res Function(_NotificationSendPackageMeta) then) =
      __$NotificationSendPackageMetaCopyWithImpl<$Res>;
  $Res call({SendPackage package});

  $SendPackageCopyWith<$Res> get package;
}

/// @nodoc
class __$NotificationSendPackageMetaCopyWithImpl<$Res>
    extends _$NotificationMetaCopyWithImpl<$Res>
    implements _$NotificationSendPackageMetaCopyWith<$Res> {
  __$NotificationSendPackageMetaCopyWithImpl(
      _NotificationSendPackageMeta _value,
      $Res Function(_NotificationSendPackageMeta) _then)
      : super(_value, (v) => _then(v as _NotificationSendPackageMeta));

  @override
  _NotificationSendPackageMeta get _value =>
      super._value as _NotificationSendPackageMeta;

  @override
  $Res call({
    Object? package = freezed,
  }) {
    return _then(_NotificationSendPackageMeta(
      package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as SendPackage,
    ));
  }

  @override
  $SendPackageCopyWith<$Res> get package {
    return $SendPackageCopyWith<$Res>(_value.package, (value) {
      return _then(_value.copyWith(package: value));
    });
  }
}

/// @nodoc

class _$_NotificationSendPackageMeta extends _NotificationSendPackageMeta {
  const _$_NotificationSendPackageMeta(this.package) : super._();

  @override
  final SendPackage package;

  @override
  String toString() {
    return 'NotificationMeta.package(package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationSendPackageMeta &&
            const DeepCollectionEquality().equals(other.package, package));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(package));

  @JsonKey(ignore: true)
  @override
  _$NotificationSendPackageMetaCopyWith<_NotificationSendPackageMeta>
      get copyWith => __$NotificationSendPackageMetaCopyWithImpl<
          _NotificationSendPackageMeta>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserOrder order) order,
    required TResult Function(SendPackage package) package,
  }) {
    return package(this.package);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserOrder order)? order,
    TResult Function(SendPackage package)? package,
  }) {
    return package?.call(this.package);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserOrder order)? order,
    TResult Function(SendPackage package)? package,
    required TResult orElse(),
  }) {
    if (package != null) {
      return package(this.package);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationOrderMeta value) order,
    required TResult Function(_NotificationSendPackageMeta value) package,
  }) {
    return package(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationSendPackageMeta value)? package,
  }) {
    return package?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationOrderMeta value)? order,
    TResult Function(_NotificationSendPackageMeta value)? package,
    required TResult orElse(),
  }) {
    if (package != null) {
      return package(this);
    }
    return orElse();
  }
}

abstract class _NotificationSendPackageMeta extends NotificationMeta {
  const factory _NotificationSendPackageMeta(SendPackage package) =
      _$_NotificationSendPackageMeta;
  const _NotificationSendPackageMeta._() : super._();

  SendPackage get package;
  @JsonKey(ignore: true)
  _$NotificationSendPackageMetaCopyWith<_NotificationSendPackageMeta>
      get copyWith => throw _privateConstructorUsedError;
}
