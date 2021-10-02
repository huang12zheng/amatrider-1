import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'gender_type.g.dart';

class GenderType extends EnumClass {
  static const GenderType male = _$male;
  static const GenderType female = _$female;
  @BuiltValueEnumConst(fallback: true)
  static const GenderType others = _$others;

  const GenderType._(String name) : super(name);

  static BuiltSet<GenderType> get values => _$values;

  static BuiltList<GenderType> get items => values.toBuiltList();

  static GenderType valueOf(String name) => _$valueOf(name);
}
