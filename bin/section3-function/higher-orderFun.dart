void add(a, b) {
  print("add fun = ${a + b}");
}

// this is a bad declaration
var a = (a, b) => print("a fun = ${a + b}");

void main() {
  add(3, 4);
  a(3, 4);
//  notice
  hof(3, 4, add);
  hof(3, 4, a);
  hof(3, 4, (a, b) => print("hof fun = ${a + b}"));

  print("//------------------------");
  print(getFullName(null, null));
  print(getFullName('John', null));
  print(getFullName(null, 'Doe'));
  print(getFullName('John', 'Doe'));
}

hof(a, b, Function z) {
  z(a, b);
}

String getFullName(
  String? firstName,
  String? lastName,
) =>
    withAll(
      [firstName, lastName],
      (names) => names.join(' '),
    ) ??
    'Empty';

T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());
