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
          int? completedOrder,
      @IntegerSerializer()
          int? target,
      @JsonKey(name: 'percentage')
          int? progress,
      @JsonKey(name: 'days_left')
      @IntegerSerializer()
          int? daysLeft,
      @JsonKey(name: 'cash_at_hand')
      @DoubleSerializer()
          double? cashAtHand,
      @DoubleSerializer()
          double? bonus,
      @JsonKey(name: 'extra_delivery')
      @IntegerSerializer()
          int? extraDelivery,
      @JsonKey(name: 'money_made_from_payment_methods')
          DispatchActivityDTO? activities,
      @JsonKey(name: 'current_plan_started')
      @TimestampConverter()
          DateTime? planStarted,
      @JsonKey(name: 'current_plan_ended')
      @TimestampConverter()
          DateTime? planEnded}) {
    return _InsightDTO(
      completedOrder: completedOrder,
      target: target,
      progress: progress,
      daysLeft: daysLeft,
      cashAtHand: cashAtHand,
      bonus: bonus,
      extraDelivery: extraDelivery,
      activities: activities,
      planStarted: planStarted,
      planEnded: planEnded,
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
  int? get completedOrder => throw _privateConstructorUsedError;
  @IntegerSerializer()
  int? get target => throw _privateConstructorUsedError;
  @JsonKey(name: 'percentage')
  int? get progress => throw _privateConstructorUsedError;
  @JsonKey(name: 'days_left')
  @IntegerSerializer()
  int? get daysLeft => throw _privateConstructorUsedError;
  @JsonKey(name: 'cash_at_hand')
  @DoubleSerializer()
  double? get cashAtHand => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get bonus => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_delivery')
  @IntegerSerializer()
  int? get extraDelivery => throw _privateConstructorUsedError;
  @JsonKey(name: 'money_made_from_payment_methods')
  DispatchActivityDTO? get activities => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_plan_started')
  @TimestampConverter()
  DateTime? get planStarted => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_plan_ended')
  @TimestampConverter()
  DateTime? get planEnded => throw _privateConstructorUsedError;

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
          int? completedOrder,
      @IntegerSerializer()
          int? target,
      @JsonKey(name: 'percentage')
          int? progress,
      @JsonKey(name: 'days_left')
      @IntegerSerializer()
          int? daysLeft,
      @JsonKey(name: 'cash_at_hand')
      @DoubleSerializer()
          double? cashAtHand,
      @DoubleSerializer()
          double? bonus,
      @JsonKey(name: 'extra_delivery')
      @IntegerSerializer()
          int? extraDelivery,
      @JsonKey(name: 'money_made_from_payment_methods')
          DispatchActivityDTO? activities,
      @JsonKey(name: 'current_plan_started')
      @TimestampConverter()
          DateTime? planStarted,
      @JsonKey(name: 'current_plan_ended')
      @TimestampConverter()
          DateTime? planEnded});

  $DispatchActivityDTOCopyWith<$Res>? get activities;
}

/// @nodoc
class _$InsightDTOCopyWithImpl<$Res> implements $InsightDTOCopyWith<$Res> {
  _$InsightDTOCopyWithImpl(this._value, this._then);

  final InsightDTO _value;
  // ignore: unused_field
  final $Res Function(InsightDTO) _then;

