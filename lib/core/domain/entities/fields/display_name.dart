import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

class DisplayName extends FieldObject<String?> {
  static const DisplayName DEFAULT = DisplayName._(Right(''));
  static const String kPlaceholder = 'John Doe';

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory DisplayName(String? input) {
    return DisplayName._(Validator.isEmpty(input));
  }

  const DisplayName._(this.value);

  @override
  DisplayName copyWith(String? newValue) => DisplayName(newValue);
}
