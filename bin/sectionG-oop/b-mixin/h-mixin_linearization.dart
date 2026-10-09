
class Base {
  void execute() => print('Base');
}

mixin A on Base {
  @override
  void execute() {
    print('A before');
    super.execute();
    print('A after');
  }
}

mixin B on Base {
  @override
  void execute() {
    print('B before');
    super.execute();
    print('B after');
  }
}

class Service extends Base with A, B {}

void main() {
  Service().execute();
}
