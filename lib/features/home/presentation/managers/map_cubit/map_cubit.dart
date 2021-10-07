import 'dart:async';

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/domain/repositories/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

part 'map_state.dart';
part 'map_cubit.freezed.dart';

@injectable
class MapCubit extends Cubit<MapState> with BaseCubit<MapState> {
  final LocationService _service;
  StreamSubscription<Either<AnyResponse, UserLocation?>>? _locationSubscription;

  MapCubit(this._service) : super(MapState.initial());

  void init() async {
    await getCurrentLocation();
  }

  void toogleTraffic() =>
      emit(state.copyWith(trafficEnabled: !state.trafficEnabled));

  Future<void> getCurrentLocation() async {
    final _result = await _service.getLocation(enforce: true);

    await _locationSubscription?.cancel();
    _locationSubscription = _service.liveLocation().listen((result) {
      result.fold(
        (response) => log.e(response.message),
        (location) =>
            log.w('Location updated: ${location?.lat}, ${location?.lng}'),
      );
    });

    await _result.fold(
      (response) async => log.e(response),
      (location) async => await location?.let((it) async {
        final _position = CameraPosition(
          target: LatLng(it.lat.getOrEmpty!, it.lng.getOrEmpty!),
          zoom: 13.8746,
        );

        await state.mapController?.animateCamera(
          CameraUpdate.newCameraPosition(_position),
        );
      }),
    );
  }

  void onTap(LatLng latLng) {
    log.i('Tap location ==>> '
        '\nLatitude: ${latLng.latitude}, \Longitude: ${latLng.longitude}');
  }

  void onMapCreated(GoogleMapController controller) =>
      emit(state.copyWith(mapController: controller));

  @override
  Future<void> close() {
    _locationSubscription?.cancel();
    return super.close();
  }
}
