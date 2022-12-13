void main(List<String> args) {
  print(add());
  print(add(1, 5));
  print(add(3));
  print(add(3, 8));

  int sum = add(1, 2);
  print(sum);

  print(minus());
  print(minus(30, 20));
  print(minus(20, 30));

  print(
    performOperation(
      10,
      20,
      add,
    ),
  );
  print(
    performOperation(
      10,
      20,
      minus,
    ),
  );
}

int add([
  int a = 1,
  int b = 2,
]) {
  return a + b;
}

int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
