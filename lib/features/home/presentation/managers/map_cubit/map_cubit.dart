library map_cubit.dart;

import 'dart:async';
import 'dart:ui' as ui;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/domain/repositories/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'map_cubit.freezed.dart';
part '_map_cubit.part.dart';
part 'map_state.dart';

@injectable
class MapCubit extends Cubit<MapState> with BaseCubit<MapState> {
  static const double _kdefaultCircleRadius = 1500;

  StreamSubscription<FutureOr<Either<AnyResponse, RiderLocation?>>>?
      _locationSubscription;

  final LocationService _service;

  MapCubit(this._service) : super(MapState.initial());

  @override
  Future<void> close() {
    _locationSubscription?.cancel();
    return super.close();
  }

  String get riderCircleId => 'rider-current-location-circle';
  String get riderMarkerId => 'rider-current-location-marker';

  void toggleLoading([bool? isLoading]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void updateZoom(double newZoom) => emit(state.copyWith(currentZoom: newZoom));

  void init({
    BuildContext? ctx,
    RiderLocation? start,
    RiderLocation? end,
    RiderLocation? prevLocation,
    Widget? startWidget,
    Widget? endWidget,
    MarkerPainter? startPainter,
    MarkerPainter? endPainter,
  }) async {
    toggleLoading(true);

    if (ctx != null && start != null && end != null) {
      // Add a blank marker (for preloading sake)
      final _emptyMarker = Marker(markerId: MarkerId('${UniqueId.v4()}'));
      emit(state.copyWith(markers: {...state.markers, _emptyMarker}));

      if (startWidget != null) {
        MarkerGenerator.widget(
          id: '${start.lat},${start.lng}',
          latlng: start,
          markers: state.markers,
          widget: startWidget,
          context: ctx,
          onCreated: (markers) => emit(state.copyWith(markers: markers)),
        ).build();
      }

      if (endWidget != null) {
        MarkerGenerator.widget(
          id: '${end.lat},${end.lng}',
          latlng: end,
          markers: state.markers,
          widget: endWidget,
          context: ctx,
          onCreated: (markers) => emit(state.copyWith(markers: markers)),
        ).build();
      }

      if (startPainter != null) {
        final startBytes = await WindowPainter.render(startPainter);

        MarkerGenerator.unsigned(
          id: '${start.lat},${start.lng}',
          latlng: start,
          markers: state.markers,
          unsigned: startBytes!,
          onCreated: (markers) => emit(state.copyWith(markers: markers)),
        ).build();
      }

      if (endPainter != null) {
        final endBytes = await WindowPainter.render(endPainter);

        MarkerGenerator.unsigned(
          id: '${end.lat},${end.lng}',
          latlng: end,
          markers: state.markers,
          unsigned: endBytes!,
          onCreated: (markers) => emit(state.copyWith(markers: markers)),
        ).build();
      }

      await drawPolyline(start, end);

      await adjustMapBounds(start, end);
    } else {
      await updateCurrentLocation(prevLocation);
    }

    toggleLoading(false);
  }

  void toogleTraffic() =>
      emit(state.copyWith(trafficEnabled: !state.trafficEnabled));

  Future<void> updateCurrentLocation(
      [RiderLocation? position, BuildContext? ctx, bool pan = true]) async {
    final Either<AnyResponse, RiderLocation?> _result;

    if (position != null)
      _result = right(position);
    else
      _result = await _service.getLocation();

    await _result.fold(
      (response) async => log.e(response),
      (location) async => await location?.let((it) async {
        if (ctx != null) {
          MarkerGenerator.widget(
            id: '$riderMarkerId',
            latlng: location,
            markers: state.markers,
            widget: AppAssets.dispatchRider(const Size.square(45)),
            context: ctx,
            onCreated: (markers) {
              // log.w('Param markers length ===> ${markers.length}');
              emit(state.copyWith(markers: markers));
              // log.wtf('STATE markers length ===> ${state.markers.length}');
            },
          ).build();
        }

        // updateCircle(riderCircleId, location, strokeColor: Colors.transparent);

        if (pan) {
          const zoom = 15.8746;
          final _position = CameraPosition(
            target: LatLng(it.lat.getOrEmpty!, it.lng.getOrEmpty!),
            zoom: zoom,
          );

          updateZoom(zoom);

          await state.mapController?.animateCamera(
            CameraUpdate.newCameraPosition(_position),
          );
        }
      }),
    );
  }

  void updateCircle(
    String id,
    RiderLocation loc, {
    Color? fillColor,
    Color? strokeColor,
    double radius = _kdefaultCircleRadius,
    int strokeWidth = 2,
  }) {
    final _existingCircles = state.circles;
    // final _markerExists = _existingCircles.any((it) => it.circleId.value == id);

    final _stripped = _existingCircles
        .toList()
        .toImmutableList()
        .filterNot((it) => it.circleId.value == id)
        .asList()
        .toSet();

    _stripped.add(Circle(
      circleId: CircleId(id),
      radius: radius,
      strokeColor: strokeColor ?? Palette.accentColor.shade100,
      strokeWidth: strokeWidth,
      fillColor: fillColor ?? Palette.accentColor.withOpacity(0.1),
      center: LatLng(loc.lat.getOrNull!, loc.lng.getOrNull!),
    ));

    emit(state.copyWith(circles: _stripped));
  }
}
