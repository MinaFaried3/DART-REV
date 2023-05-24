void switch1() {
  print("==Before dart 3===");
  int x = 7;

  int y = (() {
    switch (x) {
      case 7:
        return 6;
    }
    return 4;
  }());

  print(y);

  print("\n ======================================= \n");
  print("==after dart 3===");
  y = switch (x) { 7 => 6, _ => 4 };
  //using when
  int z = 5;
  y = switch (x) {
    7 when z > 10 => 6,
    7 when z < 10 => 60,
    _ => 4,
  };
  print(y);
}

void switch2() {
  print("==operators In Switch case element===");
  List<String> names = ['MINA', 'merna'];
  int age = 10;
  switch (names) {
    case ['mina', 'merna']:
      print('all lower case');
    case ['mina' || 'MINA', 'merna' || 'MERNA'] when age < 10:
      print('have upper case and age < 10');
    case ['mina' || 'MINA', 'merna' || 'MERNA'] when age >= 10:
      print('have upper case and age >= 10');
    default:
      print("not valid");
  }

  print("\n ======================================= \n");
}

void main() {
  switch1();
  switch2();
}
