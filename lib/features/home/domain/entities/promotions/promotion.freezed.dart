// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of promotion.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PromotionTearOff {
  const _$PromotionTearOff();

  _Promotion call(
      {required UniqueId<String?> id,
      required MediaField url,
      required AttachmentMime mime,
      required MediaField streamUrl,
      PromotionDiscount? discount,
      required BasicTextField<String?> description,
      required Store store,
      DateTime? stopShowingAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) {
    return _Promotion(
      id: id,
      url: url,
      mime: mime,
      streamUrl: streamUrl,
      discount: discount,
      description: description,
      store: store,
      stopShowingAt: stopShowingAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
const $Promotion = _$PromotionTearOff();

/// @nodoc
mixin _$Promotion {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  MediaField get url => throw _privateConstructorUsedError;
  AttachmentMime get mime => throw _privateConstructorUsedError;
  MediaField get streamUrl => throw _privateConstructorUsedError;
  PromotionDiscount? get discount => throw _privateConstructorUsedError;
  BasicTextField<String?> get description => throw _privateConstructorUsedError;
  Store get store => throw _privateConstructorUsedError;
  DateTime? get stopShowingAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionCopyWith<Promotion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCopyWith<$Res> {
  factory $PromotionCopyWith(Promotion value, $Res Function(Promotion) then) =
      _$PromotionCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      MediaField url,
      AttachmentMime mime,
      MediaField streamUrl,
      PromotionDiscount? discount,
      BasicTextField<String?> description,
      Store store,
      DateTime? stopShowingAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  $PromotionDiscountCopyWith<$Res>? get discount;
  $StoreCopyWith<$Res> get store;
}

/// @nodoc
class _$PromotionCopyWithImpl<$Res> implements $PromotionCopyWith<$Res> {
  _$PromotionCopyWithImpl(this._value, this._then);

  final Promotion _value;
  // ignore: unused_field
  final $Res Function(Promotion) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? mime = freezed,
    Object? streamUrl = freezed,
    Object? discount = freezed,
    Object? description = freezed,
    Object? store = freezed,
    Object? stopShowingAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as MediaField,
      mime: mime == freezed
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as AttachmentMime,
      streamUrl: streamUrl == freezed
          ? _value.streamUrl
          : streamUrl // ignore: cast_nullable_to_non_nullable
              as MediaField,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as PromotionDiscount?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store,
      stopShowingAt: stopShowingAt == freezed
          ? _value.stopShowingAt
          : stopShowingAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
  $PromotionDiscountCopyWith<$Res>? get discount {
    if (_value.discount == null) {
      return null;
    }

    return $PromotionDiscountCopyWith<$Res>(_value.discount!, (value) {
      return _then(_value.copyWith(discount: value));
    });
  }

  @override
  $StoreCopyWith<$Res> get store {
    return $StoreCopyWith<$Res>(_value.store, (value) {
      return _then(_value.copyWith(store: value));
    });
  }
}

/// @nodoc
abstract class _$PromotionCopyWith<$Res> implements $PromotionCopyWith<$Res> {
  factory _$PromotionCopyWith(
          _Promotion value, $Res Function(_Promotion) then) =
      __$PromotionCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      MediaField url,
      AttachmentMime mime,
      MediaField streamUrl,
      PromotionDiscount? discount,
      BasicTextField<String?> description,
      Store store,
      DateTime? stopShowingAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  @override
  $PromotionDiscountCopyWith<$Res>? get discount;
  @override
  $StoreCopyWith<$Res> get store;
}

/// @nodoc
class __$PromotionCopyWithImpl<$Res> extends _$PromotionCopyWithImpl<$Res>
    implements _$PromotionCopyWith<$Res> {
  __$PromotionCopyWithImpl(_Promotion _value, $Res Function(_Promotion) _then)
      : super(_value, (v) => _then(v as _Promotion));

  @override
  _Promotion get _value => super._value as _Promotion;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? mime = freezed,
    Object? streamUrl = freezed,
    Object? discount = freezed,
    Object? description = freezed,
    Object? store = freezed,
    Object? stopShowingAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_Promotion(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as MediaField,
      mime: mime == freezed
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as AttachmentMime,
      streamUrl: streamUrl == freezed
          ? _value.streamUrl
          : streamUrl // ignore: cast_nullable_to_non_nullable
              as MediaField,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as PromotionDiscount?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store,
      stopShowingAt: stopShowingAt == freezed
          ? _value.stopShowingAt
          : stopShowingAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

class _$_Promotion extends _Promotion {
  const _$_Promotion(
      {required this.id,
      required this.url,
      required this.mime,
      required this.streamUrl,
      this.discount,
      required this.description,
      required this.store,
      this.stopShowingAt,
      this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final MediaField url;
  @override
  final AttachmentMime mime;
  @override
  final MediaField streamUrl;
  @override
  final PromotionDiscount? discount;
  @override
  final BasicTextField<String?> description;
  @override
  final Store store;
  @override
  final DateTime? stopShowingAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Promotion(id: $id, url: $url, mime: $mime, streamUrl: $streamUrl, discount: $discount, description: $description, store: $store, stopShowingAt: $stopShowingAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Promotion &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.mime, mime) &&
            const DeepCollectionEquality().equals(other.streamUrl, streamUrl) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.store, store) &&
            const DeepCollectionEquality()
                .equals(other.stopShowingAt, stopShowingAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(mime),
      const DeepCollectionEquality().hash(streamUrl),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(store),
      const DeepCollectionEquality().hash(stopShowingAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$PromotionCopyWith<_Promotion> get copyWith =>
      __$PromotionCopyWithImpl<_Promotion>(this, _$identity);
}

abstract class _Promotion extends Promotion {
  const factory _Promotion(
      {required UniqueId<String?> id,
      required MediaField url,
      required AttachmentMime mime,
      required MediaField streamUrl,
      PromotionDiscount? discount,
      required BasicTextField<String?> description,
      required Store store,
      DateTime? stopShowingAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) = _$_Promotion;
  const _Promotion._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  MediaField get url;
  @override
  AttachmentMime get mime;
  @override
  MediaField get streamUrl;
  @override
  PromotionDiscount? get discount;
  @override
  BasicTextField<String?> get description;
  @override
  Store get store;
  @override
  DateTime? get stopShowingAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$PromotionCopyWith<_Promotion> get copyWith =>
      throw _privateConstructorUsedError;
}
