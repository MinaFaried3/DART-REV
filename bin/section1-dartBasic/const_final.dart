import 'dart:io';

void main() {
  const name = 'Foo';
  print(name);

  // invalid code can't override
  // name = 'Hello';

  const String name1 = "doo";

  //--------------------------------
  final age = 200;
  print(age);

  // this is also invalid
  // age = 30;

  final ages = [1, 2, 3];
  ages.removeAt(0);
  ages.add(5);
  print(ages);

  // runtime error
  // const ages1 = [1, 2, 3];
  // ages1.removeAt(0);
  // print(ages1);

  //---------------------------------------------------------
  //we can do this assign const to final
  final age2 = 10;

  /// constants cannot be assigned a non-constant value
  /// so this is an invalid operation
  // const age3 = age;

  const int age4 = 4;
  final age5 = age4;

  const age6 = 12;
  const age7 = 12;
  print(age6.hashCode == age7.hashCode);

  // const input = stdin.readLineSync();//error
  final input = stdin.readLineSync();
}
