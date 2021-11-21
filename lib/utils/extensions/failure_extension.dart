import 'package:flutter/widgets.dart';
import 'package:amatrider/core/domain/response/index.dart';

extension XFailure on Failure {
  T foldCode<T>({
    T Function()? is401,

    /// NotFoundError
    T Function()? is404,

    /// Called when user email is not verified.
    T Function()? is1101,

    /// Called when user bvn hasn't been verified
    T Function()? is1102,

    /// Called when no valid record was found.
    T Function()? is1103,

    /// Called when user has no saved cards.
    T Function()? is1104,

    /// Called when debit card could not be debited
    T Function()? is1105,

    /// User has not verified their account
    /// by submitting legal documents
    T Function()? is1106,

    /// Called when user hasn't verified phone number
    T Function()? is4031,

    /// Called when user has not completed KYC
    T Function()? is41101,

    /// Used as a default to prevent null-pointer exceptions
    required T Function() orElse,
  }) {
    switch (code) {
      case Failure.UNAUTHENTICATED:
        return is401?.call() ?? orElse.call();
      case 404:
        return is404?.call() ?? orElse.call();
      case Failure.UNVERIFIED_EMAIL:
        return is1101?.call() ?? orElse.call();
      case Failure.UNVERIFIED_BVN:
        return is1102?.call() ?? orElse.call();
      case Failure.UNVERIFIED_ACCOUNT:
        return is1106?.call() ?? orElse.call();
      case Failure.INCOMPLETE_PROFILE:
        return is1103?.call() ?? orElse.call();
      case Failure.NO_SAVED_CARD:
        return is1104?.call() ?? orElse.call();
      case Failure.CARD_PAYMENT_FAILED:
        return is1105?.call() ?? orElse.call();
      case Failure.UNVERIFIED_PHONE:
        return is4031?.call() ?? orElse.call();
      case Failure.INCOMPLETE_KYC:
        return is41101?.call() ?? orElse.call();
      default:
        return (T is Widget) ? const SizedBox.shrink() as T : orElse.call();
    }
  }
}
