void main(List<String> args) {
  print('Before');
  late String name = provideName();
  print('After');
  print(name);

  //---------------------------------------
  print("//---------------");
  late final myValue = 10;
  print(myValue);

  late final yourValue = getValue();
  print('We are here'); //printed first
  print(yourValue);

  // expectations:
  // getValue called
  // We are here
  // 10
}

int getValue() {
  print('getValue called');
  return 10;
}

String provideName() {
  print('Function is called');
  return 'Foo Bar';
}
