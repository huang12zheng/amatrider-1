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
  Future<GenericObjectDTO<BankAccountDTO?>> bankAccount();

  @POST(EndPoints.STORE_BANK_ACCOUNT)
  Future<BankAccountDTO> storeBankAccount(@Body() BankAccountDTO dto);

  @POST(EndPoints.DOCUMENT_VERIFICATION)
  @MultiPart()
  @Headers(<String, dynamic>{'content-type': 'multipart/form-data'})
  Future<AppHttpResponse> documentVerification({
    @Part(name: 'front_image') File? front,
    @Part(name: 'back_image') File? back,
    @Part(name: 'country_id') required String countryId,
    @Part() required String type,
    @SendProgress() ProgressCallback? progressCallback,
    @ReceiveProgress() ProgressCallback? receiveProgress,
  });

  @GET(EndPoints.GET_REVIEWS)
  Future<ReviewDTO> getReviews();

  @GET(EndPoints.ALL_NOTIFICATIONS)
  Future<InAppNotificationListDTO> inAppNotifications({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @POST(EndPoints.CONTACT_SUPPORT)
  @MultiPart()
  Future<void> contactSupport({
    @Part(name: 'type') required String type,
    @Part(name: 'message') required String message,
    @Part(name: 'images[]') List<File> images = const [],
  });

  @GET(EndPoints.GET_PROMOTIONS)
  Future<GenericPaginatedListDTO<PromotionDTO>> allAdminPromotions({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('admin_created') bool admin = true,
  });

  @POST(EndPoints.REGISTER_USER_DEVICE)
  Future<void> registerDevice({
    @Field('device') required String deviceType,
    @Field('device_token') required String deviceId,
  });
}
