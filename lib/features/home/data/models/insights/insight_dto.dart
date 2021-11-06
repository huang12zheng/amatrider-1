library insight_dto.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'insight_dto.g.dart';
part 'insight_dto.freezed.dart';

@freezed
@immutable
class InsightDTO with _$InsightDTO {
  const InsightDTO._();

  const factory InsightDTO({
    @JsonKey(name: 'completed_orders') @IntegerSerializer() int? completedOrder,
    @IntegerSerializer() int? target,
    @JsonKey(name: 'percentage') int? progress,
    @JsonKey(name: 'days_left') @IntegerSerializer() int? daysLeft,
    @JsonKey(name: 'cash_at_hand') @DoubleSerializer() double? cashAtHand,
    @DoubleSerializer() double? bonus,
    @JsonKey(name: 'extra_delivery') @IntegerSerializer() int? extraDelivery,
    @JsonKey(name: 'money_made_from_payment_methods')
        DispatchActivityDTO? activities,
    @JsonKey(name: 'current_plan_started')
    @TimestampConverter()
        DateTime? planStarted,
    @JsonKey(name: 'current_plan_ended')
    @TimestampConverter()
        DateTime? planEnded,
  }) = _InsightDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory InsightDTO.fromJson(Map<String, dynamic> json) =>
      _$InsightDTOFromJson(json);

  /// Maps the Data Transfer Object to a Insight Object.
  Insight get domain => Insight(
        completed: BasicTextField(completedOrder),
        target: BasicTextField(target),
        progress: BasicTextField(progress),
        daysLeft: BasicTextField(daysLeft),
        cashAtHand: AmountField(cashAtHand),
        bonus: AmountField(bonus),
        extraDelivery: BasicTextField(extraDelivery),
        activities: activities!.domain,
        planStarted: planStarted,
        planEnded: planEnded,
      );
}
