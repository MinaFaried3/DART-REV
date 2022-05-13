void add(a, b) {
  print("add fun = ${a + b}");
}

// this is a bad declaration
var a = (a, b) => print("a fun = ${a + b}");

main() {
  add(3, 4);
  a(3, 4);
//  notice
  hof(3, 4, add);
  hof(3, 4, a);
  hof(3, 4, (a, b) => print("hof fun = ${a + b}"));
}

hof(a, b, Function z) {
  z(a, b);
}
