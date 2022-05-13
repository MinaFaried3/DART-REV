main() {
  var fo = A<String>();
  fo.foo = "10";
  print(fo.foo);
}

class A<T> {
  late T foo;
}
