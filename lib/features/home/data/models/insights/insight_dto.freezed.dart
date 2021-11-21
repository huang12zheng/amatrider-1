// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of insight_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InsightDTO _$InsightDTOFromJson(Map<String, dynamic> json) {
  return _InsightDTO.fromJson(json);
}

/// @nodoc
class _$InsightDTOTearOff {
  const _$InsightDTOTearOff();

  _InsightDTO call(
      {@JsonKey(name: 'completed_orders')
      @IntegerSerializer()
          int? completedOrders,
      @IntegerSerializer()
          int? target,
      @JsonKey(name: 'percentage')
      @IntegerSerializer()
          int? progress,
      @JsonKey(name: 'days_left')
      @IntegerSerializer()
          int? daysLeft,
      @JsonKey(name: 'cash_at_hand')
      @DoubleSerializer()
          double? cashAtHand,
      @JsonKey(name: 'total_bonus_claimable')
      @DoubleSerializer()
          double? currentBonus,
      @JsonKey(name: 'total_bonus_claimed')
      @DoubleSerializer()
          double? totalBonusClaimed,
      @JsonKey(name: 'total_bonus_available')
      @DoubleSerializer()
          double? totalBonusAvailable,
      @JsonKey(name: 'can_claim_bonus')
      @BooleanSerializer()
          bool canClaimBonus = false,
      @JsonKey(name: 'bonus_per_extra_delivery')
      @DoubleSerializer()
          double? bonusPerExtraDelivery,
      @JsonKey(name: 'completed_extra_delivery')
      @IntegerSerializer()
          int? completedExtraDeliveries,
      @JsonKey(name: 'available_extra_delivery')
      @IntegerSerializer()
          int? totalExtraDeliveries,
      @JsonKey(name: 'money_made_from_payment_methods')
          DispatchActivityDTO? activities,
      @JsonKey(name: 'current_plan_started')
      @TimestampConverter()
          DateTime? planStarted,
      @JsonKey(name: 'current_plan_ended')
      @TimestampConverter()
          DateTime? planEnded,
      @JsonKey(name: 'average_rating')
      @DoubleSerializer()
          double? avgRating,
      @JsonKey(name: 'insight')
          InsightDTO? insightData}) {
    return _InsightDTO(
      completedOrders: completedOrders,
      target: target,
      progress: progress,
      daysLeft: daysLeft,
      cashAtHand: cashAtHand,
      currentBonus: currentBonus,
      totalBonusClaimed: totalBonusClaimed,
      totalBonusAvailable: totalBonusAvailable,
      canClaimBonus: canClaimBonus,
      bonusPerExtraDelivery: bonusPerExtraDelivery,
      completedExtraDeliveries: completedExtraDeliveries,
      totalExtraDeliveries: totalExtraDeliveries,
      activities: activities,
      planStarted: planStarted,
      planEnded: planEnded,
      avgRating: avgRating,
      insightData: insightData,
    );
  }

  InsightDTO fromJson(Map<String, Object?> json) {
    return InsightDTO.fromJson(json);
  }
}

/// @nodoc
const $InsightDTO = _$InsightDTOTearOff();

