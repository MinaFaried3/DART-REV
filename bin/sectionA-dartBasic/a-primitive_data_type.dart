void main() {
  //int and double;
  int num = 3;
  // num = 3.0;//can,t assign to double
  print(num);

  //------------------------------
  double num2 = 3; //can assign

  //--------------------------------
  const int someInteger = 10;
  print(someInteger);
  const double someDouble = 10.5;
  print(someDouble);
  const String someString = 'Hello';
  print(someString);
  const bool someBoolean = true;
  print(!someBoolean);
  const List<int> someList = [1, 2, 3];
  print(someList);
  const Map<String, String> someMap = {'foo': 'bar'};
  print(someMap['foo']);
  const Set<int> someSet = {1, 2, 3};
  print(someSet.length);
  const dynamic someNull = null;
  print(someNull);
  const Symbol someSymbol = #someString;
  print(someSymbol);
}
