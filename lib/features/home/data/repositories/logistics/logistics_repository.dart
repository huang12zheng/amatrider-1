library logistics_repository.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/domain/entities/logistics/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'logistics_repository.g.dart';

@lazySingleton
@RestApi()
abstract class LogisticsRepository {
  @factoryMethod
  factory LogisticsRepository(AppHttpClient dio) = _LogisticsRepository;

  @GET(EndPoints.GET_ACTIVE_PACKAGES)
  Future<SendPackageListDTO> all({
    @Query('status') SendPackageStatus status = SendPackageStatus.ACTIVE,
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @POST(EndPoints.ACCEPT_PACKAGE_DELIVERY)
  Future<AppHttpResponse> acceptPackageDelivery(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @POST(EndPoints.DeCLINE_PACKAGE_DELIVERY)
  Future<AppHttpResponse> declinePackageDelivery(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @POST(EndPoints.CONFIRM_RECEIVED_PACKAGE)
  Future<AppHttpResponse> updateLocation(
    @Path() String id, {
    @Body() required RiderLocationDTO location,
  });

  @POST(EndPoints.CONFIRM_RECEIVED_PACKAGE)
  Future<AppHttpResponse> confirmPackageReceived(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @POST(EndPoints.CONFIRM_RECEIVED_DELIVERED)
  Future<AppHttpResponse> confirmPackageDelivered(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });
}
