void main() {
  b bo = b('hi');
  bo.info();
}

class a {
  info() {
    print("a");
  }

  info2(String x) {
    print(x);
  }

  a(messege) {
    print('hello from a $messege');
  }
  //named constructor
  a.fom(message) {}
}

class b extends a {
  @override
  info() {
    print("b");
    return super.info();
  }

  @override
  info2(X) {
    print(X);
    return super.info2(X);
  }

  b(messege) : super("hello a") {
    print('hello from b $messege');
  }

  b.fom() : super(4) {}
}
