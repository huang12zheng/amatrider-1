// GENERATED CODE - DO NOT MODIFY BY HAND

part of any_response.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponse _$$ErrorResponseFromJson(Map<String, dynamic> json) =>
    _$ErrorResponse(
      code: json['code'] as int?,
      status: json['status'] as String?,
      messageTxt: json['message'] as String?,
      error: json['error'] as String?,
      errors: json['errors'] == null
          ? null
          : ServerFieldErrors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ErrorResponseToJson(_$ErrorResponse instance) {
  final val = <String, dynamic>{
    'code': instance.code,
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.messageTxt);
  val['error'] = instance.error;
  val['errors'] = instance.errors;
  return val;
}

_$SuccessfulResponse _$$SuccessfulResponseFromJson(Map<String, dynamic> json) =>
    _$SuccessfulResponse(
      status: json['status'] as String?,
      messageTxt: json['message'] as String?,
    );

Map<String, dynamic> _$$SuccessfulResponseToJson(
    _$SuccessfulResponse instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.messageTxt);
  return val;
}
