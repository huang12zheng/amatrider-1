import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';
import 'package:amatrider/utils/utils.dart';

typedef LengthValidator<G> = StringValidator<G> Function(G);

class BasicTextField<U> extends FieldObject<U> {
  static const BasicTextField<num> DEFAULT_NUM = BasicTextField<num>._(Right(0));

  static const BasicTextField<String?> DEFAULT_STRING = BasicTextField._(Right(''));

  @override
  final Either<FieldObjectException<String>, U> value;

  factory BasicTextField(U input, {LengthValidator<U>? other, bool validate = true}) =>
      BasicTextField._(!validate ? right(input) : Validator.isEmpty(input).flatMap(other ?? (a) => right(a)));

  const BasicTextField._(this.value);

  BasicTextField<U> operator +(other) {
    if (typesEqual<U, num>() && other is num)
      return copyWith(((getOrNull as num) + other) as U);
    else if (typesEqual<U, num?>() && (other is num || other is num?)) {
      if (other == null) return copyWith(getOrNull as U);
      final _other = other as num;
      return copyWith((0 + _other) as U);
    } else if (typesEqual<U, int>() && other is int)
      return copyWith(((getOrNull as int) + other) as U);
    else if (typesEqual<U, int?>() && (other is int || other is int?)) {
      if (other == null) return copyWith(getOrNull as U);
      final _other = other as int;
      return copyWith((0 + _other) as U);
    } else if (typesEqual<U, double>() && other is double)
      return copyWith(((getOrNull as double) + other) as U);
    else if (typesEqual<U, double?>() && (other is double || other is double?)) {
      if (other == null) return copyWith(getOrNull as U);
      final _other = other as double;
      return copyWith((0.0 + _other) as U);
    }
    if ((typesEqual<U, String>() || typesEqual<U, String?>()) && other is String) return copyWith(('$getOrEmpty' + other) as U);
    return this;
  }

  BasicTextField<U> operator -(num other) {
    if (typesEqual<U, int>()) return copyWith(((getOrNull as int) - other) as U);
    if (typesEqual<U, int?>()) return copyWith(((getOrNull as int? ?? 0) - other) as U);
    if (typesEqual<U, double>()) return copyWith(((getOrNull as double) - other) as U);
    if (typesEqual<U, double?>()) return copyWith(((getOrNull as double? ?? 0) - other) as U);
    if (typesEqual<U, num>()) return copyWith(((getOrNull as num) - other) as U);
    return copyWith(((getOrNull as num? ?? 0) - other) as U);
  }

  @override
  BasicTextField<U> copyWith(U newValue, {bool validate = true, LengthValidator<U>? other}) =>
      BasicTextField(newValue, validate: validate, other: other);
}
