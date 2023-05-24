mixin A {
  info() {
    print("hi from mixin A");
  }
}
mixin B {
  info() {
    print("hi from mixin B");
  }
}

//notice this class not mixin
class C {
  info() {
    print("hi from mixin C");
  }
}

class D extends C with B, A {
  //  it ignore the info in c and takes last mixin in declaration which is A
  @override
  info() {
    print("Hi D");
    return super.info();
  }
}

main() {
  B b = D();
  b.info();
  print(b.runtimeType);

  if (b is A) {
    print("b is a");
  }
}
