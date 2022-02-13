// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of promotion_discount_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromotionDiscountDTO _$PromotionDiscountDTOFromJson(Map<String, dynamic> json) {
  return _PromotionDiscountDTO.fromJson(json);
}

/// @nodoc
class _$PromotionDiscountDTOTearOff {
  const _$PromotionDiscountDTOTearOff();

  _PromotionDiscountDTO call(
      {String? id,
      String? promotionId,
      @JsonKey(name: 'restaurant_id')
          String? storeId,
      @JsonKey(name: 'code')
          String? promoCode,
      String? percentageOff,
      @JsonKey(name: 'maximum_number_of_use')
      @IntegerSerializer()
          int? maxUse,
      @JsonKey(name: 'maximum_use_per_user')
      @IntegerSerializer()
          int? maxUsePerUser,
      @JsonKey(name: 'start_from')
      @TimestampConverter()
          DateTime? startAt,
      @JsonKey(name: 'end_at')
      @TimestampConverter()
          DateTime? endAt,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt}) {
    return _PromotionDiscountDTO(
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

  PromotionDiscountDTO fromJson(Map<String, Object?> json) {
    return PromotionDiscountDTO.fromJson(json);
  }
}

/// @nodoc
const $PromotionDiscountDTO = _$PromotionDiscountDTOTearOff();

/// @nodoc
mixin _$PromotionDiscountDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get promotionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant_id')
  String? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get promoCode => throw _privateConstructorUsedError;
  String? get percentageOff => throw _privateConstructorUsedError;
  @JsonKey(name: 'maximum_number_of_use')
  @IntegerSerializer()
  int? get maxUse => throw _privateConstructorUsedError;
  @JsonKey(name: 'maximum_use_per_user')
  @IntegerSerializer()
  int? get maxUsePerUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_from')
  @TimestampConverter()
  DateTime? get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_at')
  @TimestampConverter()
  DateTime? get endAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionDiscountDTOCopyWith<PromotionDiscountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDiscountDTOCopyWith<$Res> {
  factory $PromotionDiscountDTOCopyWith(PromotionDiscountDTO value,
          $Res Function(PromotionDiscountDTO) then) =
      _$PromotionDiscountDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? promotionId,
      @JsonKey(name: 'restaurant_id')
          String? storeId,
      @JsonKey(name: 'code')
          String? promoCode,
      String? percentageOff,
      @JsonKey(name: 'maximum_number_of_use')
      @IntegerSerializer()
          int? maxUse,
      @JsonKey(name: 'maximum_use_per_user')
      @IntegerSerializer()
          int? maxUsePerUser,
      @JsonKey(name: 'start_from')
      @TimestampConverter()
          DateTime? startAt,
      @JsonKey(name: 'end_at')
      @TimestampConverter()
          DateTime? endAt,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt});
}

/// @nodoc
class _$PromotionDiscountDTOCopyWithImpl<$Res>
    implements $PromotionDiscountDTOCopyWith<$Res> {
  _$PromotionDiscountDTOCopyWithImpl(this._value, this._then);

  final PromotionDiscountDTO _value;
  // ignore: unused_field
  final $Res Function(PromotionDiscountDTO) _then;

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
              as String?,
      promotionId: promotionId == freezed
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      promoCode: promoCode == freezed
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      percentageOff: percentageOff == freezed
          ? _value.percentageOff
          : percentageOff // ignore: cast_nullable_to_non_nullable
              as String?,
      maxUse: maxUse == freezed
          ? _value.maxUse
          : maxUse // ignore: cast_nullable_to_non_nullable
              as int?,
      maxUsePerUser: maxUsePerUser == freezed
          ? _value.maxUsePerUser
          : maxUsePerUser // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$PromotionDiscountDTOCopyWith<$Res>
    implements $PromotionDiscountDTOCopyWith<$Res> {
  factory _$PromotionDiscountDTOCopyWith(_PromotionDiscountDTO value,
          $Res Function(_PromotionDiscountDTO) then) =
      __$PromotionDiscountDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? promotionId,
      @JsonKey(name: 'restaurant_id')
          String? storeId,
      @JsonKey(name: 'code')
          String? promoCode,
      String? percentageOff,
      @JsonKey(name: 'maximum_number_of_use')
      @IntegerSerializer()
          int? maxUse,
      @JsonKey(name: 'maximum_use_per_user')
      @IntegerSerializer()
          int? maxUsePerUser,
      @JsonKey(name: 'start_from')
      @TimestampConverter()
          DateTime? startAt,
      @JsonKey(name: 'end_at')
      @TimestampConverter()
          DateTime? endAt,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt});
}

