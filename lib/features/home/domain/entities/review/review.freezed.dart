// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of review.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewTearOff {
  const _$ReviewTearOff();

  _Review call(
      {required KtList<CustomerFeedback> feedbacks,
      required BasicTextField<int?> totalReviews,
      required BasicTextField<double?> avgRating,
      required KtList<ReviewGroup> reviewGroups}) {
    return _Review(
      feedbacks: feedbacks,
      totalReviews: totalReviews,
      avgRating: avgRating,
      reviewGroups: reviewGroups,
    );
  }
}

/// @nodoc
const $Review = _$ReviewTearOff();

/// @nodoc
mixin _$Review {
  KtList<CustomerFeedback> get feedbacks => throw _privateConstructorUsedError;
  BasicTextField<int?> get totalReviews => throw _privateConstructorUsedError;
  BasicTextField<double?> get avgRating => throw _privateConstructorUsedError;
  KtList<ReviewGroup> get reviewGroups => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call(
      {KtList<CustomerFeedback> feedbacks,
      BasicTextField<int?> totalReviews,
      BasicTextField<double?> avgRating,
      KtList<ReviewGroup> reviewGroups});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object? feedbacks = freezed,
    Object? totalReviews = freezed,
    Object? avgRating = freezed,
    Object? reviewGroups = freezed,
  }) {
    return _then(_value.copyWith(
      feedbacks: feedbacks == freezed
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as KtList<CustomerFeedback>,
      totalReviews: totalReviews == freezed
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      reviewGroups: reviewGroups == freezed
          ? _value.reviewGroups
          : reviewGroups // ignore: cast_nullable_to_non_nullable
              as KtList<ReviewGroup>,
    ));
  }
}

/// @nodoc
abstract class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) then) =
      __$ReviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<CustomerFeedback> feedbacks,
      BasicTextField<int?> totalReviews,
      BasicTextField<double?> avgRating,
      KtList<ReviewGroup> reviewGroups});
}

/// @nodoc
class __$ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(_Review _value, $Res Function(_Review) _then)
      : super(_value, (v) => _then(v as _Review));

  @override
  _Review get _value => super._value as _Review;

  @override
  $Res call({
    Object? feedbacks = freezed,
    Object? totalReviews = freezed,
    Object? avgRating = freezed,
    Object? reviewGroups = freezed,
  }) {
    return _then(_Review(
      feedbacks: feedbacks == freezed
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as KtList<CustomerFeedback>,
      totalReviews: totalReviews == freezed
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      reviewGroups: reviewGroups == freezed
          ? _value.reviewGroups
          : reviewGroups // ignore: cast_nullable_to_non_nullable
              as KtList<ReviewGroup>,
    ));
  }
}

/// @nodoc

class _$_Review extends _Review {
  const _$_Review(
      {required this.feedbacks,
      required this.totalReviews,
      required this.avgRating,
      required this.reviewGroups})
      : super._();

  @override
  final KtList<CustomerFeedback> feedbacks;
  @override
  final BasicTextField<int?> totalReviews;
  @override
  final BasicTextField<double?> avgRating;
  @override
  final KtList<ReviewGroup> reviewGroups;

  @override
  String toString() {
    return 'Review(feedbacks: $feedbacks, totalReviews: $totalReviews, avgRating: $avgRating, reviewGroups: $reviewGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Review &&
            const DeepCollectionEquality().equals(other.feedbacks, feedbacks) &&
            const DeepCollectionEquality()
                .equals(other.totalReviews, totalReviews) &&
            const DeepCollectionEquality().equals(other.avgRating, avgRating) &&
            const DeepCollectionEquality()
                .equals(other.reviewGroups, reviewGroups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feedbacks),
      const DeepCollectionEquality().hash(totalReviews),
      const DeepCollectionEquality().hash(avgRating),
      const DeepCollectionEquality().hash(reviewGroups));

  @JsonKey(ignore: true)
  @override
  _$ReviewCopyWith<_Review> get copyWith =>
      __$ReviewCopyWithImpl<_Review>(this, _$identity);
}

