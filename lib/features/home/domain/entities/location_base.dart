import 'package:amatrider/core/domain/entities/entities.dart';

abstract class LocationBase {
  const LocationBase();

  BasicTextField<double?> get lat;
  BasicTextField<double?> get lng;
}
