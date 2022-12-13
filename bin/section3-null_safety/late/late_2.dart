void main(List<String> args) {
  final person = Person();
  print(person.age);
  print(person.description);

  final name = Name();
  print(name.fullName);
  print(name.firstName);
  print(name.lastName);
}

class Person {
  // String description = heavyCalculationOfDescription();//The instance member 'heavyCalculationOfDescription' can't be accessed in an initialize
  late String description = heavyCalculationOfDescription();
  final int age;

  Person({this.age = 18}) {
    print('Constructor is called');
  }

  String heavyCalculationOfDescription() {
    print('Function "heavyCalculationOfDescription" is called');
    return 'Foo Bar';
  }
}

class Name {
  late String fullName = _getFullName();
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String _getFullName() {
    print('_getFullName() is called');
    return 'Foo Bar';
  }
}
