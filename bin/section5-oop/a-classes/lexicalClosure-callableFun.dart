main() {
  // ignore: prefer_function_declarations_over_variables
  Function fun = () {
    String message = 'mino';
    // ignore: prefer_function_declarations_over_variables
    Function say = (msg) {
      message = msg;
      print("$message is $msg");
    };
    return say;
  };

  Function f = fun();
  f('mino');
//  ______________________________________________________
  var h1 = human();
  h1();
}

class human {
  call() {
    print('hi');
  }
}
