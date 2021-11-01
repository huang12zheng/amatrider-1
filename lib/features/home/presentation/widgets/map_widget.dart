library map_widget.dart;

import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// A stateless widget to render MapWidget.
class MapWidget extends StatefulWidget {
  final RiderLocation? end;
  final RiderLocation? start;
  final Widget? startWidget;
  final Widget? endWidget;
  final MarkerPainter? startPainter;
  final MarkerPainter? endPainter;
  final bool refresh;

  const MapWidget({
    Key? key,
    this.start,
    this.end,
    this.startWidget,
    this.endWidget,
    this.startPainter,
    this.endPainter,
    this.refresh = false,
  })  : assert((startWidget == null && startPainter != null) ||
            (startWidget != null && startPainter == null) ||
            (startWidget == null && startPainter == null)),
        assert((endWidget == null && endPainter != null) ||
            (endWidget != null && endPainter == null) ||
            (endWidget == null && endPainter == null)),
        super(key: key);

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
            if (s.mapController != null) {
              print('REFRESGINGING MAP WIDGET');

              c.read<MapCubit>().init(
                    ctx: c,
                    start: widget.start,
                    end: widget.end,
                    startWidget: widget.startWidget,
                    endWidget: widget.endWidget,
                    startPainter: widget.startPainter,
                    endPainter: widget.endPainter,
                  );
              if (widget.start == null && widget.end == null)
                c.read<MapCubit>().updateCurrentLocation();
            }
          },
        ),
      ],
      child: BlocBuilder<MapCubit, MapState>(
        builder: (c, s) => GoogleMap(
          mapType: s.mapType,
          trafficEnabled: s.trafficEnabled,
          buildingsEnabled: s.buildingsEnabled,
          indoorViewEnabled: true,
          tiltGesturesEnabled: true,
          rotateGesturesEnabled: true,
          scrollGesturesEnabled: true,
          zoomGesturesEnabled: true,
          compassEnabled: false,
          mapToolbarEnabled: false,
          zoomControlsEnabled: false,
          myLocationEnabled: false,
          myLocationButtonEnabled: false,
          circles: s.circles,
          markers: s.markers,
          polylines: s.polylines,
          initialCameraPosition: s.initialPosition,
          onCameraMove: c.read<MapCubit>().onCameraMove,
          minMaxZoomPreference: MinMaxZoomPreference(s.minZoom, s.maxZoom),
          onMapCreated: c.read<MapCubit>().onMapCreated,
          onTap: c.read<MapCubit>().onTap,
        ),
      ),
    );
  }
}
