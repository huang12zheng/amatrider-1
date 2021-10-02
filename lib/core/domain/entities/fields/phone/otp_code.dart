import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

class OTPCode extends FieldObject<String?> {
  static const CODE_LENGTH = 5;

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory OTPCode(String? input, [int? length]) {
    return OTPCode._(Validator.otpCodeValidator(
      input,
      max: length ?? CODE_LENGTH,
    ));
  }

  const OTPCode._(this.value);

  @override
  OTPCode copyWith(String? newValue, [int? length]) =>
      OTPCode(newValue, length);
}
