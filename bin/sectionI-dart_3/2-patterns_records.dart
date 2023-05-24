class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

void main() {
  var list = [1, 2, 3];
  var [a, b, c] = list;
  print("list = $list");
  print('[a, b, c] = $a $b $c');

  print("\n ======================================= \n");
  list = [1, 2, 3, 4, 5, 6, 7];
  // [a, b, c] = list;//error because length of list more than 3
  print("list = $list");

  [a, b, c, ...] = list;
  print('[a, b, c, ...] = $a $b $c');
  print("\n ======================================= \n");

  List d;
  [a, b, c, ...d] = list;
  print('[a, b, c, ...d] = $a $b $c $d');
  print("\n ======================================= \n");

  [_, _, a, b, c, ...d] = list; //ignore 1,2
  print(' [_, _, a, b, c, ...d] = $a $b $c $d');
  print("\n ======================================= \n");
  print("==swapping==");
  a = 1;
  b = 2;
  (a, b) = (b, a);
  print(a);
  print(b);

  print("\n ======================================= \n");

  print("==map==");
  var map = {'first': 'mina', 'second': 'merna'};
  var {'first': a1, 'second': b1} = map;
  print('$a1  $b1'); // 3.
  if (map case {'first': String name, 'second': String name1}) {
    print(true);
    print(name);
    print(name1);
  }

  print("\n ======================================= \n");

  print("==class==");

  Person person = Person("name", 23);
  //will order
  //notice it must be like the name of class
  var Person(:age, :name) = person;
  print(name);
  print(age);

  //if you want to change variables name
  var Person(age: agePerson, name: namePerson) = person;
  print(agePerson);
  print(namePerson);
}
