library logistics_remote.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'logistics_remote.g.dart';

@lazySingleton
@RestApi(parser: Parser.FlutterCompute)
abstract class LogisticsRemote {
  @factoryMethod
  factory LogisticsRemote(AppHttpClient dio) = _LogisticsRemote;

  @GET(EndPoints.GET_ALL_IN_TRANSIT)
  Future<LogisticsListDTO> allInTransit({
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @GET(EndPoints.GET_ALL_ACTIVE)
  Future<LogisticsListDTO> allActive({
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @GET(EndPoints.GET_SINGLE_PACKAGE)
  Future<SendPackageDTO> singlePackage(
    @Path() String? id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @GET(EndPoints.GET_SINGLE_ORDER)
  Future<UserOrderDTO> singleOrder(
    @Path() String? id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @POST(EndPoints.ACCEPT_PACKAGE_DELIVERY)
  Future<AppHttpResponse> acceptPackageDelivery(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @POST(EndPoints.ACCEPT_ORDER_DELIVERY)
  Future<AppHttpResponse> acceptOrderDelivery(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @POST(EndPoints.DECLINE_PACKAGE_DELIVERY)
  Future<AppHttpResponse> declinePackageDelivery(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @POST(EndPoints.DECLINE_ORDER_DELIVERY)
  Future<AppHttpResponse> declineOrderDelivery(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @POST(EndPoints.UPDATE_PACKAGE_LOCATION)
  Future<AppHttpResponse> updatePackageLocation(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @POST(EndPoints.UPDATE_ORDER_LOCATION)
  Future<AppHttpResponse> updateOrderLocation(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
  });

  @POST(EndPoints.CONFIRM_RECEIVED_PACKAGE)
  Future<AppHttpResponse> confirmPackagePickup(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
    @Field('token') required String token,
  });

  @POST(EndPoints.CONFIRM_RECEIVED_ORDER)
  Future<AppHttpResponse> confirmOrderPickup(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
    @Field('token') required String token,
  });

  @POST(EndPoints.CONFIRM_PACKAGE_DELIVERED)
  Future<AppHttpResponse> confirmPackageDelivery(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
    @Field('token') required String token,
  });

  @POST(EndPoints.CONFIRM_ORDER_DELIVERED)
  Future<AppHttpResponse> confirmOrderDelivery(
    @Path() String id, {
    @Query('lat') required String lat,
    @Query('long') required String lng,
    @Field('token') required String token,
  });

  @POST(EndPoints.ALERT_ORDER_ARRIVAL)
  Future<void> alertOrderArrival(@Path() String id);

  @POST(EndPoints.ALERT_PACKAGE_ARRIVAL)
  Future<void> alertPackageArrival(@Path() String id);
}
