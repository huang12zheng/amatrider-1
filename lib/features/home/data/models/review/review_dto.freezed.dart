// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of review_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewDTO _$ReviewDTOFromJson(Map<String, dynamic> json) {
  return _ReviewDTO.fromJson(json);
}

/// @nodoc
class _$ReviewDTOTearOff {
  const _$ReviewDTOTearOff();

  _ReviewDTO call(
      {required GenericListDTO<CustomerFeedbackDTO> data,
      @JsonKey(name: 'totalReviews')
          int? totalReviews,
      @JsonKey(name: 'avgRating')
          double? avgRating,
      @JsonKey(name: 'reviewGroups')
          List<ReviewGroupDTO> reviewGroups = const []}) {
    return _ReviewDTO(
      data: data,
      totalReviews: totalReviews,
      avgRating: avgRating,
      reviewGroups: reviewGroups,
    );
  }

  ReviewDTO fromJson(Map<String, Object?> json) {
    return ReviewDTO.fromJson(json);
  }
}

/// @nodoc
const $ReviewDTO = _$ReviewDTOTearOff();

/// @nodoc
mixin _$ReviewDTO {
  GenericListDTO<CustomerFeedbackDTO> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'totalReviews')
  int? get totalReviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgRating')
  double? get avgRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewGroups')
  List<ReviewGroupDTO> get reviewGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDTOCopyWith<ReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDTOCopyWith<$Res> {
  factory $ReviewDTOCopyWith(ReviewDTO value, $Res Function(ReviewDTO) then) =
      _$ReviewDTOCopyWithImpl<$Res>;
  $Res call(
      {GenericListDTO<CustomerFeedbackDTO> data,
      @JsonKey(name: 'totalReviews') int? totalReviews,
      @JsonKey(name: 'avgRating') double? avgRating,
      @JsonKey(name: 'reviewGroups') List<ReviewGroupDTO> reviewGroups});
}

/// @nodoc
class _$ReviewDTOCopyWithImpl<$Res> implements $ReviewDTOCopyWith<$Res> {
  _$ReviewDTOCopyWithImpl(this._value, this._then);

  final ReviewDTO _value;
  // ignore: unused_field
  final $Res Function(ReviewDTO) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? totalReviews = freezed,
    Object? avgRating = freezed,
    Object? reviewGroups = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GenericListDTO<CustomerFeedbackDTO>,
      totalReviews: totalReviews == freezed
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewGroups: reviewGroups == freezed
          ? _value.reviewGroups
          : reviewGroups // ignore: cast_nullable_to_non_nullable
              as List<ReviewGroupDTO>,
    ));
  }
}

/// @nodoc
abstract class _$ReviewDTOCopyWith<$Res> implements $ReviewDTOCopyWith<$Res> {
  factory _$ReviewDTOCopyWith(
          _ReviewDTO value, $Res Function(_ReviewDTO) then) =
      __$ReviewDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {GenericListDTO<CustomerFeedbackDTO> data,
      @JsonKey(name: 'totalReviews') int? totalReviews,
      @JsonKey(name: 'avgRating') double? avgRating,
      @JsonKey(name: 'reviewGroups') List<ReviewGroupDTO> reviewGroups});
}

