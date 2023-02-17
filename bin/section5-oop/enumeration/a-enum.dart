main() {
  print(Color.values); //[Color.red, Color.blue, Color.black]
  List<Color> list = Color.values;

  Color g = Color.blue;
  info(g); //blue
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
