import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

@freezed
@immutable
class Country with _$Country implements Comparable<Country> {
  static const String turkeyISO = 'TR';
  static const String turkeyISO3 = 'TUR';

  const Country._();

  const factory Country({
    UniqueId<String?>? id,
    BasicTextField<String?>? name,
    BasicTextField<String?>? iso,
    BasicTextField<String?>? iso3,
    BasicTextField<String?>? dialCode,
    @Default('en') String locale,
    Currency? currency,
    int? digitsCount,
  }) = _Country;

  static const Country DEFAULT = Country(
    iso: BasicTextField.DEFAULT_STRING,
    iso3: BasicTextField.DEFAULT_STRING,
    name: BasicTextField.DEFAULT_STRING,
    dialCode: BasicTextField.DEFAULT_STRING,
  );

  @override
  int compareTo(Country other) {
    if (name == null || !name!.isValid) return -1;
    return name!.getOrEmpty!.compareTo(other.name!.getOrEmpty!);
  }
}
