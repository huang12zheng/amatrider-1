library location_cubit.dart;

import 'dart:async';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/data/repositories/places_repository/places_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/domain/repositories/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
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

  LocationCubit(this._service, this._placesRepository) : super(LocationState.initial());

  AddressComponent? get country =>
      state.position?.place?.addressComponents.singleOrNull((it) => it.types.contains(AddressComponentType.country));

  AddressComponent? get locality =>
      state.position?.place?.addressComponents.singleOrNull((it) => it.types.contains(AddressComponentType.locality));

  AddressComponent? get postalCode =>
      state.position?.place?.addressComponents.singleOrNull((it) => it.types.contains(AddressComponentType.postal_code));

  AddressComponent? get sublocality =>
      state.position?.place?.addressComponents.singleOrNull((it) => it.types.contains(AddressComponentType.sublocality));

  AddressComponent? get nationState => state.position?.place?.addressComponents
      .filter((p0) => p0.types.containsAll(KtList.from(_nationState)) || p0.types.containsAll(KtList.from(_county)))
      .firstOrNull();

  Future<bool> get hasPermission => _service.hasPermission;

  Future<bool> requestPermission() => _service.requestPermissions();

  Future<bool> serviceEnabled() => _service.requestService();

  void toggleLoading([bool? isLoading]) => emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  bool get wasUpdatedRecently =>
      state.lastUpdate != null ? (state.lastUpdate!.difference(DateTime.now()) < const Duration(minutes: 2)) : false;

  void disableBackgroundLocation() => _service.requestBackgroundMode(false);

  Future<dynamic> showPermissionRationale(
    BuildContext context, {
    void Function()? onAccepted,
    void Function()? onDeclined,
    void Function(RiderLocation)? onLocation,
    void Function()? onFailure,
    bool clear = false,
    bool getAddress = true,
    bool beforeAddress = true,
    bool fresh = false,
  }) async {
    if (!(await hasPermission)) {
      if (navigator.current.name != LocationPermissionRoute.name)
        await navigator.push(LocationPermissionRoute(
          onAccepted: () async {
            final _granted = await requestPermission();

            if (_granted) {
              onAccepted?.call();

              unawaited(getRiderLocation(
                context,
                callback: onLocation ?? (RiderLocation p) => null,
                callbackBeforeAddress: beforeAddress,
                clear: clear,
                getAddress: getAddress,
                fresh: fresh,
                onFailure: onFailure,
              ));
            }
          },
          onDeclined: () {
            onDeclined?.call();
            onFailure?.call();
            // onLocation?.call(null);
          },
        ));
    } else {
      onAccepted?.call();

      unawaited(getRiderLocation(
        context,
        callback: onLocation ?? (RiderLocation p) => null,
        callbackBeforeAddress: beforeAddress,
        clear: clear,
        getAddress: getAddress,
        fresh: fresh,
        onFailure: onFailure,
      ));
    }
  }

  Future<void> request(
    BuildContext c, {
    bool background = false,
    Future<void> Function(bool)? future,
    bool awaitBackground = false,
    void Function()? onFailure,
  }) async {
    if (!state.isRequestingService)
      await requestService(
        c,
        future: !awaitBackground ? future : null,
        service: _service,
        onFailure: onFailure,
      );

    // Update request state
    emit(state.copyWith(isRequestingService: false));
  }

  Future<void> getRiderLocation(
    BuildContext c, {
    required void Function(RiderLocation) callback,
    void Function()? onFailure,
    bool clear = false,
    bool getAddress = true,
    bool callbackBeforeAddress = true,
    bool fresh = false,
  }) async {
    await env.flavor.fold(
      dev: () async {
        final location = RiderLocation(
          lat: BasicTextField(6.46962420769978),
          lng: BasicTextField(3.20450716310222),
          address: BasicTextField(null),
        );

        if (callbackBeforeAddress) callback.call(location);

        if (getAddress) {
          toggleLoading(true);

          // Find address from lat, lng
          final place = await findFromLatlng(location);

          emit(state.copyWith(position: location.copyWith(place: place)));

          if (!callbackBeforeAddress) callback.call(state.position!);

          toggleLoading(false);
        } else {
          emit(state.copyWith(position: location.copyWith(place: state.position?.place)));
        }
      },
      prod: () async {
        if (clear) emit(state.copyWith(position: null, status: none()));

        if (fresh) {
          await _getRiderLocation(
            c,
            callback: callback,
            getAddress: getAddress,
            beforeAddress: callbackBeforeAddress,
            onFailure: onFailure,
          );
        } else if (wasUpdatedRecently) {
          callback(state.position!);
        } else {
          await _getRiderLocation(
            c,
            callback: callback,
            getAddress: getAddress,
            beforeAddress: callbackBeforeAddress,
            onFailure: onFailure,
          );
        }
      },
    );
  }

  Future<void> _getRiderLocation(
    BuildContext c, {
    required void Function(RiderLocation) callback,
    void Function()? onFailure,
    bool getAddress = true,
    bool beforeAddress = true,
  }) async {
    await request(c, onFailure: onFailure, future: (granted) async {
      toggleLoading(true);

      Future.delayed(const Duration(seconds: 8), () {
        toggleLoading(false);
      });

      if (!granted) {
        // callback(null);
        toggleLoading(false);
        return;
      }

      final _conn = await connection();

      await _conn.fold(
        () async {
          await _service.getLocation(
            onData: (location) async {
              emit(state.copyWith(position: location.copyWith(place: state.position?.place), lastUpdate: DateTime.now()));

              await _runAfterLocationService(location, callback, getAddress, beforeAddress);
            },
            onError: (err) async {
              emit(state.copyWith(status: some(AppHttpResponse(err)), isLoading: false));

              final _result = await _service.getLastKnownLocation();

              await _result.fold(
                (f) async => emit(state.copyWith(status: some(AppHttpResponse(f)), isLoading: false)),
                (_lastKnownLocation) async {
                  await _runAfterLocationService(_lastKnownLocation, callback, getAddress, beforeAddress);
                },
              );
            },
          );
        },
        (status) async => emit(state.copyWith(status: optionOf(status), isLoading: false)),
      );

      toggleLoading(false);
    });
  }

  Future<void> _runAfterLocationService(
    RiderLocation location,
    void Function(RiderLocation) callback, [
    bool getAddress = true,
    bool beforeAddress = true,
  ]) async {
    if (beforeAddress) callback.call(location);

    if (getAddress) {
      // Find address from lat, lng
      final place = await findFromLatlng(location);

      emit(state.copyWith(position: state.position?.copyWith(place: place)));

      if (!beforeAddress) callback.call(state.position!);
    }
  }

  Future<PlaceDetail?> findFromLatlng(RiderLocation location) async {
    final lat = location.lat.getOrNull;
    final lng = location.lng.getOrNull;

    final _response = await _placesRepository.reverseGeocode(
      latLng: '$lat,$lng',
      resultType: 'street_address|administrative_area_level_1|administrative_area_level_2|locality|sublocality|political|country',
      key: env.googleMapsAPI,
    );

    return _response.geocodes.firstOrNull();
  }

  Future<void> requestService(
    BuildContext c, {
    Future<void> Function(bool)? future,
    required LocationService service,
    void Function()? onFailure,
  }) async {
    final _hasService = await serviceEnabled();

    if (_hasService) await future?.call(_hasService);

    if (!_hasService) {
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
          await service.requestService();

          final _enabled = await serviceEnabled();

          emit(state.copyWith(isServiceEnabled: _enabled));

          if (_enabled) await future?.call(_enabled);

          return navigator.pop(_enabled);
        },
      ));
      //
      emit(state.copyWith(isRequestingService: false));

      if (_status == null || !_status) await requestService(c, future: future, service: service);
      return;
    }
  }

  Future<void> requestBackground(
    BuildContext c, {
    bool enforce = true,
    Future<void> Function(bool)? future,
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
        onAccept: () async {
          await _service.requestBackgroundMode();

          final _enabled = await _service.backgroundEnabled;

          emit(state.copyWith(isBackgroundEnabled: _enabled));

          if (_enabled) await future?.call(_enabled);

          return _enabled;
        },
      ));

      if (_status == null || !_status) await requestBackground(c, enforce: enforce);
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
      builder: (_) => AdaptiveAlertdialog<B>(
        title: title,
        content: content,
        defaultValue: defaultValue,
        firstButtonText: btnText ?? 'Grant Access',
        minContentFontSize: 15,
        contentFontSize: 17.sp,
        onFirstPressed: onAccept,
        buttonDirection: Axis.horizontal,
        disableSecondButton: true,
        autoPopFirstButton: false,
        autoPopSecondButton: false,
      ),
    );
  }
}