/// @nodoc
mixin _$InsightDTO {
  @JsonKey(name: 'completed_orders')
  @IntegerSerializer()
  int? get completedOrders => throw _privateConstructorUsedError;
  @IntegerSerializer()
  int? get target => throw _privateConstructorUsedError;
  @JsonKey(name: 'percentage')
  @IntegerSerializer()
  int? get progress => throw _privateConstructorUsedError;
  @JsonKey(name: 'days_left')
  @IntegerSerializer()
  int? get daysLeft => throw _privateConstructorUsedError;
  @JsonKey(name: 'cash_at_hand')
  @DoubleSerializer()
  double? get cashAtHand => throw _privateConstructorUsedError; //
  @JsonKey(name: 'total_bonus_claimable')
  @DoubleSerializer()
  double? get currentBonus => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_bonus_claimed')
  @DoubleSerializer()
  double? get totalBonusClaimed => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_bonus_available')
  @DoubleSerializer()
  double? get totalBonusAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_claim_bonus')
  @BooleanSerializer()
  bool get canClaimBonus => throw _privateConstructorUsedError; //
  @JsonKey(name: 'bonus_per_extra_delivery')
  @DoubleSerializer()
  double? get bonusPerExtraDelivery => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_extra_delivery')
  @IntegerSerializer()
  int? get completedExtraDeliveries => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_extra_delivery')
  @IntegerSerializer()
  int? get totalExtraDeliveries => throw _privateConstructorUsedError; //
  @JsonKey(name: 'money_made_from_payment_methods')
  DispatchActivityDTO? get activities => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_plan_started')
  @TimestampConverter()
  DateTime? get planStarted => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_plan_ended')
  @TimestampConverter()
  DateTime? get planEnded => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  @DoubleSerializer()
  double? get avgRating => throw _privateConstructorUsedError; //
  @JsonKey(name: 'insight')
  InsightDTO? get insightData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsightDTOCopyWith<InsightDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightDTOCopyWith<$Res> {
  factory $InsightDTOCopyWith(
          InsightDTO value, $Res Function(InsightDTO) then) =
      _$InsightDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'completed_orders')
      @IntegerSerializer()
          int? completedOrders,
      @IntegerSerializer()
          int? target,
      @JsonKey(name: 'percentage')
      @IntegerSerializer()
          int? progress,
      @JsonKey(name: 'days_left')
      @IntegerSerializer()
          int? daysLeft,
      @JsonKey(name: 'cash_at_hand')
      @DoubleSerializer()
          double? cashAtHand,
      @JsonKey(name: 'total_bonus_claimable')
      @DoubleSerializer()
          double? currentBonus,
      @JsonKey(name: 'total_bonus_claimed')
      @DoubleSerializer()
          double? totalBonusClaimed,
      @JsonKey(name: 'total_bonus_available')
      @DoubleSerializer()
          double? totalBonusAvailable,
      @JsonKey(name: 'can_claim_bonus')
      @BooleanSerializer()
          bool canClaimBonus,
      @JsonKey(name: 'bonus_per_extra_delivery')
      @DoubleSerializer()
          double? bonusPerExtraDelivery,
      @JsonKey(name: 'completed_extra_delivery')
      @IntegerSerializer()
          int? completedExtraDeliveries,
      @JsonKey(name: 'available_extra_delivery')
      @IntegerSerializer()
          int? totalExtraDeliveries,
      @JsonKey(name: 'money_made_from_payment_methods')
          DispatchActivityDTO? activities,
      @JsonKey(name: 'current_plan_started')
      @TimestampConverter()
          DateTime? planStarted,
      @JsonKey(name: 'current_plan_ended')
      @TimestampConverter()
          DateTime? planEnded,
      @JsonKey(name: 'average_rating')
      @DoubleSerializer()
          double? avgRating,
      @JsonKey(name: 'insight')
          InsightDTO? insightData});

  $DispatchActivityDTOCopyWith<$Res>? get activities;
  $InsightDTOCopyWith<$Res>? get insightData;
}

/// @nodoc
class _$InsightDTOCopyWithImpl<$Res> implements $InsightDTOCopyWith<$Res> {
  _$InsightDTOCopyWithImpl(this._value, this._then);

  final InsightDTO _value;
  // ignore: unused_field
  final $Res Function(InsightDTO) _then;

