library profile_verification_status.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'profile_verification_status.g.dart';

class ProfileVerificationStatus extends EnumClass {
  static const ProfileVerificationStatus verified = _$verified;
  @BuiltValueEnumConst(fallback: true)
  static const ProfileVerificationStatus unverified = _$unverified;

  const ProfileVerificationStatus._(String name) : super(name);

  static BuiltSet<ProfileVerificationStatus> get values => _$values;

  static BuiltList<ProfileVerificationStatus> get list =>
      _$values.toBuiltList();

  static ProfileVerificationStatus valueOf(String name) => _$valueOf(name);
}
