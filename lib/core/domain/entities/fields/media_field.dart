import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';
import 'package:amatrider/utils/utils.dart';

class MediaField extends FieldObject<String?> {
  static const MediaField DEFAULT = MediaField._(Right(AppAssets.unnamed));

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory MediaField(String? input) => MediaField._(Validator.isEmpty(input).flatMap((a) => Validator.validUrl(a)));
  // factory MediaField(String? input) => MediaField._(Validator.isEmpty(input));

  const MediaField._(this.value);

  @override
  MediaField copyWith(String? newValue) => MediaField(newValue);
}