  @override
  $Res call({
    Object? completedOrders = freezed,
    Object? target = freezed,
    Object? progress = freezed,
    Object? daysLeft = freezed,
    Object? cashAtHand = freezed,
    Object? currentBonus = freezed,
    Object? totalBonusClaimed = freezed,
    Object? totalBonusAvailable = freezed,
    Object? canClaimBonus = freezed,
    Object? bonusPerExtraDelivery = freezed,
    Object? completedExtraDeliveries = freezed,
    Object? totalExtraDeliveries = freezed,
    Object? activities = freezed,
    Object? planStarted = freezed,
    Object? planEnded = freezed,
    Object? avgRating = freezed,
    Object? insightData = freezed,
  }) {
    return _then(_value.copyWith(
      completedOrders: completedOrders == freezed
          ? _value.completedOrders
          : completedOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int?,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      daysLeft: daysLeft == freezed
          ? _value.daysLeft
          : daysLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      cashAtHand: cashAtHand == freezed
          ? _value.cashAtHand
          : cashAtHand // ignore: cast_nullable_to_non_nullable
              as double?,
      currentBonus: currentBonus == freezed
          ? _value.currentBonus
          : currentBonus // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBonusClaimed: totalBonusClaimed == freezed
          ? _value.totalBonusClaimed
          : totalBonusClaimed // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBonusAvailable: totalBonusAvailable == freezed
          ? _value.totalBonusAvailable
          : totalBonusAvailable // ignore: cast_nullable_to_non_nullable
              as double?,
      canClaimBonus: canClaimBonus == freezed
          ? _value.canClaimBonus
          : canClaimBonus // ignore: cast_nullable_to_non_nullable
              as bool,
      bonusPerExtraDelivery: bonusPerExtraDelivery == freezed
          ? _value.bonusPerExtraDelivery
          : bonusPerExtraDelivery // ignore: cast_nullable_to_non_nullable
              as double?,
      completedExtraDeliveries: completedExtraDeliveries == freezed
          ? _value.completedExtraDeliveries
          : completedExtraDeliveries // ignore: cast_nullable_to_non_nullable
              as int?,
      totalExtraDeliveries: totalExtraDeliveries == freezed
          ? _value.totalExtraDeliveries
          : totalExtraDeliveries // ignore: cast_nullable_to_non_nullable
              as int?,
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as DispatchActivityDTO?,
      planStarted: planStarted == freezed
          ? _value.planStarted
          : planStarted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      planEnded: planEnded == freezed
          ? _value.planEnded
          : planEnded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      insightData: insightData == freezed
          ? _value.insightData
          : insightData // ignore: cast_nullable_to_non_nullable
              as InsightDTO?,
    ));
  }

  @override
  $DispatchActivityDTOCopyWith<$Res>? get activities {
    if (_value.activities == null) {
      return null;
    }

    return $DispatchActivityDTOCopyWith<$Res>(_value.activities!, (value) {
      return _then(_value.copyWith(activities: value));
    });
  }

  @override
  $InsightDTOCopyWith<$Res>? get insightData {
    if (_value.insightData == null) {
      return null;
    }

    return $InsightDTOCopyWith<$Res>(_value.insightData!, (value) {
      return _then(_value.copyWith(insightData: value));
    });
  }
}

