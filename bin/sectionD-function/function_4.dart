void main(List<String> args) {
  print(doSomething(10, 20));
  print(doSomething(10, 20)());

  print(add3Nums(10, 20));
  print(add3Nums(10, 20)(10));
}

//int Function() is the return Type
int Function() doSomething(
  int lhs,
  int rhs,
) =>
    () => lhs + rhs;

int Function(int) add3Nums(
  int lhs,
  int rhs,
) =>
    (int x) => lhs + rhs + x;
