// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of notification_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  _NotificationState call(
      {bool isLoading = false,
      bool validate = false,
      bool subscribed = false,
      KtMap<DateTime?, KtList<InAppNotification>> inAppNotificationCollection =
          const KtMap.empty(),
      KtList<InAppNotification> inAppNotifications = const KtList.empty(),
      Option<AppHttpResponse?> status = const None()}) {
    return _NotificationState(
      isLoading: isLoading,
      validate: validate,
      subscribed: subscribed,
      inAppNotificationCollection: inAppNotificationCollection,
      inAppNotifications: inAppNotifications,
      status: status,
    );
  }
}

/// @nodoc
const $NotificationState = _$NotificationStateTearOff();

/// @nodoc
mixin _$NotificationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get subscribed => throw _privateConstructorUsedError;
  KtMap<DateTime?, KtList<InAppNotification>> get inAppNotificationCollection =>
      throw _privateConstructorUsedError;
  KtList<InAppNotification> get inAppNotifications =>
      throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      bool subscribed,
      KtMap<DateTime?, KtList<InAppNotification>> inAppNotificationCollection,
      KtList<InAppNotification> inAppNotifications,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? subscribed = freezed,
    Object? inAppNotificationCollection = freezed,
    Object? inAppNotifications = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      subscribed: subscribed == freezed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      inAppNotificationCollection: inAppNotificationCollection == freezed
          ? _value.inAppNotificationCollection
          : inAppNotificationCollection // ignore: cast_nullable_to_non_nullable
              as KtMap<DateTime?, KtList<InAppNotification>>,
      inAppNotifications: inAppNotifications == freezed
          ? _value.inAppNotifications
          : inAppNotifications // ignore: cast_nullable_to_non_nullable
              as KtList<InAppNotification>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc
abstract class _$NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(
          _NotificationState value, $Res Function(_NotificationState) then) =
      __$NotificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      bool subscribed,
      KtMap<DateTime?, KtList<InAppNotification>> inAppNotificationCollection,
      KtList<InAppNotification> inAppNotifications,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(
      _NotificationState _value, $Res Function(_NotificationState) _then)
      : super(_value, (v) => _then(v as _NotificationState));

  @override
  _NotificationState get _value => super._value as _NotificationState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? subscribed = freezed,
    Object? inAppNotificationCollection = freezed,
    Object? inAppNotifications = freezed,
    Object? status = freezed,
  }) {
    return _then(_NotificationState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      subscribed: subscribed == freezed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      inAppNotificationCollection: inAppNotificationCollection == freezed
          ? _value.inAppNotificationCollection
          : inAppNotificationCollection // ignore: cast_nullable_to_non_nullable
              as KtMap<DateTime?, KtList<InAppNotification>>,
      inAppNotifications: inAppNotifications == freezed
          ? _value.inAppNotifications
          : inAppNotifications // ignore: cast_nullable_to_non_nullable
              as KtList<InAppNotification>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_NotificationState extends _NotificationState
    with DiagnosticableTreeMixin {
  const _$_NotificationState(
      {this.isLoading = false,
      this.validate = false,
      this.subscribed = false,
      this.inAppNotificationCollection = const KtMap.empty(),
      this.inAppNotifications = const KtList.empty(),
      this.status = const None()})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool validate;
  @JsonKey()
  @override
  final bool subscribed;
  @JsonKey()
  @override
  final KtMap<DateTime?, KtList<InAppNotification>> inAppNotificationCollection;
  @JsonKey()
  @override
  final KtList<InAppNotification> inAppNotifications;
  @JsonKey()
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState(isLoading: $isLoading, validate: $validate, subscribed: $subscribed, inAppNotificationCollection: $inAppNotificationCollection, inAppNotifications: $inAppNotifications, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('validate', validate))
      ..add(DiagnosticsProperty('subscribed', subscribed))
      ..add(DiagnosticsProperty(
          'inAppNotificationCollection', inAppNotificationCollection))
      ..add(DiagnosticsProperty('inAppNotifications', inAppNotifications))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.validate, validate) &&
            const DeepCollectionEquality()
                .equals(other.subscribed, subscribed) &&
            const DeepCollectionEquality().equals(
                other.inAppNotificationCollection,
                inAppNotificationCollection) &&
            const DeepCollectionEquality()
                .equals(other.inAppNotifications, inAppNotifications) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(validate),
      const DeepCollectionEquality().hash(subscribed),
      const DeepCollectionEquality().hash(inAppNotificationCollection),
      const DeepCollectionEquality().hash(inAppNotifications),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);
}

abstract class _NotificationState extends NotificationState {
  const factory _NotificationState(
      {bool isLoading,
      bool validate,
      bool subscribed,
      KtMap<DateTime?, KtList<InAppNotification>> inAppNotificationCollection,
      KtList<InAppNotification> inAppNotifications,
      Option<AppHttpResponse?> status}) = _$_NotificationState;
  const _NotificationState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  bool get subscribed;
  @override
  KtMap<DateTime?, KtList<InAppNotification>> get inAppNotificationCollection;
  @override
  KtList<InAppNotification> get inAppNotifications;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
