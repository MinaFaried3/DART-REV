
import 'dart:async';

void main() {
  print('1');

  Future(() => print('6'));

  Future.microtask(() => print('4'));

  Future.delayed(
    Duration.zero,
        () => print('7'),
  );

  scheduleMicrotask(() => print('5'));

  Future.sync(() => print('2'));

  print('3');
}
