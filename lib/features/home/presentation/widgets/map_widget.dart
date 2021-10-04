library map_widget.dart;

import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// A stateless widget to render MapWidget.
class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget>
    with AutomaticKeepAliveClientMixin<MapWidget> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return MultiBlocListener(
      listeners: [
        BlocListener<MapCubit, MapState>(
          listenWhen: (p, c) => p.mapController != c.mapController,
          listener: (c, s) {
            if (s.mapController != null) c.read<MapCubit>().init();
          },
        ),
      ],
      child: BlocBuilder<MapCubit, MapState>(
        builder: (c, s) => GoogleMap(
          mapType: s.mapType,
          trafficEnabled: s.trafficEnabled,
          compassEnabled: false,
          buildingsEnabled: s.buildingsEnabled,
          indoorViewEnabled: true,
          mapToolbarEnabled: true,
          tiltGesturesEnabled: true,
          zoomControlsEnabled: false,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          initialCameraPosition: s.initialPosition,
          minMaxZoomPreference: MinMaxZoomPreference(s.minZoom, s.maxZoom),
          onMapCreated: c.read<MapCubit>().onMapCreated,
          onTap: c.read<MapCubit>().onTap,
        ),
      ),
    );
  }
}