/// @nodoc
abstract class _$InsightDTOCopyWith<$Res> implements $InsightDTOCopyWith<$Res> {
  factory _$InsightDTOCopyWith(
          _InsightDTO value, $Res Function(_InsightDTO) then) =
      __$InsightDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'completed_orders')
      @IntegerSerializer()
          int? completedOrders,
      @IntegerSerializer()
          int? target,
      @JsonKey(name: 'percentage')
      @IntegerSerializer()
          int? progress,
      @JsonKey(name: 'days_left')
      @IntegerSerializer()
          int? daysLeft,
      @JsonKey(name: 'cash_at_hand')
      @DoubleSerializer()
          double? cashAtHand,
      @JsonKey(name: 'total_bonus_claimable')
      @DoubleSerializer()
          double? currentBonus,
      @JsonKey(name: 'total_bonus_claimed')
      @DoubleSerializer()
          double? totalBonusClaimed,
      @JsonKey(name: 'total_bonus_available')
      @DoubleSerializer()
          double? totalBonusAvailable,
      @JsonKey(name: 'can_claim_bonus')
      @BooleanSerializer()
          bool canClaimBonus,
      @JsonKey(name: 'bonus_per_extra_delivery')
      @DoubleSerializer()
          double? bonusPerExtraDelivery,
      @JsonKey(name: 'completed_extra_delivery')
      @IntegerSerializer()
          int? completedExtraDeliveries,
      @JsonKey(name: 'available_extra_delivery')
      @IntegerSerializer()
          int? totalExtraDeliveries,
      @JsonKey(name: 'money_made_from_payment_methods')
          DispatchActivityDTO? activities,
      @JsonKey(name: 'current_plan_started')
      @TimestampConverter()
          DateTime? planStarted,
      @JsonKey(name: 'current_plan_ended')
      @TimestampConverter()
          DateTime? planEnded,
      @JsonKey(name: 'average_rating')
      @DoubleSerializer()
          double? avgRating,
      @JsonKey(name: 'insight')
          InsightDTO? insightData});

  @override
  $DispatchActivityDTOCopyWith<$Res>? get activities;
  @override
  $InsightDTOCopyWith<$Res>? get insightData;
}

