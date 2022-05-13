main() async {
  Future<void> fur = Future.delayed(
    Duration(seconds: 2),
    () => print('bye Future'),
  );
  int futureInt = await Future.delayed(
    Duration(seconds: 2),
    () => 3,
  );
  print(futureInt);
//  ________________________________________________
  final str = Stream.periodic(Duration(milliseconds: 400), (a) => a);

  await for (var i in str) {
    print(i);
  }
}
