void main() {
  B ab = A();

  C ac = A();

  if (ab is B && ac is C) {
    print("ab is B && ac is C");
  }

  if (ab is C) {
    print("ab is C");
  }
  if (ac is B) {
    print("ac is B");
  }
}

abstract class B {
  void info();

  void doThis();

  B() {
    print("B()");
  }
}

// abstract class C {
mixin C {
  void info();

  void doThat();

  void trySuper() {
    print("super C");
  }

// The class 'C' can't be used as a mixin because it declares a constructor
// C() {
//   print("C()");
// }
}

class A extends B with C {
  @override
  void info() {
    // TODO: implement info
  }

  @override
  void doThat() {}

  @override
  void doThis() {
    // TODO: implement doThis
  }

  @override
  void trySuper() {
    // TODO: implement trySuper
    super.trySuper();
  }
}
