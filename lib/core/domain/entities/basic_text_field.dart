import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

typedef LengthValidator<G> = StringValidator<G> Function(G?);

class BasicTextField<U extends Object?> extends FieldObject<U?> {
  static const BasicTextField<num> DEFAULT_NUM =
      BasicTextField<num>._(Right(0));

  static const BasicTextField<String?> DEFAULT_STRING =
      BasicTextField._(Right(''));

  @override
  final Either<FieldObjectException<String>, U?> value;

  factory BasicTextField(
    U? input, {
    LengthValidator<U?>? other,
    bool validate = true,
  }) =>
      BasicTextField._(!validate
          ? right(input)
          : Validator.isEmpty(input).flatMap(other ?? (a) => right(a)));

  const BasicTextField._(this.value);

  @override
  BasicTextField<U?> copyWith(U? newValue,
          {bool validate = true, LengthValidator<U?>? other}) =>
      BasicTextField(newValue, validate: validate, other: other);
}
