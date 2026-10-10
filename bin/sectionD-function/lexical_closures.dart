
Function makeCounter() {
  int count = 0;

  return () {
    count++;
    print(count);
  };
}

void main() {
  final counter = makeCounter();
  //
  counter(); // 1
  counter(); // 2
  counter(); // 3
  print('==========================================;');
  int count = 10;

  final printCount = () {
    print(count);
  };

  count = 50;

  printCount(); // 50
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

  while (i < 3) {
    callbacks.add(() => print(i));
    i++;
  }

  for (final callback in callbacks) {
    callback();
  }
  print('==========================================;');
}
