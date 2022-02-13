library map_cubit.dart;

import 'dart:async';
import 'dart:ui' as ui;

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part '_map_cubit.part.dart';
part 'map_cubit.freezed.dart';
part 'map_state.dart';

@injectable
class MapCubit extends Cubit<MapState> with BaseCubit<MapState> {
  static const double _kdefaultCircleRadius = 1500;

  StreamSubscription<FutureOr<Either<AnyResponse, RiderLocation?>>>? _locationSubscription;

  MapCubit() : super(MapState.initial());

  @override
  Future<void> close() {
    _locationSubscription?.cancel();
    return super.close();
  }

  String get riderCircleId => 'rider-current-location-circle';
  String get riderMarkerId => 'rider-current-location-marker';

  void toggleLoading([bool? isLoading]) => emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void updateZoom(double newZoom) => emit(state.copyWith(currentZoom: newZoom));

  void init(
    BuildContext ctx, {
    UserAddress? start,
    UserAddress? end,
    RiderLocation? prevUserLocation,
    Widget? startWidget,
    Widget? endWidget,
    MarkerPainter? startPainter,
    MarkerPainter? endPainter,
    bool? customStartWidget,
    bool? customEndWidget,
  }) async {
    toggleLoading(true);

    if (start != null &&
        start.lat.getOrNull != null &&
        start.lng.getOrNull != null &&
        end != null &&
        end.lat.getOrNull != null &&
        end.lng.getOrNull != null) {
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

      final customStart = customStartWidget ?? true;
      final customEnd = customEndWidget ?? true;

      if ((startWidget == null && startPainter == null) && customStart) {
        final _marker = Marker(
          markerId: MarkerId('${start.lat},${start.lng}'),
          position: LatLng(start.lat.getOrNull!, start.lng.getOrNull!),
          icon: await customSVGMarker(ctx, color: Palette.accentBlue),
        );

        emit(state.copyWith(
          markers: <Marker>{...state.markers.toList(), _marker},
        ));
      }
      if ((endWidget == null && endPainter == null) && customEnd) {
        final _marker = Marker(
          markerId: MarkerId('${end.lat},${end.lng}'),
          position: LatLng(end.lat.getOrNull!, end.lng.getOrNull!),
          icon: await customSVGMarker(ctx, color: Palette.accentGreen),
        );

        emit(state.copyWith(
          markers: <Marker>{...state.markers.toList(), _marker},
        ));
      }

      if (start.lat.getOrNull != null && start.lng.getOrNull != null && end.lat.getOrNull != null && end.lng.getOrNull != null)
        await drawPolyline(start, end);

      if (start.lat.getOrNull != null && start.lng.getOrNull != null && end.lat.getOrNull != null && end.lng.getOrNull != null)
        await adjustMapBounds(start, end);
    } else {
      await updateCurrentLocation(ctx, prevUserLocation);
    }

    toggleLoading(false);
  }

  void toogleTraffic() => emit(state.copyWith(trafficEnabled: !state.trafficEnabled));

  Future<void> updateCurrentLocation(BuildContext ctx, [RiderLocation? position, bool pan = true]) async {
    RiderLocation? location;

    if (position != null) {
      location = position;
      await _zoomAndPan(ctx, location, pan);
    } else
      await BlocProvider.of<LocationCubit>(ctx).getRiderLocation(ctx, callback: (l) async => await _zoomAndPan(ctx, l, pan));
  }

  Future<void> _zoomAndPan(BuildContext ctx, [RiderLocation? location, bool pan = true]) async {
    MarkerGenerator.widget(
      id: '$riderMarkerId',
      latlng: UserAddress.fromLocation(location!),
      markers: state.markers,
      widget: AppAssets.dispatchRider(const Size.square(45)),
      context: ctx,
      onCreated: (markers) {
        // log.w('Param markers length ===> ${markers.length}');
        emit(state.copyWith(markers: markers));
        // log.wtf('STATE markers length ===> ${state.markers.length}');
      },
    ).build();

    // updateCircle(riderCircleId, location, strokeColor: Colors.transparent);

    if (pan) {
      const zoom = 15.8746;
      final _position = CameraPosition(
        target: LatLng(location.lat.getOrEmpty!, location.lng.getOrEmpty!),
        zoom: zoom,
      );

      updateZoom(zoom);

      await state.mapController?.animateCamera(
        CameraUpdate.newCameraPosition(_position),
      );
    }
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

    final _stripped = _existingCircles.toList().toImmutableList().filterNot((it) => it.circleId.value == id).asList().toSet();

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
