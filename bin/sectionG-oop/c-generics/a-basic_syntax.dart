void main(List<String> args) {
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue);

  final int intValue = eitherIntOrDouble();
  print(intValue);

  ///error
  // final someValue = eitherIntOrDouble();
  // print(someValue);

  final someValue1 = eitherIntOrDouble<double>();
  print(someValue1);

  ///error
  // final someValue2 = eitherIntOrDouble<num>();
  // print(someValue2);

  final num someValue3 = eitherIntOrDouble<int>();
  print(someValue3);
}

// to ensure that must be extends num
T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.1 as T;
    default:
      throw Exception('Not supported');
    // return '2' as T;
  }
}