/// @nodoc
class __$InsightDTOCopyWithImpl<$Res> extends _$InsightDTOCopyWithImpl<$Res>
    implements _$InsightDTOCopyWith<$Res> {
  __$InsightDTOCopyWithImpl(
      _InsightDTO _value, $Res Function(_InsightDTO) _then)
      : super(_value, (v) => _then(v as _InsightDTO));

  @override
  _InsightDTO get _value => super._value as _InsightDTO;

  @override
  $Res call({
    Object? completedOrders = freezed,
    Object? target = freezed,
    Object? progress = freezed,
    Object? daysLeft = freezed,
    Object? cashAtHand = freezed,
    Object? currentBonus = freezed,
    Object? totalBonusClaimed = freezed,
    Object? totalBonusAvailable = freezed,
    Object? canClaimBonus = freezed,
    Object? bonusPerExtraDelivery = freezed,
    Object? completedExtraDeliveries = freezed,
    Object? totalExtraDeliveries = freezed,
    Object? activities = freezed,
    Object? planStarted = freezed,
    Object? planEnded = freezed,
    Object? avgRating = freezed,
    Object? insightData = freezed,
  }) {
    return _then(_InsightDTO(
      completedOrders: completedOrders == freezed
          ? _value.completedOrders
          : completedOrders // ignore: cast_nullable_to_non_nullable
              as int?,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int?,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
      daysLeft: daysLeft == freezed
          ? _value.daysLeft
          : daysLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      cashAtHand: cashAtHand == freezed
          ? _value.cashAtHand
          : cashAtHand // ignore: cast_nullable_to_non_nullable
              as double?,
      currentBonus: currentBonus == freezed
          ? _value.currentBonus
          : currentBonus // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBonusClaimed: totalBonusClaimed == freezed
          ? _value.totalBonusClaimed
          : totalBonusClaimed // ignore: cast_nullable_to_non_nullable
              as double?,
      totalBonusAvailable: totalBonusAvailable == freezed
          ? _value.totalBonusAvailable
          : totalBonusAvailable // ignore: cast_nullable_to_non_nullable
              as double?,
      canClaimBonus: canClaimBonus == freezed
          ? _value.canClaimBonus
          : canClaimBonus // ignore: cast_nullable_to_non_nullable
              as bool,
      bonusPerExtraDelivery: bonusPerExtraDelivery == freezed
          ? _value.bonusPerExtraDelivery
          : bonusPerExtraDelivery // ignore: cast_nullable_to_non_nullable
              as double?,
      completedExtraDeliveries: completedExtraDeliveries == freezed
          ? _value.completedExtraDeliveries
          : completedExtraDeliveries // ignore: cast_nullable_to_non_nullable
              as int?,
      totalExtraDeliveries: totalExtraDeliveries == freezed
          ? _value.totalExtraDeliveries
          : totalExtraDeliveries // ignore: cast_nullable_to_non_nullable
              as int?,
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as DispatchActivityDTO?,
      planStarted: planStarted == freezed
          ? _value.planStarted
          : planStarted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      planEnded: planEnded == freezed
          ? _value.planEnded
          : planEnded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      insightData: insightData == freezed
          ? _value.insightData
          : insightData // ignore: cast_nullable_to_non_nullable
              as InsightDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsightDTO extends _InsightDTO {
  const _$_InsightDTO(
      {@JsonKey(name: 'completed_orders')
      @IntegerSerializer()
          this.completedOrders,
      @IntegerSerializer()
          this.target,
      @JsonKey(name: 'percentage')
      @IntegerSerializer()
          this.progress,
      @JsonKey(name: 'days_left')
      @IntegerSerializer()
          this.daysLeft,
      @JsonKey(name: 'cash_at_hand')
      @DoubleSerializer()
          this.cashAtHand,
      @JsonKey(name: 'total_bonus_claimable')
      @DoubleSerializer()
          this.currentBonus,
      @JsonKey(name: 'total_bonus_claimed')
      @DoubleSerializer()
          this.totalBonusClaimed,
      @JsonKey(name: 'total_bonus_available')
      @DoubleSerializer()
          this.totalBonusAvailable,
      @JsonKey(name: 'can_claim_bonus')
      @BooleanSerializer()
          this.canClaimBonus = false,
      @JsonKey(name: 'bonus_per_extra_delivery')
      @DoubleSerializer()
          this.bonusPerExtraDelivery,
      @JsonKey(name: 'completed_extra_delivery')
      @IntegerSerializer()
          this.completedExtraDeliveries,
      @JsonKey(name: 'available_extra_delivery')
      @IntegerSerializer()
          this.totalExtraDeliveries,
      @JsonKey(name: 'money_made_from_payment_methods')
          this.activities,
      @JsonKey(name: 'current_plan_started')
      @TimestampConverter()
          this.planStarted,
      @JsonKey(name: 'current_plan_ended')
      @TimestampConverter()
          this.planEnded,
      @JsonKey(name: 'average_rating')
      @DoubleSerializer()
          this.avgRating,
      @JsonKey(name: 'insight')
          this.insightData})
      : super._();

  factory _$_InsightDTO.fromJson(Map<String, dynamic> json) =>
      _$$_InsightDTOFromJson(json);

  @override
  @JsonKey(name: 'completed_orders')
  @IntegerSerializer()
  final int? completedOrders;
  @override
  @IntegerSerializer()
  final int? target;
  @override
  @JsonKey(name: 'percentage')
  @IntegerSerializer()
  final int? progress;
  @override
  @JsonKey(name: 'days_left')
  @IntegerSerializer()
  final int? daysLeft;
  @override
  @JsonKey(name: 'cash_at_hand')
  @DoubleSerializer()
  final double? cashAtHand;
  @override //
  @JsonKey(name: 'total_bonus_claimable')
  @DoubleSerializer()
  final double? currentBonus;
  @override
  @JsonKey(name: 'total_bonus_claimed')
  @DoubleSerializer()
  final double? totalBonusClaimed;
  @override
  @JsonKey(name: 'total_bonus_available')
  @DoubleSerializer()
  final double? totalBonusAvailable;
  @override
  @JsonKey(name: 'can_claim_bonus')
  @BooleanSerializer()
  final bool canClaimBonus;
  @override //
  @JsonKey(name: 'bonus_per_extra_delivery')
  @DoubleSerializer()
  final double? bonusPerExtraDelivery;
  @override
  @JsonKey(name: 'completed_extra_delivery')
  @IntegerSerializer()
  final int? completedExtraDeliveries;
  @override
  @JsonKey(name: 'available_extra_delivery')
  @IntegerSerializer()
  final int? totalExtraDeliveries;
  @override //
  @JsonKey(name: 'money_made_from_payment_methods')
  final DispatchActivityDTO? activities;
  @override
  @JsonKey(name: 'current_plan_started')
  @TimestampConverter()
  final DateTime? planStarted;
  @override
  @JsonKey(name: 'current_plan_ended')
  @TimestampConverter()
  final DateTime? planEnded;
  @override
  @JsonKey(name: 'average_rating')
  @DoubleSerializer()
  final double? avgRating;
  @override //
  @JsonKey(name: 'insight')
  final InsightDTO? insightData;

  @override
  String toString() {
    return 'InsightDTO(completedOrders: $completedOrders, target: $target, progress: $progress, daysLeft: $daysLeft, cashAtHand: $cashAtHand, currentBonus: $currentBonus, totalBonusClaimed: $totalBonusClaimed, totalBonusAvailable: $totalBonusAvailable, canClaimBonus: $canClaimBonus, bonusPerExtraDelivery: $bonusPerExtraDelivery, completedExtraDeliveries: $completedExtraDeliveries, totalExtraDeliveries: $totalExtraDeliveries, activities: $activities, planStarted: $planStarted, planEnded: $planEnded, avgRating: $avgRating, insightData: $insightData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InsightDTO &&
            (identical(other.completedOrders, completedOrders) ||
                other.completedOrders == completedOrders) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.daysLeft, daysLeft) ||
                other.daysLeft == daysLeft) &&
            (identical(other.cashAtHand, cashAtHand) ||
                other.cashAtHand == cashAtHand) &&
            (identical(other.currentBonus, currentBonus) ||
                other.currentBonus == currentBonus) &&
            (identical(other.totalBonusClaimed, totalBonusClaimed) ||
                other.totalBonusClaimed == totalBonusClaimed) &&
            (identical(other.totalBonusAvailable, totalBonusAvailable) ||
                other.totalBonusAvailable == totalBonusAvailable) &&
            (identical(other.canClaimBonus, canClaimBonus) ||
                other.canClaimBonus == canClaimBonus) &&
            (identical(other.bonusPerExtraDelivery, bonusPerExtraDelivery) ||
                other.bonusPerExtraDelivery == bonusPerExtraDelivery) &&
            (identical(
                    other.completedExtraDeliveries, completedExtraDeliveries) ||
                other.completedExtraDeliveries == completedExtraDeliveries) &&
            (identical(other.totalExtraDeliveries, totalExtraDeliveries) ||
                other.totalExtraDeliveries == totalExtraDeliveries) &&
            (identical(other.activities, activities) ||
                other.activities == activities) &&
            (identical(other.planStarted, planStarted) ||
                other.planStarted == planStarted) &&
            (identical(other.planEnded, planEnded) ||
                other.planEnded == planEnded) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating) &&
            (identical(other.insightData, insightData) ||
                other.insightData == insightData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      completedOrders,
      target,
      progress,
      daysLeft,
      cashAtHand,
      currentBonus,
      totalBonusClaimed,
      totalBonusAvailable,
      canClaimBonus,
      bonusPerExtraDelivery,
      completedExtraDeliveries,
      totalExtraDeliveries,
      activities,
      planStarted,
      planEnded,
      avgRating,
      insightData);

  @JsonKey(ignore: true)
  @override
  _$InsightDTOCopyWith<_InsightDTO> get copyWith =>
      __$InsightDTOCopyWithImpl<_InsightDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsightDTOToJson(this);
  }
}

abstract class _InsightDTO extends InsightDTO {
  const factory _InsightDTO(
      {@JsonKey(name: 'completed_orders')
      @IntegerSerializer()
          int? completedOrders,
      @IntegerSerializer()
          int? target,
      @JsonKey(name: 'percentage')
      @IntegerSerializer()
          int? progress,
      @JsonKey(name: 'days_left')
      @IntegerSerializer()
          int? daysLeft,
      @JsonKey(name: 'cash_at_hand')
      @DoubleSerializer()
          double? cashAtHand,
      @JsonKey(name: 'total_bonus_claimable')
      @DoubleSerializer()
          double? currentBonus,
      @JsonKey(name: 'total_bonus_claimed')
      @DoubleSerializer()
          double? totalBonusClaimed,
      @JsonKey(name: 'total_bonus_available')
      @DoubleSerializer()
          double? totalBonusAvailable,
      @JsonKey(name: 'can_claim_bonus')
      @BooleanSerializer()
          bool canClaimBonus,
      @JsonKey(name: 'bonus_per_extra_delivery')
      @DoubleSerializer()
          double? bonusPerExtraDelivery,
      @JsonKey(name: 'completed_extra_delivery')
      @IntegerSerializer()
          int? completedExtraDeliveries,
      @JsonKey(name: 'available_extra_delivery')
      @IntegerSerializer()
          int? totalExtraDeliveries,
      @JsonKey(name: 'money_made_from_payment_methods')
          DispatchActivityDTO? activities,
      @JsonKey(name: 'current_plan_started')
      @TimestampConverter()
          DateTime? planStarted,
      @JsonKey(name: 'current_plan_ended')
      @TimestampConverter()
          DateTime? planEnded,
      @JsonKey(name: 'average_rating')
      @DoubleSerializer()
          double? avgRating,
      @JsonKey(name: 'insight')
          InsightDTO? insightData}) = _$_InsightDTO;
  const _InsightDTO._() : super._();

  factory _InsightDTO.fromJson(Map<String, dynamic> json) =
      _$_InsightDTO.fromJson;

  @override
  @JsonKey(name: 'completed_orders')
  @IntegerSerializer()
  int? get completedOrders;
  @override
  @IntegerSerializer()
  int? get target;
  @override
  @JsonKey(name: 'percentage')
  @IntegerSerializer()
  int? get progress;
  @override
  @JsonKey(name: 'days_left')
  @IntegerSerializer()
  int? get daysLeft;
  @override
  @JsonKey(name: 'cash_at_hand')
  @DoubleSerializer()
  double? get cashAtHand;
  @override //
  @JsonKey(name: 'total_bonus_claimable')
  @DoubleSerializer()
  double? get currentBonus;
  @override
  @JsonKey(name: 'total_bonus_claimed')
  @DoubleSerializer()
  double? get totalBonusClaimed;
  @override
  @JsonKey(name: 'total_bonus_available')
  @DoubleSerializer()
  double? get totalBonusAvailable;
  @override
  @JsonKey(name: 'can_claim_bonus')
  @BooleanSerializer()
  bool get canClaimBonus;
  @override //
  @JsonKey(name: 'bonus_per_extra_delivery')
  @DoubleSerializer()
  double? get bonusPerExtraDelivery;
  @override
  @JsonKey(name: 'completed_extra_delivery')
  @IntegerSerializer()
  int? get completedExtraDeliveries;
  @override
  @JsonKey(name: 'available_extra_delivery')
  @IntegerSerializer()
  int? get totalExtraDeliveries;
  @override //
  @JsonKey(name: 'money_made_from_payment_methods')
  DispatchActivityDTO? get activities;
  @override
  @JsonKey(name: 'current_plan_started')
  @TimestampConverter()
  DateTime? get planStarted;
  @override
  @JsonKey(name: 'current_plan_ended')
  @TimestampConverter()
  DateTime? get planEnded;
  @override
  @JsonKey(name: 'average_rating')
  @DoubleSerializer()
  double? get avgRating;
  @override //
  @JsonKey(name: 'insight')
  InsightDTO? get insightData;
  @override
  @JsonKey(ignore: true)
  _$InsightDTOCopyWith<_InsightDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