abstract class _Review extends Review {
  const factory _Review(
      {required KtList<CustomerFeedback> feedbacks,
      required BasicTextField<int?> totalReviews,
      required BasicTextField<double?> avgRating,
      required KtList<ReviewGroup> reviewGroups}) = _$_Review;
  const _Review._() : super._();

  @override
  KtList<CustomerFeedback> get feedbacks;
  @override
  BasicTextField<int?> get totalReviews;
  @override
  BasicTextField<double?> get avgRating;
  @override
  KtList<ReviewGroup> get reviewGroups;
  @override
  @JsonKey(ignore: true)
  _$ReviewCopyWith<_Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CustomerFeedbackTearOff {
  const _$CustomerFeedbackTearOff();

  _CustomerFeedback call(
      {required UniqueId<String?> id,
      required UniqueId<String?> userId,
      required UniqueId<String?> orderId,
      required UniqueId<String?> riderId,
      required BasicTextField<int?> rate,
      required BasicTextField<String?> review,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _CustomerFeedback(
      id: id,
      userId: userId,
      orderId: orderId,
      riderId: riderId,
      rate: rate,
      review: review,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $CustomerFeedback = _$CustomerFeedbackTearOff();

/// @nodoc
mixin _$CustomerFeedback {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  UniqueId<String?> get userId => throw _privateConstructorUsedError;
  UniqueId<String?> get orderId => throw _privateConstructorUsedError;
  UniqueId<String?> get riderId => throw _privateConstructorUsedError;
  BasicTextField<int?> get rate => throw _privateConstructorUsedError;
  BasicTextField<String?> get review => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerFeedbackCopyWith<CustomerFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFeedbackCopyWith<$Res> {
  factory $CustomerFeedbackCopyWith(
          CustomerFeedback value, $Res Function(CustomerFeedback) then) =
      _$CustomerFeedbackCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> userId,
      UniqueId<String?> orderId,
      UniqueId<String?> riderId,
      BasicTextField<int?> rate,
      BasicTextField<String?> review,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$CustomerFeedbackCopyWithImpl<$Res>
    implements $CustomerFeedbackCopyWith<$Res> {
  _$CustomerFeedbackCopyWithImpl(this._value, this._then);

  final CustomerFeedback _value;
  // ignore: unused_field
  final $Res Function(CustomerFeedback) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? orderId = freezed,
    Object? riderId = freezed,
    Object? rate = freezed,
    Object? review = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
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
abstract class _$CustomerFeedbackCopyWith<$Res>
    implements $CustomerFeedbackCopyWith<$Res> {
  factory _$CustomerFeedbackCopyWith(
          _CustomerFeedback value, $Res Function(_CustomerFeedback) then) =
      __$CustomerFeedbackCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> userId,
      UniqueId<String?> orderId,
      UniqueId<String?> riderId,
      BasicTextField<int?> rate,
      BasicTextField<String?> review,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$CustomerFeedbackCopyWithImpl<$Res>
    extends _$CustomerFeedbackCopyWithImpl<$Res>
    implements _$CustomerFeedbackCopyWith<$Res> {
  __$CustomerFeedbackCopyWithImpl(
      _CustomerFeedback _value, $Res Function(_CustomerFeedback) _then)
      : super(_value, (v) => _then(v as _CustomerFeedback));

  @override
  _CustomerFeedback get _value => super._value as _CustomerFeedback;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? orderId = freezed,
    Object? riderId = freezed,
    Object? rate = freezed,
    Object? review = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_CustomerFeedback(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      riderId: riderId == freezed
          ? _value.riderId
          : riderId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
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

class _$_CustomerFeedback extends _CustomerFeedback {
  const _$_CustomerFeedback(
      {required this.id,
      required this.userId,
      required this.orderId,
      required this.riderId,
      required this.rate,
      required this.review,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final UniqueId<String?> userId;
  @override
  final UniqueId<String?> orderId;
  @override
  final UniqueId<String?> riderId;
  @override
  final BasicTextField<int?> rate;
  @override
  final BasicTextField<String?> review;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CustomerFeedback(id: $id, userId: $userId, orderId: $orderId, riderId: $riderId, rate: $rate, review: $review, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerFeedback &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.riderId, riderId) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(riderId),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$CustomerFeedbackCopyWith<_CustomerFeedback> get copyWith =>
      __$CustomerFeedbackCopyWithImpl<_CustomerFeedback>(this, _$identity);
}

abstract class _CustomerFeedback extends CustomerFeedback {
  const factory _CustomerFeedback(
      {required UniqueId<String?> id,
      required UniqueId<String?> userId,
      required UniqueId<String?> orderId,
      required UniqueId<String?> riderId,
      required BasicTextField<int?> rate,
      required BasicTextField<String?> review,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_CustomerFeedback;
  const _CustomerFeedback._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  UniqueId<String?> get userId;
  @override
  UniqueId<String?> get orderId;
  @override
  UniqueId<String?> get riderId;
  @override
  BasicTextField<int?> get rate;
  @override
  BasicTextField<String?> get review;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$CustomerFeedbackCopyWith<_CustomerFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReviewGroupTearOff {
  const _$ReviewGroupTearOff();

  _ReviewGroup call(
      {required BasicTextField<int?> group,
      required BasicTextField<int?> count}) {
    return _ReviewGroup(
      group: group,
      count: count,
    );
  }
}

/// @nodoc
const $ReviewGroup = _$ReviewGroupTearOff();

/// @nodoc
mixin _$ReviewGroup {
  BasicTextField<int?> get group => throw _privateConstructorUsedError;
  BasicTextField<int?> get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewGroupCopyWith<ReviewGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewGroupCopyWith<$Res> {
  factory $ReviewGroupCopyWith(
          ReviewGroup value, $Res Function(ReviewGroup) then) =
      _$ReviewGroupCopyWithImpl<$Res>;
  $Res call({BasicTextField<int?> group, BasicTextField<int?> count});
}

/// @nodoc
class _$ReviewGroupCopyWithImpl<$Res> implements $ReviewGroupCopyWith<$Res> {
  _$ReviewGroupCopyWithImpl(this._value, this._then);

  final ReviewGroup _value;
  // ignore: unused_field
  final $Res Function(ReviewGroup) _then;

  @override
  $Res call({
    Object? group = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
    ));
  }
}

/// @nodoc
abstract class _$ReviewGroupCopyWith<$Res>
    implements $ReviewGroupCopyWith<$Res> {
  factory _$ReviewGroupCopyWith(
          _ReviewGroup value, $Res Function(_ReviewGroup) then) =
      __$ReviewGroupCopyWithImpl<$Res>;
  @override
  $Res call({BasicTextField<int?> group, BasicTextField<int?> count});
}

/// @nodoc
class __$ReviewGroupCopyWithImpl<$Res> extends _$ReviewGroupCopyWithImpl<$Res>
    implements _$ReviewGroupCopyWith<$Res> {
  __$ReviewGroupCopyWithImpl(
      _ReviewGroup _value, $Res Function(_ReviewGroup) _then)
      : super(_value, (v) => _then(v as _ReviewGroup));

  @override
  _ReviewGroup get _value => super._value as _ReviewGroup;

  @override
  $Res call({
    Object? group = freezed,
    Object? count = freezed,
  }) {
    return _then(_ReviewGroup(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
    ));
  }
}

/// @nodoc

class _$_ReviewGroup extends _ReviewGroup {
  const _$_ReviewGroup({required this.group, required this.count}) : super._();

  @override
  final BasicTextField<int?> group;
  @override
  final BasicTextField<int?> count;

  @override
  String toString() {
    return 'ReviewGroup(group: $group, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewGroup &&
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
  _$ReviewGroupCopyWith<_ReviewGroup> get copyWith =>
      __$ReviewGroupCopyWithImpl<_ReviewGroup>(this, _$identity);
}

abstract class _ReviewGroup extends ReviewGroup {
  const factory _ReviewGroup(
      {required BasicTextField<int?> group,
      required BasicTextField<int?> count}) = _$_ReviewGroup;
  const _ReviewGroup._() : super._();

  @override
  BasicTextField<int?> get group;
  @override
  BasicTextField<int?> get count;
  @override
  @JsonKey(ignore: true)
  _$ReviewGroupCopyWith<_ReviewGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
