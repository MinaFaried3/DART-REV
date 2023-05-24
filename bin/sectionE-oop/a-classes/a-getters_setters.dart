void main(List<String> args) {
  var foo = Person(
    firstName: 'Foo',
    lastName: 'Bar',
  );
  print(foo.fullName);

  foo.lastName = "bye bye";
  print(foo.fullName);
}

class Person {
  String _firstName;
  String _lastName;

  String get fullName => '$_firstName $_lastName';

  set firstName(String value) {
    _firstName = value;
  }
  set lastName(String value) {
    _lastName = value;
  }
  Person({
    required String firstName,
    required String lastName,
  }) : _lastName = lastName, _firstName = firstName;


}

// class Person {
