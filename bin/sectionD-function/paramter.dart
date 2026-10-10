
void withOptional(int id, [String? name]) {
  print('$id, $name');
}

void onlyRequired(int id) {
  print(id);
}

void main() {
  // Valid: the function can accept one argument.
  void Function(int) a = withOptional;

  a(10);
  print(a.runtimeType);

  //Invalid: onlyRequired cannot accept a second argument.
  // void Function(int, [String?]) b = onlyRequired;
}
