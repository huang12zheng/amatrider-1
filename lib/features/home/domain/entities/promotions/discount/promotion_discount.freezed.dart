// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of promotion_discount.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PromotionDiscountTearOff {
  const _$PromotionDiscountTearOff();

  _PromotionDiscount call(
      {required UniqueId<String?> id,
      required UniqueId<String?> promotionId,
      required UniqueId<String?> storeId,
      required BasicTextField<String?> promoCode,
      required BasicTextField<String?> percentageOff,
      required BasicTextField<int> maxUse,
      required BasicTextField<int> maxUsePerUser,
      DateTime? startAt,
      DateTime? endAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) {
    return _PromotionDiscount(
      id: id,
      promotionId: promotionId,
      storeId: storeId,
      promoCode: promoCode,
      percentageOff: percentageOff,
      maxUse: maxUse,
      maxUsePerUser: maxUsePerUser,
      startAt: startAt,
      endAt: endAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
const $PromotionDiscount = _$PromotionDiscountTearOff();

/// @nodoc
mixin _$PromotionDiscount {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  UniqueId<String?> get promotionId => throw _privateConstructorUsedError;
  UniqueId<String?> get storeId => throw _privateConstructorUsedError;
  BasicTextField<String?> get promoCode => throw _privateConstructorUsedError;
  BasicTextField<String?> get percentageOff =>
      throw _privateConstructorUsedError;
  BasicTextField<int> get maxUse => throw _privateConstructorUsedError;
  BasicTextField<int> get maxUsePerUser => throw _privateConstructorUsedError;
  DateTime? get startAt => throw _privateConstructorUsedError;
  DateTime? get endAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionDiscountCopyWith<PromotionDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDiscountCopyWith<$Res> {
  factory $PromotionDiscountCopyWith(
          PromotionDiscount value, $Res Function(PromotionDiscount) then) =
      _$PromotionDiscountCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> promotionId,
      UniqueId<String?> storeId,
      BasicTextField<String?> promoCode,
      BasicTextField<String?> percentageOff,
      BasicTextField<int> maxUse,
      BasicTextField<int> maxUsePerUser,
      DateTime? startAt,
      DateTime? endAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$PromotionDiscountCopyWithImpl<$Res>
    implements $PromotionDiscountCopyWith<$Res> {
  _$PromotionDiscountCopyWithImpl(this._value, this._then);

  final PromotionDiscount _value;
  // ignore: unused_field
  final $Res Function(PromotionDiscount) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? promotionId = freezed,
    Object? storeId = freezed,
    Object? promoCode = freezed,
    Object? percentageOff = freezed,
    Object? maxUse = freezed,
    Object? maxUsePerUser = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      promotionId: promotionId == freezed
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      promoCode: promoCode == freezed
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      percentageOff: percentageOff == freezed
          ? _value.percentageOff
          : percentageOff // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      maxUse: maxUse == freezed
          ? _value.maxUse
          : maxUse // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int>,
      maxUsePerUser: maxUsePerUser == freezed
          ? _value.maxUsePerUser
          : maxUsePerUser // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int>,
      startAt: startAt == freezed
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: endAt == freezed
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$PromotionDiscountCopyWith<$Res>
    implements $PromotionDiscountCopyWith<$Res> {
  factory _$PromotionDiscountCopyWith(
          _PromotionDiscount value, $Res Function(_PromotionDiscount) then) =
      __$PromotionDiscountCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> promotionId,
      UniqueId<String?> storeId,
      BasicTextField<String?> promoCode,
      BasicTextField<String?> percentageOff,
      BasicTextField<int> maxUse,
      BasicTextField<int> maxUsePerUser,
      DateTime? startAt,
      DateTime? endAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$PromotionDiscountCopyWithImpl<$Res>
    extends _$PromotionDiscountCopyWithImpl<$Res>
    implements _$PromotionDiscountCopyWith<$Res> {
  __$PromotionDiscountCopyWithImpl(
      _PromotionDiscount _value, $Res Function(_PromotionDiscount) _then)
      : super(_value, (v) => _then(v as _PromotionDiscount));

  @override
  _PromotionDiscount get _value => super._value as _PromotionDiscount;

  @override
  $Res call({
    Object? id = freezed,
    Object? promotionId = freezed,
    Object? storeId = freezed,
    Object? promoCode = freezed,
    Object? percentageOff = freezed,
    Object? maxUse = freezed,
    Object? maxUsePerUser = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_PromotionDiscount(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      promotionId: promotionId == freezed
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      promoCode: promoCode == freezed
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      percentageOff: percentageOff == freezed
          ? _value.percentageOff
          : percentageOff // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      maxUse: maxUse == freezed
          ? _value.maxUse
          : maxUse // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int>,
      maxUsePerUser: maxUsePerUser == freezed
          ? _value.maxUsePerUser
          : maxUsePerUser // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int>,
      startAt: startAt == freezed
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: endAt == freezed
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
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

class _$_PromotionDiscount extends _PromotionDiscount {
  const _$_PromotionDiscount(
      {required this.id,
      required this.promotionId,
      required this.storeId,
      required this.promoCode,
      required this.percentageOff,
      required this.maxUse,
      required this.maxUsePerUser,
      this.startAt,
      this.endAt,
      this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final UniqueId<String?> promotionId;
  @override
  final UniqueId<String?> storeId;
  @override
  final BasicTextField<String?> promoCode;
  @override
  final BasicTextField<String?> percentageOff;
  @override
  final BasicTextField<int> maxUse;
  @override
  final BasicTextField<int> maxUsePerUser;
  @override
  final DateTime? startAt;
  @override
  final DateTime? endAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'PromotionDiscount(id: $id, promotionId: $promotionId, storeId: $storeId, promoCode: $promoCode, percentageOff: $percentageOff, maxUse: $maxUse, maxUsePerUser: $maxUsePerUser, startAt: $startAt, endAt: $endAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PromotionDiscount &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.promotionId, promotionId) &&
            const DeepCollectionEquality().equals(other.storeId, storeId) &&
            const DeepCollectionEquality().equals(other.promoCode, promoCode) &&
            const DeepCollectionEquality()
                .equals(other.percentageOff, percentageOff) &&
            const DeepCollectionEquality().equals(other.maxUse, maxUse) &&
            const DeepCollectionEquality()
                .equals(other.maxUsePerUser, maxUsePerUser) &&
            const DeepCollectionEquality().equals(other.startAt, startAt) &&
            const DeepCollectionEquality().equals(other.endAt, endAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(promotionId),
      const DeepCollectionEquality().hash(storeId),
      const DeepCollectionEquality().hash(promoCode),
      const DeepCollectionEquality().hash(percentageOff),
      const DeepCollectionEquality().hash(maxUse),
      const DeepCollectionEquality().hash(maxUsePerUser),
      const DeepCollectionEquality().hash(startAt),
      const DeepCollectionEquality().hash(endAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$PromotionDiscountCopyWith<_PromotionDiscount> get copyWith =>
      __$PromotionDiscountCopyWithImpl<_PromotionDiscount>(this, _$identity);
}

abstract class _PromotionDiscount extends PromotionDiscount {
  const factory _PromotionDiscount(
      {required UniqueId<String?> id,
      required UniqueId<String?> promotionId,
      required UniqueId<String?> storeId,
      required BasicTextField<String?> promoCode,
      required BasicTextField<String?> percentageOff,
      required BasicTextField<int> maxUse,
      required BasicTextField<int> maxUsePerUser,
      DateTime? startAt,
      DateTime? endAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) = _$_PromotionDiscount;
  const _PromotionDiscount._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  UniqueId<String?> get promotionId;
  @override
  UniqueId<String?> get storeId;
  @override
  BasicTextField<String?> get promoCode;
  @override
  BasicTextField<String?> get percentageOff;
  @override
  BasicTextField<int> get maxUse;
  @override
  BasicTextField<int> get maxUsePerUser;
  @override
  DateTime? get startAt;
  @override
  DateTime? get endAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$PromotionDiscountCopyWith<_PromotionDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}
