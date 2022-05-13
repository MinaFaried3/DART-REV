main() {
  int? x = '2'.mino();
  print(x);
}

extension NameParse on String {
  mino() {
    print(this);
    return int.parse(this);
  }
}
