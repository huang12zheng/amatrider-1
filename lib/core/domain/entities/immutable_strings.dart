import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

/// Contains power-packed methods for any InputField type.
class ImmutableStrings extends FieldObject<KtList<String?>?> {
  static const ImmutableStrings DEFAULT =
      ImmutableStrings._(Right(KtList.empty()));

  @override
  final Either<FieldObjectException<String>, KtList<String?>?> value;

  factory ImmutableStrings(KtList<String?>? input) =>
      ImmutableStrings._(Validator.isEmpty(input));

  const ImmutableStrings._(this.value);

  @override
  String toString() => '${getOrEmpty?.asList()}';

  @override
  ImmutableStrings copyWith(KtList<String?>? newValue) =>
      ImmutableStrings(newValue);
}
