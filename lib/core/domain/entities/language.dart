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
    String? countryName,
    required String countryCode,
  }) = _Language;

  Locale get locale => Locale(languageCode, countryCode);

  const Language._();

  static List<Language> get languages => [
        Language(
          languageName: '${S.current.english}',
          languageCode: 'en',
          countryName: 'United States',
          countryCode: 'US',
        ),
        Language(
          languageName: '${S.current.turkish}',
          languageCode: 'tr',
          countryName: 'Turkey',
          countryCode: 'TR',
        ),
        Language(
          languageName: '${S.current.french}',
          languageCode: 'fr',
          countryName: 'France',
          countryCode: 'FR',
        ),
      ];
}
