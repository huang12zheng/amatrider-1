// GENERATED CODE - DO NOT MODIFY BY HAND

part of server_field_errors.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerFieldErrors _$$_ServerFieldErrorsFromJson(Map<String, dynamic> json) =>
    _$_ServerFieldErrors(
      name: (json['name'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      firstName: (json['first_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      lastName: (json['last_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      token:
          (json['token'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      gender:
          (json['gender'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      age: (json['age'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      phone:
          (json['phone'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      oldPassword: (json['current_password'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      code: (json['code'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      type: (json['type'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      description: (json['description'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      document: (json['document'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      duration: (json['duration'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      amount:
          (json['amount'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      currencyId: (json['currency_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      country: (json['country'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      comment: (json['comment'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      bankId: (json['bank_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      bankName: (json['bank_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      accountName: (json['account_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      accountNumber: (json['account_number'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      sortCode: (json['sort_code'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      recipient: (json['recipient'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      plan: (json['plan'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      paymentMethod: (json['payment_method'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      lat: (json['lat'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      long: (json['long'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      zip: (json['zip'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      instructions: (json['instructions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      countryId: (json['country_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      alias:
          (json['alias'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      apartment: (json['apartment'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      street:
          (json['street'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      town: (json['town'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      city: (json['city'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      stateId: (json['state_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      state:
          (json['state'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      landmark: (json['landmark'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      cardNumber: (json['card_number'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      cardName: (json['card_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      pickupLat: (json['pickup_lat'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      destLat: (json['destination_lat'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      itemName: (json['item_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      quantity: (json['quantity'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      unitPrice: (json['unit_price'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      requiredDate: (json['required_date'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      supportMessage: (json['message'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      frontImage: (json['front_image'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      backImage: (json['back_image'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_ServerFieldErrorsToJson(
    _$_ServerFieldErrors instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('token', instance.token);
  writeNotNull('email', instance.email);
  writeNotNull('gender', instance.gender);
  writeNotNull('age', instance.age);
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('current_password', instance.oldPassword);
  writeNotNull('code', instance.code);
  writeNotNull('type', instance.type);
  writeNotNull('description', instance.description);
  writeNotNull('document', instance.document);
  writeNotNull('duration', instance.duration);
  writeNotNull('amount', instance.amount);
  writeNotNull('currency_id', instance.currencyId);
  writeNotNull('country', instance.country);
  writeNotNull('comment', instance.comment);
  writeNotNull('bank_id', instance.bankId);
  writeNotNull('bank_name', instance.bankName);
  writeNotNull('account_name', instance.accountName);
  writeNotNull('account_number', instance.accountNumber);
  writeNotNull('sort_code', instance.sortCode);
  writeNotNull('recipient', instance.recipient);
  writeNotNull('plan', instance.plan);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('lat', instance.lat);
  writeNotNull('long', instance.long);
  writeNotNull('zip', instance.zip);
  writeNotNull('instructions', instance.instructions);
  writeNotNull('country_id', instance.countryId);
  writeNotNull('alias', instance.alias);
  writeNotNull('apartment', instance.apartment);
  writeNotNull('street', instance.street);
  writeNotNull('town', instance.town);
  writeNotNull('city', instance.city);
  writeNotNull('state_id', instance.stateId);
  writeNotNull('state', instance.state);
  writeNotNull('landmark', instance.landmark);
  writeNotNull('card_number', instance.cardNumber);
  writeNotNull('card_name', instance.cardName);
  writeNotNull('pickup_lat', instance.pickupLat);
  writeNotNull('destination_lat', instance.destLat);
  writeNotNull('item_name', instance.itemName);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('images', instance.images);
  writeNotNull('unit_price', instance.unitPrice);
  writeNotNull('required_date', instance.requiredDate);
  writeNotNull('message', instance.supportMessage);
  writeNotNull('front_image', instance.frontImage);
  writeNotNull('back_image', instance.backImage);
  return val;
}
