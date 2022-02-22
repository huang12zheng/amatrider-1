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
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@lazySingleton
class UtilitiesRepository extends BaseRepository {
  final UtilitiesRemote remote;

  UtilitiesRepository(this.remote);

  MetaField? _promotionsMeta;
  MetaField? _notificationMeta;

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

          return AppHttpResponse.successful('Your documents were submitted!', pop: true);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<Either<AppHttpResponse, BankAccount?>> bankAccount() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) async => left(f),
      (_) async {
        try {
          final _result = await remote.bankAccount();

          return right(_result.domain((e) => e?.domain));
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
          await remote.contactSupport(type: '${type.value}', message: message, images: images);

          return AppHttpResponse.info('Thanks for reaching out, we\'ll be in touch', true);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<Either<AppHttpResponse, KtList<InAppNotification>>> inAppNotifications({int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) async => left(f),
      (_) async {
        final InAppNotificationListDTO listDTO;

        try {
          if (nextPage) {
            assert(_notificationMeta != null);

            if (_notificationMeta?.currentPage != _notificationMeta?.lastPage)
              listDTO = await remote.inAppNotifications(page: _notificationMeta!.currentPage! + 1, perPage: perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _notificationMeta?.currentPage != null ? _notificationMeta!.currentPage! * _perPage : _perPage;
            listDTO = await remote.inAppNotifications(perPage: _perPageValue);
          }

          // Save new meta data
          _notificationMeta = listDTO.meta;
          return right(listDTO.data.map((e) => e.domain).toImmutableList());
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, KtList<Promotion>>> promotions({int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) async => left(f),
      (_) async {
        final GenericPaginatedListDTO<PromotionDTO> promotions;

        try {
          if (nextPage) {
            assert(_promotionsMeta != null);

            if (_promotionsMeta?.currentPage != _promotionsMeta?.lastPage)
              promotions = await remote.allAdminPromotions(page: _promotionsMeta!.currentPage! + 1, perPage: perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _promotionsMeta?.currentPage != null ? _promotionsMeta!.currentPage! * _perPage : _perPage;
            promotions = await remote.allAdminPromotions(perPage: _perPageValue);
          }

          // Save new meta data
          _promotionsMeta = promotions.meta;
          return right(promotions.data.map((e) => e.domain).toImmutableList());
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }
}
