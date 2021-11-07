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
import 'package:amatrider/manager/settings/index.dart';
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

  Future<AppHttpResponse> depositCash(String amount) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) async => f,
      (_) async {
        try {
          final _result = await remote.depositCash(amount);

          return _result;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse> claimBonus() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) async => f,
      (_) async {
        try {
          final _result = await remote.claimBonus();

          return _result;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<Either<AppHttpResponse, Review>> getReviews() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) async => left(f),
      (_) async {
        try {
          final _result = await remote.getReviews();

          return right(_result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<AppHttpResponse> contactSupport({
    required FeedbackType type,
    required String message,
    List<File> images = const [],
  }) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) async => f,
      (_) async {
        try {
          await remote.contactSupport(
              type: '${type.value}', message: message, images: images);

          return AppHttpResponse.successful(
            'Thanks for reaching out, we\'ll be in touch',
          );
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }
}
