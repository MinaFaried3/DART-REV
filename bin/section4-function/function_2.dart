void main(List<String> args) {
  // doSomethingWith(); // invalid code
  doSomethingWith(name: 'Foo');
  // doSomethingWith(name: null); // invalid code

  doSomethingWithAge(age: 42);
  doSomethingWithAge(age: null);

  //change order of argument
  describePerson();
  describePerson(age: 20);
  describePerson(name: 'Foo');
  describePerson(name: 'Foo', age: 20);
  describePerson(age: 20, name: 'Foo');

  describeFully('Foo');
  describeFully('Foo', lastName: null);
  describeFully('Foo', lastName: 'Baz');
}

void doSomethingWith({
  required String name,
}) {
  print('Hello, $name!');
}

void doSomethingWithAge({
  required int? age,
}) {
  if (age != null) {
    final in2Years = age + 2;
    print('In 2 years, you will be $in2Years years old.');
  } else {
    print('You did not tell me your age.');
  }
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello $name, you are $age years old.');
}

void describeFully(
  String firstName, {
  String? lastName = 'Bar',
}) {
  print('Hello $firstName $lastName');
}
