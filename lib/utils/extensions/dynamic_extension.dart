import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';

extension DynamicX on dynamic {
  bool get isNull => this == null;

  bool get isBlank {
    switch (runtimeType) {
      case String:
      case List:
      case Map:
      case Set:
      case Iterable:
        return this.isEmpty as bool;
      default:
        return toString() == 'null' || toString().trim().isEmpty;
    }
  }

  /// Checks if data is null or blank (empty or only contains whitespace).
  bool get isNullOrBlank {
    if (isNull) return true;

    return isBlank;
  }

  S get tr => S.current;
}

extension ObjectExt<T> on T {
  R let<R>(R Function(T it) cb) {
    if (this != null) return cb.call(this);
    return this as R;
  }

  R also<R>(R Function(T it) func) {
    return func(this);
  }
}

extension DartzX<A> on Option<A?> {
  A? get getOrNull => getOrElse(() => null);
}
