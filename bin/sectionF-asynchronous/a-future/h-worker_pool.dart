
import 'dart:async';
import 'dart:math';

Future<List<R>> parallelMapLimited<T, R>(
    List<T> items,
    Future<R> Function(T item) operation, {
      int maxConcurrent = 5,
    }) async {
  if (maxConcurrent < 1) {
    throw ArgumentError.value(maxConcurrent);
  }

  final results = List<R?>.filled(items.length, null);
  var nextIndex = 0;

  Future<void> worker() async {
    while (nextIndex < items.length) {
      // Claim index before awaiting.
      final index = nextIndex++;

      results[index] = await operation(items[index]);
    }
  }

  await Future.wait([
    for (var i = 0;
    i < min(maxConcurrent, items.length);
    i++)
      worker(),
  ]);

  return [
    for (final result in results) result as R,
  ];
}
