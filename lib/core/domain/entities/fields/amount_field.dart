import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

class AmountField<U extends num> extends FieldObject<U?> {
  static const AmountField DEFAULT = AmountField._(Right(0));

  @override
  final Either<FieldObjectException<String>, U?> value;

  factory AmountField(U? input) => AmountField._(Validator.isEmpty(input));

  const AmountField._(this.value);

  @override
  FieldObject<U?> copyWith(U? newValue) => AmountField(newValue);
}
