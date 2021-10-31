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
import 'package:google_maps_flutter/google_maps_flutter.dart' hide InfoWindow;
import 'package:injectable/injectable.dart';

part 'map_cubit.freezed.dart';
part 'map_state.dart';

@injectable
class MapCubit extends Cubit<MapState> with BaseCubit<MapState> {
  final LocationService _service;
  StreamSubscription<FutureOr<Either<AnyResponse, RiderLocation?>>>?
      _locationSubscription;

  MapCubit(this._service) : super(MapState.initial());

  void toggleLoading([bool? isLoading]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  Completer<ui.Image> imageDecoder(ImageProvider provider) {
    var completer = Completer<ui.Image>();

    provider.resolve(const ImageConfiguration()).addListener(
        ImageStreamListener((info, _) => completer.complete(info.image)));

    return completer;
  }

  void init({
    BuildContext? ctx,
    RiderLocation? start,
    RiderLocation? end,
    RiderLocation? prevLocation,
    Widget? startCard,
    Widget? endCard,
  }) async {
    toggleLoading(true);

    if (ctx != null && start != null && end != null) {
      final _markers = <Marker>{};
      MarkerGenerator(
        widget: startCard ?? AppAssets.ellipse(null, Palette.accentBlue),
        width: startCard == null ? 30 : null,
        height: startCard == null ? 30 : null,
        callback: (bitmap) {
          _markers.add(Marker(
            markerId: MarkerId('${start.lat},${start.lng}'),
            flat: true,
            position: LatLng(
              start.lat.getOrNull!,
              start.lng.getOrNull!,
            ),
            icon: BitmapDescriptor.fromBytes(bitmap!),
          ));
        },
      ).generate(ctx);

      MarkerGenerator(
        widget: endCard ?? AppAssets.ellipse(null, Palette.accentGreen),
        width: endCard == null ? 30 : null,
        height: endCard == null ? 30 : null,
        callback: (bitmap) {
          _markers.add(Marker(
            markerId: MarkerId('${end.lat},${end.lng}'),
            flat: true,
            position: LatLng(
              end.lat.getOrNull!,
              end.lng.getOrNull!,
            ),
            icon: BitmapDescriptor.fromBytes(bitmap!),
          ));
        },
      ).generate(ctx);

      _markers.add(Marker(markerId: MarkerId('${UniqueId.v4().value}')));

      emit(state.copyWith(markers: _markers));

      await drawPolyline(start, end);

      await adjustMapBounds(start, end);
    } else {
      await getCurrentLocation(prevLocation);
    }

    toggleLoading(false);
  }

  void toogleTraffic() =>
      emit(state.copyWith(trafficEnabled: !state.trafficEnabled));

  Future<void> getCurrentLocation([RiderLocation? position]) async {
    final Either<AnyResponse, RiderLocation?> _result;

    if (position != null)
      _result = right(position);
    else
      _result = await _service.getLocation();

    // await _locationSubscription?.cancel();
    // _locationSubscription = _service.liveLocation().listen((result) async {
    //   (await result).fold(
    //     (response) => log.e(response.message),
    //     (location) =>
    //         log.w('Location updated: ${location?.lat}, ${location?.lng}'),
    //   );
    // });

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

  Future<void> drawPolyline(RiderLocation start, RiderLocation end) async {
    // Object for PolylinePoints
    final polylinePoints = PolylinePoints();

    // List of coordinates to join
    var polylineCoordinates = <LatLng>[];

    // Map storing polylines created by connecting two points
    var polylines = <PolylineId, Polyline>{};

    // Generating the list of coordinates to be used for
    // drawing the polylines
    var _result = await polylinePoints.getRouteBetweenCoordinates(
      env.googleMapsAPI, // Google Maps API Key
      PointLatLng(start.lat.getOrNull!, start.lng.getOrNull!),
      PointLatLng(end.lat.getOrNull!, end.lng.getOrNull!),
      travelMode: TravelMode.driving,
      optimizeWaypoints: true,
    );

    // Adding the coordinates to the list
    if (_result.points.isNotEmpty) {
      _result.points.forEach((point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }

    // Defining an ID
    var _id = PolylineId('start-${start.lat.getOrNull},${start.lng.getOrNull}; '
        'end-${end.lat.getOrNull},${end.lng.getOrNull}');

    // Initializing Polyline
    var _line = Polyline(
      polylineId: _id,
      color: Palette.accentColor,
      points: polylineCoordinates,
      width: 5,
    );

    // Adding the polyline to the map
    polylines[_id] = _line;

    emit(state.copyWith(polylines: Set<Polyline>.of(polylines.values)));
    // emit(state.copyWith(polylines: {...state.polylines, _line}));
  }

  Future<void> adjustMapBounds(
    RiderLocation start,
    RiderLocation end, {
    double padding = 100.0,
  }) async {
    // Calculating to check that the position relative
    // to the frame, and pan & zoom the camera accordingly.
    var miny = (start.lat.getOrNull! <= end.lat.getOrNull!)
        ? start.lat.getOrNull!
        : end.lat.getOrNull!;
    var minx = (start.lng.getOrNull! <= end.lng.getOrNull!)
        ? start.lng.getOrNull!
        : end.lng.getOrNull!;
    var maxy = (start.lat.getOrNull! <= end.lat.getOrNull!)
        ? end.lat.getOrNull!
        : start.lat.getOrNull!;
    var maxx = (start.lng.getOrNull! <= end.lng.getOrNull!)
        ? end.lng.getOrNull!
        : start.lng.getOrNull!;

    var southWestLatitude = miny;
    var southWestLongitude = minx;

    var northEastLatitude = maxy;
    var northEastLongitude = maxx;

    // Accommodate the two locations within the
    // camera view of the map
    await state.mapController?.animateCamera(
      CameraUpdate.newLatLngBounds(
        LatLngBounds(
          northeast: LatLng(northEastLatitude, northEastLongitude),
          southwest: LatLng(southWestLatitude, southWestLongitude),
        ),
        padding,
      ),
    );
  }

  @override
  Future<void> close() {
    _locationSubscription?.cancel();
    return super.close();
  }
}

Future<BitmapDescriptor> customSVGMarker(
  BuildContext context, {
  String asset = AppAssets.timelinePinAsset,
  int width = 25,
  int height = 25,
}) async {
  // Read Svg file as String
  String svgString;
  try {
    svgString = await DefaultAssetBundle.of(context).loadString(asset);
  } catch (_) {
    svgString = await DefaultAssetBundle.of(context)
        .loadString('${AppAssets.timelinePinAsset}');
    log.e("Asset not found for 'Bitmap Descriptor' ...using default");
  }
  // Create Drawable Root frm svg String
  var root = await svg.fromSvgString(svgString, UniqueId<String>.v4().value!);
  // toPicture() and toImage() don't seem to be pixel ratio aware, so we calculate the actual sizes her
  var mediaQuery = MediaQuery.of(context);
  // Get the number of device pixels for each logical pixel
  var devicePixelRatio = mediaQuery.devicePixelRatio;
  var calcWidth = width * devicePixelRatio;
  // where 32 is your SVG's original width
  var calcHeight = height * devicePixelRatio; // same

  // Convert to ui.Picture
  var picture = root.toPicture(size: Size(calcWidth, calcHeight));

  // Convert to ui.Image. toImage() takes width and height as parameters
  // you need to find the best size to suit your needs and take into account the
  // screen DPI
  var image = await picture.toImage(calcWidth.toInt(), calcHeight.toInt());
  var bytes = await image.toByteData(format: ui.ImageByteFormat.png);

  return BitmapDescriptor.fromBytes(bytes!.buffer.asUint8List());
}
