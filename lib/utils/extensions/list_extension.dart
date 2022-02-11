import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:kt_dart/collection.dart';

extension ListX<T> on Iterable<T> {
  String foldWithSeparator([String initialValue = '', String separator = ',']) {
    // Assert T is of type String
    assert(T is String);
    return fold(initialValue, (prev, next) {
      if (last != next) return '$prev$next$separator';
      return '$prev$next';
    });
  }

  T? get firstOrNone {
    try {
      return first;
    } catch (e) {
      return null;
    }
  }

  T get firstOrEmpty {
    try {
      return first;
    } catch (e) {
      return '' as T;
    }
  }
}

enum KtPlus { start, end }

extension KtX2<T> on KtIterable<T> {
  KtList<T> plusAndMapIfAbsent<K>(
    KtList<T> other, {
    required bool Function(T) none,
    required K Function(T) distinctBy,
    KtPlus position = KtPlus.end,
  }) {
    final otherFiltered = other.filter((it) => none(it)).distinctBy(distinctBy);

    return position.when(
      start: () => KtList.from([...otherFiltered.asList(), ...iter.toList()]),
      end: () => plus(otherFiltered),
    );
  }
}

extension IterableX<T extends BaseEntity> on Iterable<T> {
  /// Returns `true` if the collection has no elements or no elements match the given [predicate].
  bool _none(bool Function(T) predicate) {
    if (isEmpty) return true;

    for (final element in this) {
      if (predicate(element)) {
        return false;
      }
    }
    return true;
  }

  List<T> replaceAll(List<T> newValues, {required bool Function(T prev, T current) predicate}) {
    return map((e) {
      T? newValue;

      try {
        newValue = newValues.firstWhere((it) => predicate(e, it));
      } catch (_) {}

      return newValue ?? e;
    }).toList();
  }

  List<T> plusIfAbsent(List<T> other, [KtPlus position = KtPlus.end]) {
    final otherFiltered = other.where((it) => _none((it2) => it.id == it2.id)).toList().unique((p0) => p0.id);
    return position.when(
      start: () => [...otherFiltered, ...toList()],
      end: () => toList()..addAll(otherFiltered),
    );
  }

  List<T> minusIfPresent(List<T> other) => toList()..removeWhere((el) => other.any((it) => it.id == el.id));

  List<T> plusElementIfAbsent(T other, [KtPlus position = KtPlus.end]) {
    if (any((it) => other.id == it.id)) return toList();
    return position.when(
      start: () => [other, ...toList()],
      end: () => toList()..add(other),
    );
  }

  List<T> minusElementIfPresent(T other) {
    if (_none((it) => other.id != it.id)) return toList();
    return toList()..removeWhere((el) => other.id == el.id);
  }
}

extension KtX<T extends BaseEntity> on KtIterable<T> {
  KtList<T> plusIfAbsent(KtList<T> incoming, [KtPlus position = KtPlus.end]) {
    final KtList<T> oldList;

    if (toList().isNotEmpty())
      oldList = replaceAll(incoming, predicate: (p0, p1) => p0.id == p1.id);
    else
      oldList = toList();

    final _filtered = incoming.filter((it) => oldList.none((it2) => it.id == it2.id)).distinctBy((p0) => p0.id);

    return position.when(
      start: () => KtList.from([..._filtered.asList(), ...oldList.asList()]),
      end: () => oldList.plus(_filtered),
    );
  }

  // A Function to replace element in a list if exist element with same id
  KtList<T> replace(T newValue, {required bool Function(T) predicate}) {
    final filtered = filter(predicate).toList();

    for (final e in filtered.iter) {
      final index = indexOf(e);
      toList().asList().removeAt(index);
      toList().asList().insert(index, newValue);
    }

    return toList();
  }

  KtList<T> replaceAll(KtList<T> newValues, {required bool Function(T prev, T current) predicate}) {
    return map((e) {
      final newValue = newValues.find((it) => predicate(e, it));
      return newValue ?? e;
    });
  }

  KtList<T> minusIfPresent(KtList<T> other) => minus(other);

  KtList<T> plusElementIfAbsent(T other, [KtPlus position = KtPlus.end]) {
    if (any((it) => other.id == it.id)) return toList();
    return position.when(
      start: () => KtList.from([other, ...iter.toList()]),
      end: () => plusElement(other),
    );
  }

  KtList<T> minusElementIfPresent(T other) {
    // if (none((it) => other.id != it.id)) return toList();
    final _new = toList().iter.toList()..removeWhere((el) => other.id == el.id);
    return _new.toImmutableList();
  }
}

extension on KtPlus {
  T when<T>({
    required T Function() start,
    required T Function() end,
  }) {
    switch (this) {
      case KtPlus.start:
        return start.call();
      case KtPlus.end:
        return end.call();
    }
  }
}

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = <Id>{};
    var list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id?.call(x) ?? x as Id));
    return list;
  }
}
