library server_field_errors.dart;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_field_errors.g.dart';
part 'server_field_errors.freezed.dart';

@freezed
@immutable
class ServerFieldErrors with _$ServerFieldErrors {
  const ServerFieldErrors._();

  const factory ServerFieldErrors({
    List<String?>? name,
    @JsonKey(name: 'first_name') List<String?>? firstName,
    @JsonKey(name: 'last_name') List<String?>? lastName,
    List<String?>? token,
    List<String?>? email,
    List<String?>? gender,
    List<String?>? age,
    List<String?>? phone,
    List<String?>? password,
    @JsonKey(name: 'current_password') List<String?>? oldPassword,
    List<String?>? code,
    List<String?>? type,
    List<String?>? description,
    List<String?>? document,
    List<String?>? duration,
    List<String?>? amount,
    @JsonKey(name: 'currency_id') List<String?>? currencyId,
    List<String?>? country,
    List<String?>? comment,
    @JsonKey(name: 'account_number') List<String?>? accountNumber,
    @JsonKey(name: 'bank_id') List<String?>? bankId,
    List<String?>? recipient,
    List<String?>? plan,
    @JsonKey(name: 'payment_method') List<String?>? paymentMethod,
    List<String?>? lat,
    List<String?>? long,
    List<String?>? zip,
    List<String?>? instructions,
    @JsonKey(name: 'country_id') List<String?>? countryId,
    List<String?>? alias,
    List<String?>? apartment,
    List<String?>? street,
    List<String?>? town,
    List<String?>? city,
    @JsonKey(name: 'state_id') List<String?>? stateId,
    List<String?>? state,
    List<String?>? landmark,
    @JsonKey(name: 'card_number') List<String?>? cardNumber,
    @JsonKey(name: 'card_name') List<String?>? cardName,
    @JsonKey(name: 'pickup_lat') List<String?>? pickupLat,
    @JsonKey(name: 'destination_lat') List<String?>? destLat,
    @JsonKey(name: 'item_name') List<String?>? itemName,
    List<String?>? quantity,
    List<String?>? images,
    @JsonKey(name: 'unit_price') List<String?>? unitPrice,
    @JsonKey(name: 'required_date') List<String?>? requiredDate,
    @JsonKey(name: 'message') List<String?>? supportMessage,
    @JsonKey(name: 'front_image') List<String?>? frontImage,
    @JsonKey(name: 'back_image') List<String?>? backImage,
  }) = _ServerFieldErrors;

  factory ServerFieldErrors.fromJson(Map<String, dynamic> json) =>
      _$ServerFieldErrorsFromJson(json);
}
