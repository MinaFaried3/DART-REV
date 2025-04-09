void main() {
  // binary infix operators
  int age = 50;
  print(age + 20);
  print(age - 20);
  print(age * 20);
  print(age / 20);
  print(age ~/ 20);
  print(age % 20); // remainder
  print(age == 20);
  print(age != 20);

  print(age > 20); // true
  print(age < 20); // false
  print(age >= 20); // true
  print(age <= 20); // false

  // bitwise infix operators
  print(age & 20); // bitwise AND 1 & 1 = 1, 0 & 1 = 0, 1 & 0 = 0, 0 & 0 = 0
  print(age | 20); // bitwise OR 1 | 1 = 1, 0 | 1 = 1, 1 | 0 = 1, 0 | 0 = 0
  print(age ^ 20); // bitwise XOR 1 ^ 1 = 0, 0 ^ 1 = 1, 1 ^ 0 = 1, 0 ^ 0 = 0

  print(age << 20); // bitwise left shift
  print(age >> 20); // bitwise right shift
  print(age << 2);

  /// 0110 0011
  /// shift left by 2
  /// 1000 1100
  print("//----------------------------");
  //-------------------------------------------------------
  /// 4 types of operators
  /// unary prefix, unary postfix, binary infix, compound assignment
  age = 30;
  age = age--;
  print(age);
  age++;
  print(age);
  print(age--);
  print(!true);
  print(!false);
  print(++age);
  print("//----------------------------");

  /// unary bitwise complement prefix operator
  print(~1);

  /// (0000 0000) (0000 0000) (0000 0000) (0000 0001)
  /// (1111 1111) (1111 1111) (1111 1111) (1111 1110)
  ///
  print(-age);
  print(-(-age));

  print("//----------------------------");
  // print('Hello' + 2);
  var myAge = 20;
  print(myAge = 30); // myAge = 30
  print(myAge);
  print(myAge ~/= 2); // 15
  print(myAge *= 2); // 30
  print(myAge += 4); // 34
  print(myAge &= 2); // 2
  print(myAge |= 4); // 6
  print(myAge ^= 10); // 12
  print(myAge -= 10); // 2
}
