library server_field_errors.dart;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_field_errors.g.dart';
part 'server_field_errors.freezed.dart';

@freezed
@immutable
class ServerFieldErrors with _$ServerFieldErrors {
  const ServerFieldErrors._();

  const factory ServerFieldErrors({
    @JsonKey(includeIfNull: false) List<String?>? name,
    @JsonKey(includeIfNull: false, name: 'first_name') List<String?>? firstName,
    @JsonKey(includeIfNull: false, name: 'last_name') List<String?>? lastName,
    @JsonKey(includeIfNull: false) List<String?>? token,
    @JsonKey(includeIfNull: false) List<String?>? email,
    @JsonKey(includeIfNull: false) List<String?>? gender,
    @JsonKey(includeIfNull: false) List<String?>? age,
    @JsonKey(includeIfNull: false) List<String?>? phone,
    @JsonKey(includeIfNull: false) List<String?>? password,
    @JsonKey(includeIfNull: false, name: 'current_password')
        List<String?>? oldPassword,
    @JsonKey(includeIfNull: false) List<String?>? code,
    @JsonKey(includeIfNull: false) List<String?>? type,
    @JsonKey(includeIfNull: false) List<String?>? description,
    @JsonKey(includeIfNull: false) List<String?>? document,
    @JsonKey(includeIfNull: false) List<String?>? duration,
    @JsonKey(includeIfNull: false) List<String?>? amount,
    @JsonKey(includeIfNull: false, name: 'currency_id')
        List<String?>? currencyId,
    @JsonKey(includeIfNull: false) List<String?>? country,
    @JsonKey(includeIfNull: false) List<String?>? comment,
    @JsonKey(includeIfNull: false, name: 'account_number')
        List<String?>? accountNumber,
    @JsonKey(includeIfNull: false, name: 'bank_id') List<String?>? bankId,
    @JsonKey(includeIfNull: false) List<String?>? recipient,
    @JsonKey(includeIfNull: false) List<String?>? plan,
    @JsonKey(includeIfNull: false, name: 'payment_method')
        List<String?>? paymentMethod,
    @JsonKey(includeIfNull: false) List<String?>? lat,
    @JsonKey(includeIfNull: false) List<String?>? long,
    @JsonKey(includeIfNull: false) List<String?>? zip,
    @JsonKey(includeIfNull: false) List<String?>? instructions,
    @JsonKey(includeIfNull: false, name: 'country_id') List<String?>? countryId,
    @JsonKey(includeIfNull: false) List<String?>? alias,
    @JsonKey(includeIfNull: false) List<String?>? apartment,
    @JsonKey(includeIfNull: false) List<String?>? street,
    @JsonKey(includeIfNull: false) List<String?>? town,
    @JsonKey(includeIfNull: false) List<String?>? city,
    @JsonKey(includeIfNull: false, name: 'state_id') List<String?>? stateId,
    @JsonKey(includeIfNull: false) List<String?>? state,
    @JsonKey(includeIfNull: false) List<String?>? landmark,
    @JsonKey(includeIfNull: false, name: 'card_number')
        List<String?>? cardNumber,
    @JsonKey(includeIfNull: false, name: 'card_name') List<String?>? cardName,
    @JsonKey(includeIfNull: false, name: 'pickup_lat') List<String?>? pickupLat,
    @JsonKey(includeIfNull: false, name: 'destination_lat')
        List<String?>? destLat,
    @JsonKey(includeIfNull: false, name: 'item_name') List<String?>? itemName,
    @JsonKey(includeIfNull: false) List<String?>? quantity,
    @JsonKey(includeIfNull: false) List<String?>? images,
    @JsonKey(includeIfNull: false, name: 'unit_price') List<String?>? unitPrice,
    @JsonKey(includeIfNull: false, name: 'required_date')
        List<String?>? requiredDate,
    @JsonKey(includeIfNull: false, name: 'message')
        List<String?>? supportMessage,
  }) = _ServerFieldErrors;

  factory ServerFieldErrors.fromJson(Map<String, dynamic> json) =>
      _$ServerFieldErrorsFromJson(json);
}