/// @nodoc
class __$PromotionDiscountDTOCopyWithImpl<$Res>
    extends _$PromotionDiscountDTOCopyWithImpl<$Res>
    implements _$PromotionDiscountDTOCopyWith<$Res> {
  __$PromotionDiscountDTOCopyWithImpl(
      _PromotionDiscountDTO _value, $Res Function(_PromotionDiscountDTO) _then)
      : super(_value, (v) => _then(v as _PromotionDiscountDTO));

  @override
  _PromotionDiscountDTO get _value => super._value as _PromotionDiscountDTO;

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
    return _then(_PromotionDiscountDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      promotionId: promotionId == freezed
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      promoCode: promoCode == freezed
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      percentageOff: percentageOff == freezed
          ? _value.percentageOff
          : percentageOff // ignore: cast_nullable_to_non_nullable
              as String?,
      maxUse: maxUse == freezed
          ? _value.maxUse
          : maxUse // ignore: cast_nullable_to_non_nullable
              as int?,
      maxUsePerUser: maxUsePerUser == freezed
          ? _value.maxUsePerUser
          : maxUsePerUser // ignore: cast_nullable_to_non_nullable
              as int?,
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
@JsonSerializable()
class _$_PromotionDiscountDTO extends _PromotionDiscountDTO {
  const _$_PromotionDiscountDTO(
      {this.id,
      this.promotionId,
      @JsonKey(name: 'restaurant_id')
          this.storeId,
      @JsonKey(name: 'code')
          this.promoCode,
      this.percentageOff,
      @JsonKey(name: 'maximum_number_of_use')
      @IntegerSerializer()
          this.maxUse,
      @JsonKey(name: 'maximum_use_per_user')
      @IntegerSerializer()
          this.maxUsePerUser,
      @JsonKey(name: 'start_from')
      @TimestampConverter()
          this.startAt,
      @JsonKey(name: 'end_at')
      @TimestampConverter()
          this.endAt,
      @TimestampConverter()
          this.createdAt,
      @TimestampConverter()
          this.updatedAt,
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_PromotionDiscountDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionDiscountDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? promotionId;
  @override
  @JsonKey(name: 'restaurant_id')
  final String? storeId;
  @override
  @JsonKey(name: 'code')
  final String? promoCode;
  @override
  final String? percentageOff;
  @override
  @JsonKey(name: 'maximum_number_of_use')
  @IntegerSerializer()
  final int? maxUse;
  @override
  @JsonKey(name: 'maximum_use_per_user')
  @IntegerSerializer()
  final int? maxUsePerUser;
  @override
  @JsonKey(name: 'start_from')
  @TimestampConverter()
  final DateTime? startAt;
  @override
  @JsonKey(name: 'end_at')
  @TimestampConverter()
  final DateTime? endAt;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;
  @override
  @TimestampConverter()
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'PromotionDiscountDTO(id: $id, promotionId: $promotionId, storeId: $storeId, promoCode: $promoCode, percentageOff: $percentageOff, maxUse: $maxUse, maxUsePerUser: $maxUsePerUser, startAt: $startAt, endAt: $endAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PromotionDiscountDTO &&
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
  _$PromotionDiscountDTOCopyWith<_PromotionDiscountDTO> get copyWith =>
      __$PromotionDiscountDTOCopyWithImpl<_PromotionDiscountDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionDiscountDTOToJson(this);
  }
}

abstract class _PromotionDiscountDTO extends PromotionDiscountDTO {
  const factory _PromotionDiscountDTO(
      {String? id,
      String? promotionId,
      @JsonKey(name: 'restaurant_id')
          String? storeId,
      @JsonKey(name: 'code')
          String? promoCode,
      String? percentageOff,
      @JsonKey(name: 'maximum_number_of_use')
      @IntegerSerializer()
          int? maxUse,
      @JsonKey(name: 'maximum_use_per_user')
      @IntegerSerializer()
          int? maxUsePerUser,
      @JsonKey(name: 'start_from')
      @TimestampConverter()
          DateTime? startAt,
      @JsonKey(name: 'end_at')
      @TimestampConverter()
          DateTime? endAt,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt,
      @TimestampConverter()
          DateTime? deletedAt}) = _$_PromotionDiscountDTO;
  const _PromotionDiscountDTO._() : super._();

  factory _PromotionDiscountDTO.fromJson(Map<String, dynamic> json) =
      _$_PromotionDiscountDTO.fromJson;

  @override
  String? get id;
  @override
  String? get promotionId;
  @override
  @JsonKey(name: 'restaurant_id')
  String? get storeId;
  @override
  @JsonKey(name: 'code')
  String? get promoCode;
  @override
  String? get percentageOff;
  @override
  @JsonKey(name: 'maximum_number_of_use')
  @IntegerSerializer()
  int? get maxUse;
  @override
  @JsonKey(name: 'maximum_use_per_user')
  @IntegerSerializer()
  int? get maxUsePerUser;
  @override
  @JsonKey(name: 'start_from')
  @TimestampConverter()
  DateTime? get startAt;
  @override
  @JsonKey(name: 'end_at')
  @TimestampConverter()
  DateTime? get endAt;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @TimestampConverter()
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$PromotionDiscountDTOCopyWith<_PromotionDiscountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
