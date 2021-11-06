library insight.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

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
    required AmountField<double?> bonus,
    required BasicTextField<int?> extraDelivery,
    required DispatchActivity activities,
    DateTime? planStarted,
    DateTime? planEnded,
  }) = _Insight;

  static Insight blank() => Insight(
        completed: BasicTextField(null),
        target: BasicTextField(null),
        progress: BasicTextField(null),
        daysLeft: BasicTextField(null),
        cashAtHand: AmountField(null),
        bonus: AmountField(null),
        extraDelivery: BasicTextField(null),
        activities: DispatchActivity.blank(),
      );
}
