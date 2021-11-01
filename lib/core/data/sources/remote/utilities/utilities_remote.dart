library utilities_remote.dart;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dio/dio.dart';
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
}
