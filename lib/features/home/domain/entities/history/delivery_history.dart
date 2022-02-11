library delivery_history.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_history.freezed.dart';

@freezed
@immutable
class DeliveryHistory with _$DeliveryHistory {
  const DeliveryHistory._();

  const factory DeliveryHistory({
    required UniqueId<String?> id,
    required RiderLocation pickup,
    required RiderLocation destination,
    required AmountField<double?> amount,
    required BasicTextField<String?> notes,
    required PaymentMethod paymentMethod,
    //
    required UniqueId<String?> riderId,
    required RiderLocation riderLocation,
    @Default(Duration.zero) Duration durationToPickup,
    required BasicTextField<double?> distanceToPickup,
    //
    required Rider rider,
    required User sender,
    required Store store,
    required User receiver,
    //
    DateTime? orderActiveAt,
    DateTime? orderCancelledAt,
    DateTime? riderAcceptedAt,
    DateTime? riderReceivedAt,
    DateTime? riderDeliveredAt,
    DateTime? paymentDepositedAt,
    DateTime? paymentDepositConfirmedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _DeliveryHistory;
}
