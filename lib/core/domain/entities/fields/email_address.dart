import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends FieldObject<String?> {
  static const EmailAddress DEFAULT = EmailAddress._(Right(''));
  static const String kPlaceholder = 'johndoe@email.com';

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory EmailAddress(String? email) {
    return EmailAddress._(Validator.emailValidator(email));
  }

  const EmailAddress._(this.value);

  @override
  EmailAddress copyWith(String? newValue) => EmailAddress(newValue);
}
