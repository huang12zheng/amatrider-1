// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  test(
    'test that `PlacePreditionDTO` model can parse response from google maps places api',
    () async {
      var result = jsonDecode(fixture('google_apis/places_auto_complete.json'));

      final _res = PlacePredictionDTO.fromJson(result as Map<String, dynamic>);

      // Logger().w(_res.immutable[0]);
    },
  );

  test(
    'test that `PlaceDetailDTO` model can parse response from google maps places details api',
    () async {
      var result =
          jsonDecode(fixture('google_apis/place_details_response.json'));

      final _res = PlaceDetailDTO.fromJson(result as Map<String, dynamic>);

      final _array = [
        AddressComponentType.postal_code,
        AddressComponentType.locality,
        AddressComponentType.sublocality,
        AddressComponentType.country,
      ];

      final _nationState = [
        AddressComponentType.administrative_area_level_1,
        AddressComponentType.political,
      ];

      final filtered = _res.result?.domain.addressComponents.filter(
        (p0) => p0.types.any((p1) => _array.any((v) => v == p1)),
      );

      final nationStates = _res.result?.domain.addressComponents
          .filter((p0) => p0.types.containsAll(KtList.from(_nationState)));

      nationStates?.forEach((el) {
        Logger().w(el);
      });
    },
  );
}
