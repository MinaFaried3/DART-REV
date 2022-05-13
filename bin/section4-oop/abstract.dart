main() {
  var c = C();
  c.info();
}

class B {
  int x = 4;
  info() {
    print("interface b");
  }

  B(this.x) {
    print(this.x);
  }
}

class C implements B {
  // interface dose not override in constructor
  int x = 7;
  @override
  info() {
    // TODO: implement info
    //  we can't use the super.info()
    // return super.info();
  }
}
