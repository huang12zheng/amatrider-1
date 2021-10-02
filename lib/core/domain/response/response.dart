import 'package:amatrider/core/data/response/index.dart';

mixin _BaseResponse {
  String? get status;
  String? get details;
  String get message;
}

abstract class Response implements _BaseResponse {
  bool get show;
  String? get uuid;
}

abstract class Failure with _FailureMixin, _BaseResponse {
  static const int CARD_PAYMENT_FAILED = 1105;
  static const int NO_SAVED_CARD = 1104;
  static const int UNVERIFIED_ACCOUNT = 1106;
  static const int INCOMPLETE_PROFILE = 1103;
  static const int UNVERIFIED_BVN = 1102;
  static const int UNVERIFIED_EMAIL = 1101;
  static const int UNVERIFIED_PHONE = 4031;

  int? get code;
  Exception? get exception;
}

abstract class Success with Response {
  bool get pop;
}

abstract class Info with Response {}

mixin _FailureMixin {
  String? get error;
  ServerFieldErrors? get errors;
}

class UnExpectedFailure implements Failure {
  @override
  final int? code;

  @override
  final String? details;

  @override
  final String? error;

  @override
  final String message;

  @override
  final String? status;

  UnExpectedFailure({
    required this.message,
    this.status,
    this.error,
    this.code,
    this.details,
  });

  @override
  ServerFieldErrors? get errors => null;

  @override
  Exception get exception => Exception(message);
}
