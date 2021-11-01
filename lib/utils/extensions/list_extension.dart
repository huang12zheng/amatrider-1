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

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = <Id>{};
    var list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id?.call(x) ?? x as Id));
    return list;
  }
}
