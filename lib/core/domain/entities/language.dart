library language.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';

@freezed
@immutable
class Language with _$Language {
  const factory Language({
    String? languageName,
    required String languageCode,
    required String countryCode,
    String? countryName,
  }) = _Language;

  Locale get locale => Locale(languageCode, countryCode);

  const Language._();

  static List<Language> get languages => [
        Language(
          languageName: '${S.current.english}',
          countryName: 'United States',
          languageCode: 'en',
          countryCode: 'US',
        ),
        Language(
          languageName: '${S.current.turkish}',
          countryName: 'Turkey',
          languageCode: 'tr',
          countryCode: 'TR',
        ),
        Language(
          languageName: '${S.current.french}',
          countryName: 'France',
          languageCode: 'fr',
          countryCode: 'FR',
        ),
      ];
}
