library history_remote.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'history_remote.g.dart';

@lazySingleton
@RestApi()
abstract class HistoryRemote {
  @factoryMethod
  factory HistoryRemote(AppHttpClient dio) = _HistoryRemote;

  @GET(EndPoints.GET_ALL_HISTORY)
  Future<LogisticsListDTO> all({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });
}
