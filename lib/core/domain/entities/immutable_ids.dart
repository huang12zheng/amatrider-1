import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

/// Contains power-packed methods for any InputField type.
class ImmutableIds<U> extends FieldObject<KtList<UniqueId<U>?>?> {
  static const ImmutableIds<int> EMPTY = ImmutableIds._(Right(KtList.empty()));

  @override
  final Either<FieldObjectException<String>, KtList<UniqueId<U>?>?> value;

  factory ImmutableIds(KtList<UniqueId<U>?>? input) =>
      ImmutableIds._(Validator.isEmpty(input));

  const ImmutableIds._(this.value);

  @override
  ImmutableIds<U> copyWith(KtList<UniqueId<U>?>? newValue) =>
      ImmutableIds(newValue);
}
