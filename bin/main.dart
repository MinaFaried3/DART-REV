
Function makeCounter() {
  int count = 0;

  return () {
    count++;
    print(count);
  };
}

void main() {
  final counter = makeCounter();
  counter();
  counter();
  counter();
  counter();

  print('==========================================;');
  int count = 10;

  final printCount = () {
    print(count);
  };

  count = 50;

  printCount();
  print('==========================================;');
  List<void Function()> callbacks = <void Function()>[];

  for (var i = 0; i < 3; i++) {
    callbacks.add(() => print(i));
  }

  for (final callback in callbacks) {
    callback();
  }
  print('==========================================;');
  callbacks = <void Function()>[];

  int i = 0;

  for ( i = 0; i < 3; i++) {
    callbacks.add(() => print(i));
  }

  for (final callback in callbacks) {
    callback();
  }
  print('==========================================;');
}
