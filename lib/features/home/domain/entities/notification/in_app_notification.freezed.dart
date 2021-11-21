// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
      {required BasicTextField<String?> title,
      WebsocketResponseType type = WebsocketResponseType.none,
      required NotificationMeta<dynamic> meta,
      required DateTime createdAt}) {
    return _InAppNotification(
      title: title,
      type: type,
      meta: meta,
      createdAt: createdAt,
    );
  }
}

/// @nodoc
const $InAppNotification = _$InAppNotificationTearOff();

/// @nodoc
mixin _$InAppNotification {
  BasicTextField<String?> get title => throw _privateConstructorUsedError;
  WebsocketResponseType get type => throw _privateConstructorUsedError;
  NotificationMeta<dynamic> get meta => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

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
      {BasicTextField<String?> title,
      WebsocketResponseType type,
      NotificationMeta<dynamic> meta,
      DateTime createdAt});

  $NotificationMetaCopyWith<dynamic, $Res> get meta;
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
    Object? title = freezed,
    Object? type = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WebsocketResponseType,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as NotificationMeta<dynamic>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $NotificationMetaCopyWith<dynamic, $Res> get meta {
    return $NotificationMetaCopyWith<dynamic, $Res>(_value.meta, (value) {
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
      {BasicTextField<String?> title,
      WebsocketResponseType type,
      NotificationMeta<dynamic> meta,
      DateTime createdAt});

  @override
  $NotificationMetaCopyWith<dynamic, $Res> get meta;
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
    Object? title = freezed,
    Object? type = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_InAppNotification(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WebsocketResponseType,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as NotificationMeta<dynamic>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_InAppNotification extends _InAppNotification {
  const _$_InAppNotification(
      {required this.title,
      this.type = WebsocketResponseType.none,
      required this.meta,
      required this.createdAt})
      : super._();

  @override
  final BasicTextField<String?> title;
  @JsonKey(defaultValue: WebsocketResponseType.none)
  @override
  final WebsocketResponseType type;
  @override
  final NotificationMeta<dynamic> meta;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'InAppNotification(title: $title, type: $type, meta: $meta, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InAppNotification &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, type, meta, createdAt);

  @JsonKey(ignore: true)
  @override
  _$InAppNotificationCopyWith<_InAppNotification> get copyWith =>
      __$InAppNotificationCopyWithImpl<_InAppNotification>(this, _$identity);
}

abstract class _InAppNotification extends InAppNotification {
  const factory _InAppNotification(
      {required BasicTextField<String?> title,
      WebsocketResponseType type,
      required NotificationMeta<dynamic> meta,
      required DateTime createdAt}) = _$_InAppNotification;
  const _InAppNotification._() : super._();

  @override
  BasicTextField<String?> get title;
  @override
  WebsocketResponseType get type;
  @override
  NotificationMeta<dynamic> get meta;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$InAppNotificationCopyWith<_InAppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
