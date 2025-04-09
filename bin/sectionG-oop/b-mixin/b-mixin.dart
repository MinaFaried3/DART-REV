mixin A {
  info() {
    print("hi A");
  }

  name();

  age();
}
mixin B {
  info() {
    print("hi B");
  }

  name() {
    print("name is B");
  }

  age();
}

class C {
  info() {
    print("hi C");
  }

  name() {
    print("name is C");
  }

  age() {
    print("age of c = 33");
  }
}

class D extends C with B, A {
  ///will take info() from A if A method is not abstract
  ///will take name() from B if A method is abstract
  ///will take age() from C if A,B method is abstract
}

void main() {
  D d = D();
  d.info();
  d.name();
  d.age();
}
