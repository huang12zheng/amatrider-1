import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';

class AmountField<U extends num> extends FieldObject<U?> {
  static const AmountField DEFAULT = AmountField._(Right(0));

  @override
  final Either<FieldObjectException<String>, U?> value;

  factory AmountField(
    U? input, {
    num? min,
    bool isMin = true,
    String? msg,
  }) {
    return AmountField._(
      min?.let((it) => Validator.isEmpty(input).flatMap(
                (a) => Validator.amount(a, check: it, min: isMin, msg: msg),
              )) ??
          Validator.isEmpty(input),
    );
  }

  const AmountField._(this.value);

  @override
  FieldObject<U?> copyWith(U? newValue) => AmountField(newValue);
}