  @override
  $Res call({
    Object? completedOrder = freezed,
    Object? target = freezed,
    Object? progress = freezed,
    Object? daysLeft = freezed,
    Object? cashAtHand = freezed,
    Object? bonus = freezed,
    Object? extraDelivery = freezed,
    Object? activities = freezed,
    Object? planStarted = freezed,
    Object? planEnded = freezed,
  }) {
    return _then(_value.copyWith(
      completedOrder: completedOrder == freezed
          ? _value.completedOrder
          : completedOrder // ignore: cast_nullable_to_non_nullable
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
      bonus: bonus == freezed
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double?,
      extraDelivery: extraDelivery == freezed
          ? _value.extraDelivery
          : extraDelivery // ignore: cast_nullable_to_non_nullable
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
          int? completedOrder,
      @IntegerSerializer()
          int? target,
      @JsonKey(name: 'percentage')
          int? progress,
      @JsonKey(name: 'days_left')
      @IntegerSerializer()
          int? daysLeft,
      @JsonKey(name: 'cash_at_hand')
      @DoubleSerializer()
          double? cashAtHand,
      @DoubleSerializer()
          double? bonus,
      @JsonKey(name: 'extra_delivery')
      @IntegerSerializer()
          int? extraDelivery,
      @JsonKey(name: 'money_made_from_payment_methods')
          DispatchActivityDTO? activities,
      @JsonKey(name: 'current_plan_started')
      @TimestampConverter()
          DateTime? planStarted,
      @JsonKey(name: 'current_plan_ended')
      @TimestampConverter()
          DateTime? planEnded});

  @override
  $DispatchActivityDTOCopyWith<$Res>? get activities;
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
    Object? completedOrder = freezed,
    Object? target = freezed,
    Object? progress = freezed,
    Object? daysLeft = freezed,
    Object? cashAtHand = freezed,
    Object? bonus = freezed,
    Object? extraDelivery = freezed,
    Object? activities = freezed,
    Object? planStarted = freezed,
    Object? planEnded = freezed,
  }) {
    return _then(_InsightDTO(
      completedOrder: completedOrder == freezed
          ? _value.completedOrder
          : completedOrder // ignore: cast_nullable_to_non_nullable
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
      bonus: bonus == freezed
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double?,
      extraDelivery: extraDelivery == freezed
          ? _value.extraDelivery
          : extraDelivery // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsightDTO extends _InsightDTO {
  const _$_InsightDTO(
      {@JsonKey(name: 'completed_orders')
      @IntegerSerializer()
          this.completedOrder,
      @IntegerSerializer()
          this.target,
      @JsonKey(name: 'percentage')
          this.progress,
      @JsonKey(name: 'days_left')
      @IntegerSerializer()
          this.daysLeft,
      @JsonKey(name: 'cash_at_hand')
      @DoubleSerializer()
          this.cashAtHand,
      @DoubleSerializer()
          this.bonus,
      @JsonKey(name: 'extra_delivery')
      @IntegerSerializer()
          this.extraDelivery,
      @JsonKey(name: 'money_made_from_payment_methods')
          this.activities,
      @JsonKey(name: 'current_plan_started')
      @TimestampConverter()
          this.planStarted,
      @JsonKey(name: 'current_plan_ended')
      @TimestampConverter()
          this.planEnded})
      : super._();

  factory _$_InsightDTO.fromJson(Map<String, dynamic> json) =>
      _$$_InsightDTOFromJson(json);

  @override
  @JsonKey(name: 'completed_orders')
  @IntegerSerializer()
  final int? completedOrder;
  @override
  @IntegerSerializer()
  final int? target;
  @override
  @JsonKey(name: 'percentage')
  final int? progress;
  @override
  @JsonKey(name: 'days_left')
  @IntegerSerializer()
  final int? daysLeft;
  @override
  @JsonKey(name: 'cash_at_hand')
  @DoubleSerializer()
  final double? cashAtHand;
  @override
  @DoubleSerializer()
  final double? bonus;
  @override
  @JsonKey(name: 'extra_delivery')
  @IntegerSerializer()
  final int? extraDelivery;
  @override
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
  String toString() {
    return 'InsightDTO(completedOrder: $completedOrder, target: $target, progress: $progress, daysLeft: $daysLeft, cashAtHand: $cashAtHand, bonus: $bonus, extraDelivery: $extraDelivery, activities: $activities, planStarted: $planStarted, planEnded: $planEnded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InsightDTO &&
            (identical(other.completedOrder, completedOrder) ||
                other.completedOrder == completedOrder) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.daysLeft, daysLeft) ||
                other.daysLeft == daysLeft) &&
            (identical(other.cashAtHand, cashAtHand) ||
                other.cashAtHand == cashAtHand) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.extraDelivery, extraDelivery) ||
                other.extraDelivery == extraDelivery) &&
            (identical(other.activities, activities) ||
                other.activities == activities) &&
            (identical(other.planStarted, planStarted) ||
                other.planStarted == planStarted) &&
            (identical(other.planEnded, planEnded) ||
                other.planEnded == planEnded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      completedOrder,
      target,
      progress,
      daysLeft,
      cashAtHand,
      bonus,
      extraDelivery,
      activities,
      planStarted,
      planEnded);

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
          int? completedOrder,
      @IntegerSerializer()
          int? target,
      @JsonKey(name: 'percentage')
          int? progress,
      @JsonKey(name: 'days_left')
      @IntegerSerializer()
          int? daysLeft,
      @JsonKey(name: 'cash_at_hand')
      @DoubleSerializer()
          double? cashAtHand,
      @DoubleSerializer()
          double? bonus,
      @JsonKey(name: 'extra_delivery')
      @IntegerSerializer()
          int? extraDelivery,
      @JsonKey(name: 'money_made_from_payment_methods')
          DispatchActivityDTO? activities,
      @JsonKey(name: 'current_plan_started')
      @TimestampConverter()
          DateTime? planStarted,
      @JsonKey(name: 'current_plan_ended')
      @TimestampConverter()
          DateTime? planEnded}) = _$_InsightDTO;
  const _InsightDTO._() : super._();

  factory _InsightDTO.fromJson(Map<String, dynamic> json) =
      _$_InsightDTO.fromJson;

  @override
  @JsonKey(name: 'completed_orders')
  @IntegerSerializer()
  int? get completedOrder;
  @override
  @IntegerSerializer()
  int? get target;
  @override
  @JsonKey(name: 'percentage')
  int? get progress;
  @override
  @JsonKey(name: 'days_left')
  @IntegerSerializer()
  int? get daysLeft;
  @override
  @JsonKey(name: 'cash_at_hand')
  @DoubleSerializer()
  double? get cashAtHand;
  @override
  @DoubleSerializer()
  double? get bonus;
  @override
  @JsonKey(name: 'extra_delivery')
  @IntegerSerializer()
  int? get extraDelivery;
  @override
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
  @JsonKey(ignore: true)
  _$InsightDTOCopyWith<_InsightDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
