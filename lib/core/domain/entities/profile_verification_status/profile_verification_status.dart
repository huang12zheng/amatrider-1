library profile_verification_status.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'profile_verification_status.g.dart';

class ProfileVerificationStatus extends EnumClass {
  static const ProfileVerificationStatus verified = _$verified;

  @BuiltValueEnumConst(fallback: true)
  static const ProfileVerificationStatus unverified = _$unverified;

  static const ProfileVerificationStatus in_review = _$in_review;

  static const ProfileVerificationStatus failed = _$failed;

  const ProfileVerificationStatus._(String name) : super(name);

  bool get isVerified => this == ProfileVerificationStatus.verified;

  static BuiltSet<ProfileVerificationStatus> get values => _$values;

  static BuiltList<ProfileVerificationStatus> get list => _$values.toBuiltList();

  static ProfileVerificationStatus valueOf(String name) => _$valueOf(name);

  static ProfileVerificationStatus fromBool(bool value) {
    switch (value) {
      case true:
        return ProfileVerificationStatus.verified;
      case false:
      default:
        return ProfileVerificationStatus.unverified;
    }
  }
}

extension ProfileVerificationStatusX on ProfileVerificationStatus {
  T when<T>({
    required T Function() verified,
    required T Function() inReview,
    required T Function() failed,
    required T Function() unverified,
  }) {
    switch (this) {
      case ProfileVerificationStatus.verified:
        return verified.call();
      case ProfileVerificationStatus.in_review:
        return inReview.call();
      case ProfileVerificationStatus.failed:
        return failed.call();
      case ProfileVerificationStatus.unverified:
        return unverified.call();
      default:
        return unverified.call();
    }
  }

  T maybeWhen<T>({
    T Function()? verified,
    T Function()? inReview,
    T Function()? failed,
    T Function()? unverified,
    required T Function() orElse,
  }) {
    switch (this) {
      case ProfileVerificationStatus.verified:
        return verified?.call() ?? orElse();
      case ProfileVerificationStatus.in_review:
        return inReview?.call() ?? orElse();
      case ProfileVerificationStatus.failed:
        return failed?.call() ?? orElse();
      case ProfileVerificationStatus.unverified:
        return unverified?.call() ?? orElse();
      default:
        return orElse();
    }
  }
}
