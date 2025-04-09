main() {
  B c = C();
  c.info();

  if (c is B) {
    print("c is B");
  }
}

class B {
  int x = 4;
  info() {
    print("interface b");
  }

  B(this.x) {
    print(x);
  }
}

class C implements B {
  // interface dose not override in constructor
  @override
  int x = 7;
  @override
  info() {
    // TODO: implement info
    //  we can't use the super.info()
    // return super.info();
    print("class c");
  }
}
