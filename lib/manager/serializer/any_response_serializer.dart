library any_response_serializer.dart;

import 'package:amatrider/core/data/response/index.dart';
import 'package:json_annotation/json_annotation.dart';

class AnyResponseSerializer implements JsonConverter<AnyResponse, Map<String, dynamic>> {
  const AnyResponseSerializer();

  @override
  AnyResponse fromJson(Map<String, dynamic>? json) {
    if (json == null)
      return const ErrorResponse(
        messageTxt: 'Fatal: No response from server! Pls contact support.',
      );

    if (!json.containsKey('status'))
      return ErrorResponse.fromJson(json);
    else if ((json.containsKey('status') && json['status'] is num)) {
      return ErrorResponse.fromJson(json);
    } else
      switch (json['status'] as String) {
        case 'success':
          return SuccessfulResponse.fromJson(json);
        case 'info':
          return InfoResponseType.fromJson(json);
        case 'error':
        default:
          return ErrorResponse.fromJson(json);
      }
  }

  @override
  Map<String, dynamic> toJson(AnyResponse instance) => instance.toJson();
}