/// @nodoc
class __$ReviewDTOCopyWithImpl<$Res> extends _$ReviewDTOCopyWithImpl<$Res>
    implements _$ReviewDTOCopyWith<$Res> {
  __$ReviewDTOCopyWithImpl(_ReviewDTO _value, $Res Function(_ReviewDTO) _then)
      : super(_value, (v) => _then(v as _ReviewDTO));

  @override
  _ReviewDTO get _value => super._value as _ReviewDTO;

  @override
  $Res call({
    Object? data = freezed,
    Object? totalReviews = freezed,
    Object? avgRating = freezed,
    Object? reviewGroups = freezed,
  }) {
    return _then(_ReviewDTO(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GenericListDTO<CustomerFeedbackDTO>,
      totalReviews: totalReviews == freezed
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewGroups: reviewGroups == freezed
          ? _value.reviewGroups
          : reviewGroups // ignore: cast_nullable_to_non_nullable
              as List<ReviewGroupDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewDTO extends _ReviewDTO {
  const _$_ReviewDTO(
      {required this.data,
      @JsonKey(name: 'totalReviews') this.totalReviews,
      @JsonKey(name: 'avgRating') this.avgRating,
      @JsonKey(name: 'reviewGroups') this.reviewGroups = const []})
      : super._();

  factory _$_ReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewDTOFromJson(json);

  @override
  final GenericListDTO<CustomerFeedbackDTO> data;
  @override
  @JsonKey(name: 'totalReviews')
  final int? totalReviews;
  @override
  @JsonKey(name: 'avgRating')
  final double? avgRating;
  @override
  @JsonKey(name: 'reviewGroups')
  final List<ReviewGroupDTO> reviewGroups;

  @override
  String toString() {
    return 'ReviewDTO(data: $data, totalReviews: $totalReviews, avgRating: $avgRating, reviewGroups: $reviewGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewDTO &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.totalReviews, totalReviews) &&
            const DeepCollectionEquality().equals(other.avgRating, avgRating) &&
            const DeepCollectionEquality()
                .equals(other.reviewGroups, reviewGroups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(totalReviews),
      const DeepCollectionEquality().hash(avgRating),
      const DeepCollectionEquality().hash(reviewGroups));

  @JsonKey(ignore: true)
  @override
  _$ReviewDTOCopyWith<_ReviewDTO> get copyWith =>
      __$ReviewDTOCopyWithImpl<_ReviewDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewDTOToJson(this);
  }
}

abstract class _ReviewDTO extends ReviewDTO {
  const factory _ReviewDTO(
          {required GenericListDTO<CustomerFeedbackDTO> data,
          @JsonKey(name: 'totalReviews') int? totalReviews,
          @JsonKey(name: 'avgRating') double? avgRating,
          @JsonKey(name: 'reviewGroups') List<ReviewGroupDTO> reviewGroups}) =
      _$_ReviewDTO;
  const _ReviewDTO._() : super._();

  factory _ReviewDTO.fromJson(Map<String, dynamic> json) =
      _$_ReviewDTO.fromJson;

  @override
  GenericListDTO<CustomerFeedbackDTO> get data;
  @override
  @JsonKey(name: 'totalReviews')
  int? get totalReviews;
  @override
  @JsonKey(name: 'avgRating')
  double? get avgRating;
  @override
  @JsonKey(name: 'reviewGroups')
  List<ReviewGroupDTO> get reviewGroups;
  @override
  @JsonKey(ignore: true)
  _$ReviewDTOCopyWith<_ReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerFeedbackDTO _$CustomerFeedbackDTOFromJson(Map<String, dynamic> json) {
  return _CustomerFeedbackDTO.fromJson(json);
}

/// @nodoc
class _$CustomerFeedbackDTOTearOff {
  const _$CustomerFeedbackDTOTearOff();

  _CustomerFeedbackDTO call(
      {String? id,
      int? rate,
      String? review,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'rider_id') String? riderId,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt}) {
    return _CustomerFeedbackDTO(
      id: id,
      rate: rate,
      review: review,
      userId: userId,
      orderId: orderId,
      riderId: riderId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  CustomerFeedbackDTO fromJson(Map<String, Object?> json) {
    return CustomerFeedbackDTO.fromJson(json);
  }
}

/// @nodoc
const $CustomerFeedbackDTO = _$CustomerFeedbackDTOTearOff();

/// @nodoc
mixin _$CustomerFeedbackDTO {
  String? get id => throw _privateConstructorUsedError;
  int? get rate => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rider_id')
  String? get riderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerFeedbackDTOCopyWith<CustomerFeedbackDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFeedbackDTOCopyWith<$Res> {
  factory $CustomerFeedbackDTOCopyWith(
          CustomerFeedbackDTO value, $Res Function(CustomerFeedbackDTO) then) =
      _$CustomerFeedbackDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      int? rate,
      String? review,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'rider_id') String? riderId,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$CustomerFeedbackDTOCopyWithImpl<$Res>
    implements $CustomerFeedbackDTOCopyWith<$Res> {
  _$CustomerFeedbackDTOCopyWithImpl(this._value, this._then);

  final CustomerFeedbackDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerFeedbackDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? rate = freezed,
    Object? review = freezed,
    Object? userId = freezed,
    Object? orderId = freezed,
    Object? riderId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerFeedbackDTOCopyWith<$Res>
    implements $CustomerFeedbackDTOCopyWith<$Res> {
  factory _$CustomerFeedbackDTOCopyWith(_CustomerFeedbackDTO value,
          $Res Function(_CustomerFeedbackDTO) then) =
      __$CustomerFeedbackDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      int? rate,
      String? review,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'rider_id') String? riderId,
      @JsonKey(name: 'created_at') @TimestampConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$CustomerFeedbackDTOCopyWithImpl<$Res>
    extends _$CustomerFeedbackDTOCopyWithImpl<$Res>
    implements _$CustomerFeedbackDTOCopyWith<$Res> {
  __$CustomerFeedbackDTOCopyWithImpl(
      _CustomerFeedbackDTO _value, $Res Function(_CustomerFeedbackDTO) _then)
      : super(_value, (v) => _then(v as _CustomerFeedbackDTO));

  @override
  _CustomerFeedbackDTO get _value => super._value as _CustomerFeedbackDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? rate = freezed,
    Object? review = freezed,
    Object? userId = freezed,
    Object? orderId = freezed,
    Object? riderId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_CustomerFeedbackDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerFeedbackDTO extends _CustomerFeedbackDTO {
  const _$_CustomerFeedbackDTO(
      {this.id,
      this.rate,
      this.review,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'rider_id') this.riderId,
      @JsonKey(name: 'created_at') @TimestampConverter() this.createdAt,
      @JsonKey(name: 'updated_at') @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_CustomerFeedbackDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFeedbackDTOFromJson(json);

  @override
  final String? id;
  @override
  final int? rate;
  @override
  final String? review;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  @JsonKey(name: 'rider_id')
  final String? riderId;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CustomerFeedbackDTO(id: $id, rate: $rate, review: $review, userId: $userId, orderId: $orderId, riderId: $riderId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerFeedbackDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.riderId, riderId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(riderId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$CustomerFeedbackDTOCopyWith<_CustomerFeedbackDTO> get copyWith =>
      __$CustomerFeedbackDTOCopyWithImpl<_CustomerFeedbackDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerFeedbackDTOToJson(this);
  }
}

abstract class _CustomerFeedbackDTO extends CustomerFeedbackDTO {
  const factory _CustomerFeedbackDTO(
      {String? id,
      int? rate,
      String? review,
      @JsonKey(name: 'user_id')
          String? userId,
      @JsonKey(name: 'order_id')
          String? orderId,
      @JsonKey(name: 'rider_id')
          String? riderId,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt}) = _$_CustomerFeedbackDTO;
  const _CustomerFeedbackDTO._() : super._();

  factory _CustomerFeedbackDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerFeedbackDTO.fromJson;

  @override
  String? get id;
  @override
  int? get rate;
  @override
  String? get review;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  @JsonKey(name: 'rider_id')
  String? get riderId;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$CustomerFeedbackDTOCopyWith<_CustomerFeedbackDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewGroupDTO _$ReviewGroupDTOFromJson(Map<String, dynamic> json) {
  return _ReviewGroupDTO.fromJson(json);
}

/// @nodoc
class _$ReviewGroupDTOTearOff {
  const _$ReviewGroupDTOTearOff();

  _ReviewGroupDTO call({int? group, int? count}) {
    return _ReviewGroupDTO(
      group: group,
      count: count,
    );
  }

  ReviewGroupDTO fromJson(Map<String, Object?> json) {
    return ReviewGroupDTO.fromJson(json);
  }
}

/// @nodoc
const $ReviewGroupDTO = _$ReviewGroupDTOTearOff();

/// @nodoc
mixin _$ReviewGroupDTO {
  int? get group => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewGroupDTOCopyWith<ReviewGroupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewGroupDTOCopyWith<$Res> {
  factory $ReviewGroupDTOCopyWith(
          ReviewGroupDTO value, $Res Function(ReviewGroupDTO) then) =
      _$ReviewGroupDTOCopyWithImpl<$Res>;
  $Res call({int? group, int? count});
}

/// @nodoc
class _$ReviewGroupDTOCopyWithImpl<$Res>
    implements $ReviewGroupDTOCopyWith<$Res> {
  _$ReviewGroupDTOCopyWithImpl(this._value, this._then);

  final ReviewGroupDTO _value;
  // ignore: unused_field
  final $Res Function(ReviewGroupDTO) _then;

  @override
  $Res call({
    Object? group = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ReviewGroupDTOCopyWith<$Res>
    implements $ReviewGroupDTOCopyWith<$Res> {
  factory _$ReviewGroupDTOCopyWith(
          _ReviewGroupDTO value, $Res Function(_ReviewGroupDTO) then) =
      __$ReviewGroupDTOCopyWithImpl<$Res>;
  @override
  $Res call({int? group, int? count});
}

/// @nodoc
class __$ReviewGroupDTOCopyWithImpl<$Res>
    extends _$ReviewGroupDTOCopyWithImpl<$Res>
    implements _$ReviewGroupDTOCopyWith<$Res> {
  __$ReviewGroupDTOCopyWithImpl(
      _ReviewGroupDTO _value, $Res Function(_ReviewGroupDTO) _then)
      : super(_value, (v) => _then(v as _ReviewGroupDTO));

  @override
  _ReviewGroupDTO get _value => super._value as _ReviewGroupDTO;

  @override
  $Res call({
    Object? group = freezed,
    Object? count = freezed,
  }) {
    return _then(_ReviewGroupDTO(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewGroupDTO extends _ReviewGroupDTO {
  const _$_ReviewGroupDTO({this.group, this.count}) : super._();

  factory _$_ReviewGroupDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewGroupDTOFromJson(json);

  @override
  final int? group;
  @override
  final int? count;

  @override
  String toString() {
    return 'ReviewGroupDTO(group: $group, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewGroupDTO &&
            const DeepCollectionEquality().equals(other.group, group) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(group),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$ReviewGroupDTOCopyWith<_ReviewGroupDTO> get copyWith =>
      __$ReviewGroupDTOCopyWithImpl<_ReviewGroupDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewGroupDTOToJson(this);
  }
}

abstract class _ReviewGroupDTO extends ReviewGroupDTO {
  const factory _ReviewGroupDTO({int? group, int? count}) = _$_ReviewGroupDTO;
  const _ReviewGroupDTO._() : super._();

  factory _ReviewGroupDTO.fromJson(Map<String, dynamic> json) =
      _$_ReviewGroupDTO.fromJson;

  @override
  int? get group;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$ReviewGroupDTOCopyWith<_ReviewGroupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
