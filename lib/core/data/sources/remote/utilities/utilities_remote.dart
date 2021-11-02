library utilities_remote.dart;

import 'dart:io';

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'utilities_remote.g.dart';

@lazySingleton
@RestApi()
abstract class UtilitiesRemote {
  @factoryMethod
  factory UtilitiesRemote(AppHttpClient dio) = _UtilitiesRemote;

  @GET(EndPoints.COUNTRIES)
  Future<List<CountryDTO>> countries();

  @GET(EndPoints.GET_BANK_ACCOUNT)
  Future<List<BankAccountDTO>> bankAccounts();

  @GET(EndPoints.STORE_BANK_ACCOUNT)
  Future<BankAccountDTO> storeBankAccount(@Body() BankAccountDTO dto);

  @POST(EndPoints.DOCUMENT_VERIFICATION)
  @MultiPart()
  @Headers(<String, dynamic>{'content-type': 'multipart/form-data'})
  Future<AppHttpResponse> documentVerification({
    @Part(name: 'front_image') File front,
    @Part(name: 'back_image') File back,
    @Part(name: 'country_id') String countryId,
    @Part() String type,
  });
}
