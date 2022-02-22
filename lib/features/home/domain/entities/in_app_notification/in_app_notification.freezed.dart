// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of in_app_notification.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InAppNotificationTearOff {
  const _$InAppNotificationTearOff();

  _InAppNotification call(
      {required UniqueId<String?> id,
      required UniqueId<String?> riderId,
      required BasicTextField<String?> title,
      required BasicTextField<String?> description,
      NotificationMeta? meta,
      required DateTime createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) {
    return _InAppNotification(
      id: id,
      riderId: riderId,
      title: title,
      description: description,
      meta: meta,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
const $InAppNotification = _$InAppNotificationTearOff();

/// @nodoc
mixin _$InAppNotification {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  UniqueId<String?> get riderId => throw _privateConstructorUsedError;
  BasicTextField<String?> get title => throw _privateConstructorUsedError;
  BasicTextField<String?> get description => throw _privateConstructorUsedError;
  NotificationMeta? get meta => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InAppNotificationCopyWith<InAppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InAppNotificationCopyWith<$Res> {
  factory $InAppNotificationCopyWith(
          InAppNotification value, $Res Function(InAppNotification) then) =
      _$InAppNotificationCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> riderId,
      BasicTextField<String?> title,
      BasicTextField<String?> description,
      NotificationMeta? meta,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  $NotificationMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$InAppNotificationCopyWithImpl<$Res>
    implements $InAppNotificationCopyWith<$Res> {
  _$InAppNotificationCopyWithImpl(this._value, this._then);

  final InAppNotification _value;
  // ignore: unused_field
  final $Res Function(InAppNotification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? riderId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as NotificationMeta?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
  $NotificationMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $NotificationMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$InAppNotificationCopyWith<$Res>
    implements $InAppNotificationCopyWith<$Res> {
  factory _$InAppNotificationCopyWith(
          _InAppNotification value, $Res Function(_InAppNotification) then) =
      __$InAppNotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> riderId,
      BasicTextField<String?> title,
      BasicTextField<String?> description,
      NotificationMeta? meta,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  @override
  $NotificationMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$InAppNotificationCopyWithImpl<$Res>
    extends _$InAppNotificationCopyWithImpl<$Res>
    implements _$InAppNotificationCopyWith<$Res> {
  __$InAppNotificationCopyWithImpl(
      _InAppNotification _value, $Res Function(_InAppNotification) _then)
      : super(_value, (v) => _then(v as _InAppNotification));

  @override
  _InAppNotification get _value => super._value as _InAppNotification;

  @override
  $Res call({
    Object? id = freezed,
    Object? riderId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_InAppNotification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as NotificationMeta?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

class _$_InAppNotification extends _InAppNotification {
  const _$_InAppNotification(
      {required this.id,
      required this.riderId,
      required this.title,
      required this.description,
      this.meta,
      required this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final UniqueId<String?> riderId;
  @override
  final BasicTextField<String?> title;
  @override
  final BasicTextField<String?> description;
  @override
  final NotificationMeta? meta;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'InAppNotification(id: $id, riderId: $riderId, title: $title, description: $description, meta: $meta, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InAppNotification &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.riderId, riderId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(riderId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$InAppNotificationCopyWith<_InAppNotification> get copyWith =>
      __$InAppNotificationCopyWithImpl<_InAppNotification>(this, _$identity);
}

abstract class _InAppNotification extends InAppNotification {
  const factory _InAppNotification(
      {required UniqueId<String?> id,
      required UniqueId<String?> riderId,
      required BasicTextField<String?> title,
      required BasicTextField<String?> description,
      NotificationMeta? meta,
      required DateTime createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) = _$_InAppNotification;
  const _InAppNotification._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  UniqueId<String?> get riderId;
  @override
  BasicTextField<String?> get title;
  @override
  BasicTextField<String?> get description;
  @override
  NotificationMeta? get meta;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$InAppNotificationCopyWith<_InAppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
