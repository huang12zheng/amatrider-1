library utilities_repository.dart;

import 'dart:io';

import 'package:amatrider/core/data/http_client/index.dart';
import 'package:amatrider/core/data/models/index.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/data/sources/remote/utilities/utilities_remote.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/data/repositories/index.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@lazySingleton
class UtilitiesRepository extends BaseRepository {
  final UtilitiesRemote remote;

  UtilitiesRepository({required this.remote});

  Future<Either<AppHttpResponse, KtList<Country>>> countries() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) async => left(f),
      (_) async {
        try {
          final _countries = await remote.countries();

          return right(_countries.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<AppHttpResponse> verifyDocuments({
    required File? front,
    required File? back,
    required Country country,
    required String type,
  }) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) async => f,
      (_) async {
        try {
          await remote.documentVerification(
            front: front,
            back: back,
            countryId: country.id!.value!,
            type: type,
          );

          return AppHttpResponse.successful(
              'Your documents were submitted!', true);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<Either<AppHttpResponse, BankAccount>> bankAccount() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) async => left(f),
      (_) async {
        try {
          final _result = await remote.bankAccount();

          return right(_result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, BankAccount>> storeBankAccount(
    BankAccount? account,
  ) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) async => left(f),
      (_) async {
        try {
          final _dto = BankAccountDTO.fromDomain(account);

          final _result = await remote.storeBankAccount(_dto);

          return right(_result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }
}
