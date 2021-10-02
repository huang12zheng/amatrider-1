import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

class Gender extends FieldObject<GenderType?> {
  static const Gender DEFAULT = Gender._(Right(GenderType.others));

  @override
  final Either<FieldObjectException<String>, GenderType?> value;

  factory Gender(GenderType? type) =>
      Gender._(Validator.isEmpty<GenderType>(type));

  const Gender._(this.value);

  @override
  Gender copyWith(GenderType? newValue) => Gender(newValue);
}
