library marker_generator.dart;

import 'dart:typed_data';

import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kt_dart/collection.dart';

enum MarkerType { bitmap, widget, unsigned }

class MarkerGenerator {
  final MarkerType _type;

  final Function(Set<Marker>) onCreated;
  final BitmapDescriptor? bitmap;
  final BuildContext? context;
  final bool flat;
  final double? height;
  final String id;
  final RiderLocation latlng;
  final Set<Marker> markers;
  final double? pixelRatio;
  final Uint8List? unsigned;
  final Widget? widget;
  final double? width;

  MarkerGenerator.bitmap({
    required this.id,
    required this.latlng,
    required this.markers,
    required BitmapDescriptor bitmap,
    required this.onCreated,
    this.flat = false,
  })  : bitmap = bitmap,
        context = null,
        unsigned = null,
        height = null,
        width = null,
        pixelRatio = null,
        widget = null,
        _type = MarkerType.bitmap;

  MarkerGenerator.unsigned({
    required this.id,
    required this.latlng,
    required this.markers,
    required Uint8List unsigned,
    required this.onCreated,
    this.flat = false,
  })  : unsigned = unsigned,
        context = null,
        bitmap = null,
        height = null,
        width = null,
        pixelRatio = null,
        widget = null,
        _type = MarkerType.unsigned;

  MarkerGenerator.widget({
    required this.id,
    required this.latlng,
    required this.markers,
    required Widget widget,
    required BuildContext context,
    required this.onCreated,
    this.height,
    this.width,
    this.pixelRatio,
    this.flat = false,
  })  : widget = widget,
        context = context,
        unsigned = null,
        bitmap = null,
        _type = MarkerType.widget;

  void build() {
    // final _markerExists = markers.any((it) => it.markerId.value == id);
    final _filtered = markers
        .toList()
        .toImmutableList()
        .filterNot((it) => it.markerId.value == id)
        .asList()
        .toSet();

    _when(
      bitmap: () {
        _filtered.add(Marker(
          markerId: MarkerId(id),
          flat: flat,
          position: LatLng(latlng.lat.getOrNull!, latlng.lng.getOrNull!),
          icon: bitmap!,
        ));

        onCreated.call(_filtered);
      },
      unsigned: () {
        _filtered.add(Marker(
          markerId: MarkerId(id),
          flat: flat,
          position: LatLng(latlng.lat.getOrNull!, latlng.lng.getOrNull!),
          icon: BitmapDescriptor.fromBytes(unsigned!),
        ));

        onCreated.call(_filtered);
      },
      widget: () {
        MarkerWidget(
          widget: widget!,
          height: height,
          width: width,
          pixelRatio: pixelRatio,
          callback: (bitmap) {
            _filtered.add(Marker(
              markerId: MarkerId(id),
              flat: flat,
              position: LatLng(latlng.lat.getOrNull!, latlng.lng.getOrNull!),
              icon: BitmapDescriptor.fromBytes(bitmap!),
            ));

            onCreated.call(_filtered);
          },
        ).generate(context!);
      },
    );
  }

  T _when<T>({
    required T Function() bitmap,
    required T Function() unsigned,
    required T Function() widget,
  }) {
    switch (_type) {
      case MarkerType.bitmap:
        return bitmap.call();
      case MarkerType.unsigned:
        return unsigned.call();
      case MarkerType.widget:
        return widget.call();
    }
  }
}
