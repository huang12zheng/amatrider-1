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

  Future<dynamic> showPermissionRationale(BuildContext context, {Future<void> Function()? callback}) async {
    if (!(await hasPermission)) {
      if (navigator.current.name != AccessRoute.name)
        return await navigator.push(AccessRoute(
          title: 'Kindly Grant Location Access',
          onWillPop: requestPermission,
          content: 'Your location is needed in calculating '
              'accurate distance and delivery time.',
          additionalContent: AdaptiveText.rich(
            const TextSpan(children: [
              TextSpan(text: 'It’s safe to grant '),
              TextSpan(
                text: '${Const.appName}',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              TextSpan(text: ' location access. '),
              TextSpan(text: 'It makes the system work better. '),
              TextSpan(text: 'Thank you.'),
            ]),
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
            letterSpacing: Utils.letterSpacing,
            softWrap: true,
          ),
          onAccept: () async {
            final _granted = await requestPermission();

            if (_granted) {
              await navigator.pop(true);
              await callback?.call();
            }

            return false;
          },
        ));
    } else {
      return callback?.call();
    }
  }

  Future<void> request(
    BuildContext c, {
    bool background = false,
    Future<void> Function(bool)? future,
  }) async {
    if (!state.isRequestingService) await requestService(c, future: future, service: _service);

    // Update request state
    emit(state.copyWith(isRequestingService: false));

    if (background) await requestBackground(c);
  }

  Future<void> getRiderLocation(
    BuildContext c, {
    required void Function(RiderLocation) callback,
    bool getAddress = true,
  }) async {
    await request(c, future: (granted) async {
      toggleLoading(true);

      final _conn = await connection();

      await _conn.fold(
        () async {
          final _result = await _service.getLocation();

          await _result.fold(
            (error) async => emit(state.copyWith(
              status: some(AppHttpResponse(error)),
            )),
            (location) async {
              emit(state.copyWith(position: location, lastUpdate: DateTime.now()));

              callback.call(location!);

              if (getAddress)
                // Find address from lat, lng
                await findFromLatlng(location);
            },
          );
        },
        (status) async => emit(state.copyWith(status: optionOf(status))),
      );

      if (!getAddress) toggleLoading(false);
    });
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

    toggleLoading(false);
  }

  Future<void> requestService(
    BuildContext c, {
    Future<void> Function(bool)? future,
    required LocationService service,
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

          return _enabled;
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
      barrierColor: App.resolveColor(
        Colors.grey.shade800.withOpacity(0.55),
        dark: Colors.white54,
      ),
      builder: (_) => AdaptiveAlertdialog<B>(
        title: title,
        content: content,
        defaultValue: defaultValue,
        firstButtonText: btnText ?? 'Grant Access',
        minContentFontSize: 15,
        contentFontSize: 17.sp,
        onFirstPressed: onAccept.call,
        buttonDirection: Axis.horizontal,
        disableSecondButton: true,
      ),
    );
  }
}
