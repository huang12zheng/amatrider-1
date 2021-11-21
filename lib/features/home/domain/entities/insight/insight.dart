library insight.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'insight.freezed.dart';

@freezed
@immutable
class Insight with _$Insight {
  const Insight._();

  const factory Insight({
    required BasicTextField<int?> completed,
    required BasicTextField<int?> target,
    required BasicTextField<int?> progress,
    required BasicTextField<int?> daysLeft,
    required AmountField<double?> cashAtHand,
    required AmountField<double?> currentBonus,
    required AmountField<double?> totalBonusClaimed,
    required AmountField<double?> totalBonusAvailable,
    @Default(false) bool canClaimBonus,
    required AmountField<double?> bonusPerExtraDelivery,
    required BasicTextField<int?> totalExtraDeliveries,
    required BasicTextField<int?> completedExtraDeliveries,
    required DispatchActivity? activities,
    required BasicTextField<double?> avgRating,
    DateTime? planStarted,
    DateTime? planEnded,
  }) = _Insight;

  static Insight blank() => Insight(
        completed: BasicTextField(null),
        target: BasicTextField(null),
        progress: BasicTextField(null),
        daysLeft: BasicTextField(null),
        cashAtHand: AmountField(null),
        currentBonus: AmountField(null),
        totalBonusClaimed: AmountField(null),
        totalBonusAvailable: AmountField(null),
        bonusPerExtraDelivery: AmountField(null),
        completedExtraDeliveries: BasicTextField(null),
        totalExtraDeliveries: BasicTextField(null),
        activities: DispatchActivity.blank(),
        avgRating: BasicTextField(null),
      );
}
