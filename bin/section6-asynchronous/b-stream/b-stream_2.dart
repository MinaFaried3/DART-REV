void main(List<String> args) async {
  final sum = await getAllAges().reduce(add);
  print('Sum of all numbers is $sum');

  print("=====================================");
  await for (final name in allNames()) {
    print(name);
  }
}

int add(int a, int b) => a + b;

Stream<int> getAllAges() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}

//===================================================

Stream<String> maleNames() async* {
  yield 'John';
  yield 'Peter';
  yield 'Paul';
}

Stream<String> femaleNames() async* {
  yield 'Mary';
  yield 'Jane';
  yield 'Sue';
}

Stream<String> allNames() async* {
  yield* maleNames();
  yield* femaleNames();
}