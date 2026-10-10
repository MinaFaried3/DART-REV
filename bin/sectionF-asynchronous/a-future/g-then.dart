
import 'dart:async';

void main() {
  print('1');

  Future.sync(() {
    print('2');
    return 10;
  }).then((value) {
    print('4: $value');
  });
  Future.delayed(
    Duration.zero,
        () => print('8'),
  );
  scheduleMicrotask(() {
    print('5');
  });
  Future.value(20).then((value) {
    print('6: $value');
  });

  Future<int>.error(
    StateError('Failed'),
  ).catchError((Object error) {
    print('7: $error');
    return -1;
  });

  print('3');
}
