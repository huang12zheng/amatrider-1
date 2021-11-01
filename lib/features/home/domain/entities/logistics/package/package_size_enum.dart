library package_size_enum.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'package_size_enum.g.dart';

class PackageSize extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const PackageSize small = _$small;
  static const PackageSize medium = _$medium;

  const PackageSize._(String name) : super(name);

  static BuiltSet<PackageSize> get values => _$values;

  static PackageSize valueOf(String name) => _$valueOf(name);
}
