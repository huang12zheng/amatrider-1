import 'package:amatrider/core/domain/response/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class FieldObject<T> {
  const FieldObject();

  Either<FieldObjectException<String>, T?> get value;

  bool compare(String? other) =>
      identical(getOrNull, other) ||
      const DeepCollectionEquality().equals(getOrNull, other);

  Either<FieldObjectException<dynamic>, Unit> get mapped =>
      value.fold((f) => left(f), (_) => right(unit));

  FieldObjectException<dynamic>? get failure =>
      value.fold((f) => f, (_) => null);

  U isNotNull<U>(
    U Function(FieldObject<T>)? field, {
    required U Function(FieldObject<T>) orElse,
  }) {
    if (getOrNull != null) return field?.call(this) ?? orElse.call(this);
    return orElse.call(this);
  }

  U ensure<U>(
    U? Function(FieldObject<T>)? fiels, {
    required U Function(FieldObject<T>) orElse,
  }) {
    if (getOrNull != null && isValid)
      return fiels?.call(this) ?? orElse.call(this);
    return orElse.call(this);
  }

  bool get isValid => value.isRight();

  T? get getOrCrash => value.fold((f) {
        log.e('Unexpected Failure '
            '(Field Object Failure: [${value.runtimeType}])');
        throw UnExpectedFailure(message: f.message);
      }, id);

  T? get getOrNull => value.fold((_) => null, id);

  T? get getOrEmpty {
    return value.fold((_) {
      if (typesEqual<T, int>() || typesEqual<T, int?>()) return -1 as T;
      if (typesEqual<T, double>() || typesEqual<T, double?>()) return 0.0 as T;
      if (typesEqual<T, num>() || typesEqual<T, num?>()) return -1 as T;
      if (typesEqual<T, String>() || typesEqual<T, String?>()) return '' as T;
      if (typesEqual<T, Iterable<dynamic>>() ||
          typesEqual<T, Iterable<dynamic>?>()) return [] as T;
      return '' as T;
    }, id);
  }

  T? get getOrError {
    return value.fold((f) {
      return 'FieldObject<$T>(${f.message})' as T;
    }, (r) => r as T);
  }

  FieldObject<T> copyWith(T newValue);

  @override
  bool operator ==(o) {
    if (identical(this, o)) return true;
    return o is FieldObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'FieldObject<$T>($getOrEmpty)';
}
