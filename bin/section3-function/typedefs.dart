typedef opr(a, b);
calc(a, b, opr sum) {
  sum(a, b);
}

main() {
  calc(2, 3, add);
}

add(a, b) {
  print("$a+$b =${a + b} ");
}

view() {
  print("hello");
}
