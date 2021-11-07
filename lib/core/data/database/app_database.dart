library app_database.dart;

import 'dart:async';

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/data/models/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/serializer/serializers.dart';
import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.freezed.dart';
part 'app_database.g.dart';
part 'base_dao.dart';
part 'package:amatrider/core/data/models/user/rider_dto.dart';

@TypeConverters([
  TimestampFloorConverter,
  CountryDTOFloorConverter,
  RiderAvailabilityConverter,
  VerificationStatusConverter,
])
@Database(version: 1, entities: [
  _$_RiderDTO,
])
abstract class AppDatabase extends FloorDatabase {
  RiderDAO get riderDAO;
}
