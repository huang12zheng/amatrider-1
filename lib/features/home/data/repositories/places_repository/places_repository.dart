library places_repository.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'places_repository.g.dart';

@lazySingleton
@RestApi()
abstract class PlacesRepository {
  @factoryMethod
  factory PlacesRepository(AppHttpClient dio) = _PlacesRepository;

  @GET('https://maps.googleapis.com/maps/api/place/autocomplete/json')
  Future<PlacePredictionDTO> autocomplete({
    @Query('input') required String input,
    @Query('types', encoded: true) String? types,
    @Query('radius') int? radius,
    @Query('language') String? lang,
    @Query('components') String? components,
    @Query('strictbounds') bool? strictbounds,
    @Query('sessiontoken') required String sessionToken,
    @Query('key') required String key,
  });

  @GET('https://maps.googleapis.com/maps/api/place/details/json')
  Future<PlaceDetailDTO> details({
    @Query('place_id') required String placeId,
    @Query('fields', encoded: true) required String? fields,
    @Query('language') String? lang,
    @Query('sessiontoken') required String sessionToken,
    @Query('key') required String key,
  });

  @GET('https://maps.googleapis.com/maps/api/geocode/json')
  Future<PlaceDetailDTO> geocode({
    @Query('address') required String address,
    @Query('language') String? lang,
    @Query('key') required String key,
  });

  @GET('https://maps.googleapis.com/maps/api/geocode/json')
  Future<PlaceDetailDTO> reverseGeocode({
    @Query('latlng') required String latLng,
    @Query('result_type', encoded: true) String? resultType,
    @Query('language') String? lang,
    @Query('key') required String key,
  });
}
