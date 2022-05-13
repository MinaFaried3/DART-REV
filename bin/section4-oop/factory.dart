main() {
  A a = A();
  print(a.runtimeType);
  _A a2 = _A();
  bool check = a is _A;
  print(check);
//  _______________________

  Dog dog1 = Dog('Rex 21');
  print(dog1.name);
  print(dog1.age);

//  -----------------------

  Colors c1 = Colors.black();
  Colors c2 = Colors.black();
  print("identical(c1, c2) ${identical(c1, c2)}");
  Colors c3 = Colors();
  Colors c4 = Colors();
  print("identical(c3, c4) ${identical(c3, c4)}");
}

abstract class A {
  String getString();

  factory A() => _A();
  static A getA() {
    print("from get A");
    return _A();
  }
}

class _A implements A {
  @override
  String getString() => 'Hello World';
}

class Dog {
  final String name;
  final String age;
  factory Dog(String info) {
    var data = info.split(" ");
    return Dog._(data[0], data[1]);
  }
  Dog._(this.name, this.age);
}

class Color {
  final int red;
  final int green;
  final int blue;
  factory Color(String name) {
    if (name == 'white') {
      return Color._white();
    }
    if (name == 'black') {
      return Color._black();
    } else {
      return Color._black();
    }
  }
  Color._white()
      : red = 255,
        blue = 255,
        green = 255;
  Color._black()
      : red = 0,
        blue = 0,
        green = 0;
}

class Colors {
  final int red;
  final int green;
  final int blue;
  static final instance = Colors.black();
  factory Colors() {
    return Colors.black();
  }
  Colors.black()
      : red = 0,
        blue = 0,
        green = 0 {
    print('named constructor');
  }
}
