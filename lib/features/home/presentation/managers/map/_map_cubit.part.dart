// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

part of map_cubit.dart;

extension MapCubitX on MapCubit {
  void onTap(LatLng latLng) {
    log.i('Tap location ==>> '
        '\nLatitude: ${latLng.latitude}, '
        '\nLongitude: ${latLng.longitude}');
  }

  void onCameraMove(CameraPosition position) {
    if (position.zoom != state.currentZoom) {
      if (position.zoom >= 0.3) updateZoom(position.zoom);

      final _existingCircles = state.circles;
      // final _circle = _existingCircles
      //     .firstWhereOrNull((it) => it.circleId.value == riderCircleId);
      final _circleExists = _existingCircles.any((it) => it.circleId.value == riderCircleId);

      if (_circleExists) {}
    }
  }

  void onMapCreated(GoogleMapController controller) => emit(state.copyWith(mapController: controller));

  Future<void> drawPolyline(UserAddress start, UserAddress end) async {
    // Object for PolylinePoints
    final polylinePoints = PolylinePoints();

    // List of coordinates to join
    var polylineCoordinates = <LatLng>[];

    // Map storing polylines created by connecting two points
    var polylines = <PolylineId, Polyline>{};

    // Generating the list of coordinates to be used for
    // drawing the polylines
    if (start.lat.getOrNull != null && start.lng.getOrNull != null && end.lat.getOrNull != null && end.lng.getOrNull != null) {
      var _result = await polylinePoints.getRouteBetweenCoordinates(
        env.googleMapsAPI, // Google Maps API Key
        PointLatLng(start.lat.getOrNull!, start.lng.getOrNull!),
        PointLatLng(end.lat.getOrNull!, end.lng.getOrNull!),
        travelMode: TravelMode.driving,
        optimizeWaypoints: false,
        avoidFerries: true,
        avoidHighways: false,
        avoidTolls: false,
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
        startCap: Cap.roundCap,
        endCap: Cap.roundCap,
        width: 5,
        geodesic: true,
        jointType: JointType.round,
      );

      // Adding the polyline to the map
      polylines[_id] = _line;

      emit(state.copyWith(polylines: Set<Polyline>.of(polylines.values)));
    }
  }

  Future<void> adjustMapBounds(
    UserAddress start,
    UserAddress end, {
    double padding = 150.0,
  }) async {
    // Calculating to check that the position relative
    // to the frame, and pan & zoom the camera accordingly.
    if (start.lat.getOrNull != null && start.lng.getOrNull != null && end.lat.getOrNull != null && end.lng.getOrNull != null) {
      var miny = (start.lat.getOrNull! <= end.lat.getOrNull!) ? start.lat.getOrNull! : end.lat.getOrNull!;
      var minx = (start.lng.getOrNull! <= end.lng.getOrNull!) ? start.lng.getOrNull! : end.lng.getOrNull!;
      var maxy = (start.lat.getOrNull! <= end.lat.getOrNull!) ? end.lat.getOrNull! : start.lat.getOrNull!;
      var maxx = (start.lng.getOrNull! <= end.lng.getOrNull!) ? end.lng.getOrNull! : start.lng.getOrNull!;

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
  }

  Future<BitmapDescriptor> customSVGMarker(
    BuildContext context, {
    String asset = AppAssets.timelinePinAsset,
    int width = 25,
    int height = 25,
    Color? color,
  }) async {
    // Read Svg file as String
    String svgString;
    try {
      svgString = await DefaultAssetBundle.of(context).loadString(asset);
    } catch (_) {
      svgString = await DefaultAssetBundle.of(context).loadString('${AppAssets.timelinePinAsset}');
      log.e("Asset not found for 'Bitmap Descriptor' ...using default");
    }
    // Create Drawable Root frm svg String
    var root = await svg.fromSvgString(
      svgString,
      UniqueId<String>.v4().value!,
      theme: SvgTheme(currentColor: color),
    );
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
}
