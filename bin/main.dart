class Person {
  final String name;

  const Person(this.name);

  factory Person.mina() => const Person('');
}

main() {
  const p1 = Person('');
  const p4 = Person('');
  var p3 = Person.mina();
  Object v1;

  final pp = Person('');

  print(p1.hashCode);
  print(pp.hashCode);
  print(p3.hashCode);
  print(identical(p1, p4));
}
