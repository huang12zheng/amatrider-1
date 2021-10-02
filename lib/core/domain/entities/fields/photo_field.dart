import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';
import 'package:amatrider/utils/utils.dart';

class PhotoField extends FieldObject<String?> {
  static const PhotoField DEFAULT = PhotoField._(Right(AppAssets.unnamed));

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory PhotoField(String? input) {
    return PhotoField._(Validator.isEmpty(input));
  }

  const PhotoField._(this.value);

  @override
  PhotoField copyWith(String? newValue) => PhotoField(newValue);
}
