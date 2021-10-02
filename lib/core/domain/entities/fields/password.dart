import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

class Password extends FieldObject<String?> {
  static const Password DEFAULT = Password._(Right(''));
  static const String kPlaceholder = 'secret';

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory Password(String? password) =>
      Password._(Validator.passwordValidator(password));

  const Password._(this.value);

  @override
  Password copyWith(String? newValue) => Password(newValue);
}
