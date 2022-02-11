library info_response.dart;

import 'package:amatrider/core/domain/response/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_response.freezed.dart';

enum InfoType { any, endOfList }

@freezed
@immutable
class InfoResponse with _$InfoResponse implements Info {
  const InfoResponse._();

  const factory InfoResponse({
    String? status,
    String? details,
    @Default(InfoType.any) InfoType type,
    required String message,
    @JsonKey(ignore: true) @Default(false) bool pop,
  }) = _InfoResponse;

  factory InfoResponse.processing() => const InfoResponse(message: 'Processing information..please wait!');

  factory InfoResponse.endOfList([String? message]) =>
      InfoResponse(message: message ?? "You've reached the end!", type: InfoType.endOfList);
}

extension InfoTypeX on InfoType {
  T when<T>({
    required T any,
    required T endOfList,
  }) {
    switch (this) {
      case InfoType.endOfList:
        return endOfList;
      case InfoType.any:
      default:
        return any;
    }
  }
}
