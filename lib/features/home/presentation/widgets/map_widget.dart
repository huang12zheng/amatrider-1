import 'dart:async';

import 'package:amatrider/features/home/domain/repositories/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// A stateless widget to render MapWidget.
class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget>
    with AutomaticKeepAliveClientMixin<MapWidget> {
  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GoogleMap(
      mapType: MapType.normal,
      compassEnabled: true,
      buildingsEnabled: true,
      indoorViewEnabled: true,
      mapToolbarEnabled: true,
      myLocationEnabled: true,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (controller) async {
        _controller.complete(controller);

        final _data = await getIt<LocationService>().getLocation(enforce: true);
        final _location = _data.getOrElse(() => null);

        await _location?.let((it) async {
          var _position = CameraPosition(
            bearing: 192.8334901395799,
            target: LatLng(it.lat.getOrEmpty!, it.lng.getOrEmpty!),
            // tilt: 29.440717697143555,
            zoom: 13.151926040649414,
          );

          await controller
              .animateCamera(CameraUpdate.newCameraPosition(_position));
        });
      },
    );
  }
}
