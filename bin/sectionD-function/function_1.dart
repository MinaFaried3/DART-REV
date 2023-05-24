void main(List<String> args) {
  printWow();
  printHello();

  sayHelloTo();
  sayHelloTo(name: null);
  sayHelloTo(name: 'Foo');

  // mustSayHelloTo(); //error
  mustSayHelloTo('mina');

  describe();
  describe(something: 'Hello, Dart!');
}

void printWow() {
  print('Wow');
}

printHello() {
  print('Hello');
}

void mustSayHelloTo(String name) {
  print('Hello, $name!');
}

//must be null parameter in this case
void sayHelloTo({String? name}) {
  print('Hello, $name!');
}

//optional parameter
void describe({
  String something = 'Hello, world!',
}) {
  print(something);
}
