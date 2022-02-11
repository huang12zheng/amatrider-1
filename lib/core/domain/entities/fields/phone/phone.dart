import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/response/field_object/field_object_exception.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

class Phone extends FieldObject<String?> {
  static const Phone DEFAULT = Phone._(Right(''), country: Country.DEFAULT);

  @override
  final Either<FieldObjectException<String>, String?> value;
  final Country? country;

  factory Phone(String? phone, {Country? country, FIELD_VALIDATION? mode}) {
    return Phone._(
      Validator.phoneNumberValidator(phone, mode: mode),
      country: country,
    );
  }

  bool get isEmpty => value.fold((_) => true, (r) => r!.isEmpty);

  Phone? get formatted => value.fold(
        (f) => null,
        (val) {
          if (country?.dialCode?.getOrNull != null) {
            if (val!.contains('${country!.dialCode!.getOrEmpty}'))
              return Phone('$val');
            else {
              final value = '${country!.dialCode!.getOrEmpty}$val';
              return Phone(value.startsWith('+') ? value : '+$value');
            }
          } else
            return Phone('$val');
        },
      );

  Phone? get noDialCode => value.fold(
        (f) => null,
        (val) => country?.dialCode?.getOrNull == null
            ? null
            : Phone(
                val?.replaceAll(country!.dialCode!.getOrEmpty!, '').replaceAll('+', ''),
              ),
      );

  const Phone._(this.value, {this.country});

  @override
  Phone copyWith(
    String? value, {
    Country? country,
    FIELD_VALIDATION? mode,
  }) =>
      Phone(value, country: country, mode: mode);
}
