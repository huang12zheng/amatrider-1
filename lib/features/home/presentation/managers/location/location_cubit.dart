library location_cubit.dart;

import 'dart:async';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/data/repositories/places_repository/places_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/domain/repositories/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

@injectable
class LocationCubit extends Cubit<LocationState> with BaseCubit<LocationState> {
  static final _nationState = [
    AddressComponentType.administrative_area_level_1,
    AddressComponentType.political,
  ];

  static final _county = [
    AddressComponentType.administrative_area_level_1,
    AddressComponentType.political,
  ];

  final PlacesRepository _placesRepository;
  final LocationService _service;

  LocationCubit(this._service, this._placesRepository)
      : super(LocationState.initial());

  AddressComponent? get country => state.position?.place?.addressComponents
      .singleOrNull((it) => it.types.contains(AddressComponentType.country));

  AddressComponent? get locality => state.position?.place?.addressComponents
      .singleOrNull((it) => it.types.contains(AddressComponentType.locality));

  AddressComponent? get postalCode =>
      state.position?.place?.addressComponents.singleOrNull(
          (it) => it.types.contains(AddressComponentType.postal_code));

  AddressComponent? get sublocality =>
      state.position?.place?.addressComponents.singleOrNull(
          (it) => it.types.contains(AddressComponentType.sublocality));

  AddressComponent? get nationState => state.position?.place?.addressComponents
      .filter((p0) =>
          p0.types.containsAll(KtList.from(_nationState)) ||
          p0.types.containsAll(KtList.from(_county)))
      .firstOrNull();

  Future<bool> get hasPermission => _service.hasPermission;

  Future<bool> requestPermission() => _service.requestPermissions();

  Future<void> request(
    BuildContext c, {
    bool enforce = true,
    bool background = false,
  }) async {
    await requestService(c, enforce: enforce);

    // Update request state
    emit(state.copyWith(isRequestingService: false));

    if (background) await requestBackground(c, enforce: enforce);
  }

  Future<void> getRiderLocation(
    BuildContext c, {
    bool enforce = true,
  }) async {
    await request(c, enforce: enforce);

    final _conn = await connection();

    await _conn.fold(
      () async {
        final _result = await _service.getLocation();

        await _result.fold(
          (error) async => emit(state.copyWith(
            status: some(AppHttpResponse(error)),
          )),
          (location) async {
            emit(state.copyWith(position: location));

            // Find address from lat, lng
            await findFromLatlng(location!);
          },
        );
      },
      (status) async => emit(state.copyWith(status: optionOf(status))),
    );
  }

  Future<void> findFromLatlng(RiderLocation location) async {
    final lat = location.lat.getOrNull;
    final lng = location.lng.getOrNull;

    final _response = await _placesRepository.reverseGeocode(
      latLng: '$lat,$lng',
      key: env.googleMapsAPI,
    );

    final place = _response.geocodes.firstOrNull();

    emit(state.copyWith(position: state.position?.copyWith(place: place)));
  }

  Future<void> requestService(
    BuildContext c, {
    bool enforce = true,
  }) async {
    final _hasService = await _service.isServiceEnabled;

    if (enforce) if (!_hasService) {
      emit(state.copyWith(isRequestingService: true));
      //
      final _status = await (await showRationale<FutureOr<bool>>(
        c,
        title: 'Location is disabled',
        content: '${Const.appName} collects location data to '
            'enable tracking your deliveries and calculating '
            'distance travelled even when the app is closed or not in use.',
        btnText: 'Turn on Location',
        defaultValue: true,
        onAccept: () async {
          final _enabled = await _service.requestService();
          emit(state.copyWith(isServiceEnabled: _enabled));
          return _enabled;
        },
      ));

      if (_status == null || !_status)
        await requestService(c, enforce: enforce);
      return;
    }
  }

  Future<void> requestBackground(
    BuildContext c, {
    bool enforce = true,
  }) async {
    final _backgroundEnabled = await _service.backgroundEnabled;

    if (enforce) if (!_backgroundEnabled) {
      final _status = await (await showRationale<FutureOr<bool>>(
        c,
        title: 'Background location is disabled',
        content: '${Const.appName} collects location data to '
            'enable tracking your deliveries and calculating '
            'distance travelled even when the app is closed or not in use.',
        btnText: 'Enable background location',
        defaultValue: true,
        onAccept: () async => await _service.requestBackgroundMode(),
      ));

      if (_status == null || !_status)
        await requestBackground(c, enforce: enforce);
      return;
    }
  }

  Future<B?> showRationale<B>(
    BuildContext ctx, {
    required String title,
    required String content,
    required B Function() onAccept,
    B? defaultValue,
    String? btnText,
  }) async {
    return await App.showAlertDialog<B>(
      context: ctx,
      barrierDismissible: false,
      barrierColor: App.resolveColor(
        Colors.grey.shade800.withOpacity(0.55),
        dark: Colors.white54,
      ),
      builder: (_) => AdaptiveAlertdialog<B>(
        title: title,
        content: content,
        defaultValue: defaultValue,
        firstButtonText: btnText ?? 'Grant Access',
        minContentFonSize: 15,
        contentFonSize: 17.sp,
        onFirstPressed: onAccept.call,
        buttonDirection: Axis.horizontal,
        disableSecondButton: true,
      ),
    );
  }
}
