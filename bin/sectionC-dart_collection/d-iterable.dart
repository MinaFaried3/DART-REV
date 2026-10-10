Iterable<int> numbers() sync* {
  print('Generator started');
  yield 1;
  yield 2;
}


void main(List<String> args) {
  final iterable = Iterable.generate(
    20,
    (i) => getName(i),
  );
  print(iterable);
  for (final name in iterable.take(2)) {
    print(name);
  }

  final values = numbers();

  print('A');

  for (final number in values) {
    print(number);
  }
}

String getName(int i) {
  print('Get name got called');
  return 'John #$i';
}
