main() {
  print(Color);
  print(Color.values);
  var list = Color.values;

  Color g = Color.blue;
  info(g);
}

enum Color { red, blue, black }
info(Color s) {
  switch (s) {
    case Color.red:
      print('red');

      break;
    case Color.blue:
      print('blue');
      break;
    case Color.black:
      print('black');
      break;
  }
}
