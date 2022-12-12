void main(List<String> args) {
  int myAge;
  // print(myAge);  //can't print

  String? name1;
  print(name1);

  // const String? name2; //error must have value
  //can be null
  const String? name = null;
  print(name);
  print(null);

  print("//---------------");
  // int noNull = null; //error

  int? age = 20;
  age = null;
  print(age);
  if (age == null) {
    print('Age is null');
  } else {
    print('Age is not null');
  }

  print("//---------------");
  String? lastName;
  lastName ??= 'Bar';
  print(lastName);

  String? firstName;
  print("length is ${firstName?.length}");

  String? nullName;

  print(firstName ?? 'Foo');
  print(firstName ?? nullName);
  print(firstName ?? nullName ?? 'Bar');
}
