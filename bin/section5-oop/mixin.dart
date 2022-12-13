mixin A {
  info() {
    print("hiA");
  }
}
mixin B {
  info() {
    print("hiB");
  }
}

class C {
  info() {
    print("hiC");
  }
}

class D extends C with B, A {
//  it ignore the info in c and takes last mixin
  @override
  info() {
    print("Hi D");
    return super.info();
  }
}

main() {
//   var d = D();
//   d.info();
//   //_____________________________________
//   var d1 = D1();
//   d1.info();
// //  _________________
  B b = D();
  b.info();
  print(b.runtimeType);

  if (b is A) {
    print("b is a");
  }
}

mixin A1 {
  info();
}
mixin B1 {
  info() {
    print("hiB1");
  }
}

class C1 {
  info() {
    print("hiC1");
  }
}

class D1 extends C1 with B1, A1 {
//  when the mixin methods became abstract takes from c1
//  when the first mixin method not abstract takes it

}
