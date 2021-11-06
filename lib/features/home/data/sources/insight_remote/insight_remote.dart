library insight_remote.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'insight_remote.g.dart';

@lazySingleton
@RestApi()
abstract class InsightRemote {
  @factoryMethod
  factory InsightRemote(AppHttpClient dio) = _InsightRemote;

  @GET(EndPoints.GET_INSIGHT)
  Future<InsightDTO> insights();

  @POST(EndPoints.DEPOSIT_CASH)
  Future<AppHttpResponse> deposit(@Query('amount') String amount);

  @GET(EndPoints.CLAIM_BONUS)
  Future<AppHttpResponse> claimBonus();
}
