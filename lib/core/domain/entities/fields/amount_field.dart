import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';

class AmountField<U extends num?> extends FieldObject<U> {
  static const AmountField DEFAULT = AmountField._(Right(0));

  @override
  final Either<FieldObjectException<String>, U> value;

  factory AmountField(U input, {LengthValidator<U>? other, bool validate = true}) =>
      AmountField<U>._(other?.let((it) => Validator.isEmpty(input).flatMap(it)) ?? (validate ? Validator.isEmpty(input) : right(input)));

  const AmountField._(this.value);

  AmountField<U> operator +(num other) {
    if (typesEqual<U, int>()) return copyWith(((getOrNull as int) + other) as U);
    if (typesEqual<U, int?>()) return copyWith(((getOrNull as int? ?? 0) + other) as U);
    if (typesEqual<U, double>()) return copyWith(((getOrNull as double) + other) as U);
    if (typesEqual<U, double?>()) return copyWith(((getOrNull as double? ?? 0) + other) as U);
    if (typesEqual<U, num>()) return copyWith(((getOrNull as num) + other) as U);
    return copyWith(((getOrNull ?? 0) + other) as U);
  }

  AmountField<U> operator -(num other) {
    if (typesEqual<U, int>()) return copyWith(((getOrNull as int) - other) as U);
    if (typesEqual<U, int?>()) return copyWith(((getOrNull as int? ?? 0) - other) as U);
    if (typesEqual<U, double>()) return copyWith(((getOrNull as double) - other) as U);
    if (typesEqual<U, double?>()) return copyWith(((getOrNull as double? ?? 0) - other) as U);
    if (typesEqual<U, num>()) return copyWith(((getOrNull as num) - other) as U);
    return copyWith(((getOrNull ?? 0) - other) as U);
  }

  @override
  AmountField<U> copyWith(U newValue) => AmountField<U>(newValue);
}
