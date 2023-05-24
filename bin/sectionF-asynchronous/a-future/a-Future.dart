main() {
  Future<void> fur = Future(() => print('hi there'));
  Future<void> fur1 = Future(info1);
  var fur2 = Future(info2);

  fur2.then((value) {
    print(value);
  });

  var fur3 = Future.value(50);
  var fur4 = Future.delayed(
    Duration(seconds: 2),
    () => print('bye Future'),
  );
  print('test1 _____________________');
}

void info1() {
  print('hi there 1');
}

double info2() {
  return 3.03;
}
