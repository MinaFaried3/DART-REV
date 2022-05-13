import 'dart:io';

main() {
  tryLoop:
  for (int i = 0; i < 10; i--) {
    try {
      print('your birth year:');
      String birthYear = stdin.readLineSync()!;
      int age = DateTime.now().year - int.parse(birthYear);
      print('your age is $age');

      //notice when the code cannot throw any exception the infinite loop wile be broken else wile try again until it broken
      break tryLoop;
      //  --------------------------------------
    } on FormatException {
      print('invalid input ,Please try again');
    }
  }
}
