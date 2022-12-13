void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }
  print("---------------");

  // 3 2 1 0
  for (var i = names.length - 1; i >= 0; i--) {
    print(names[i]);
  }
  print("---------------");

  for (var i = 0; i < names.length; i += 2) {
    print(names[i]);
  }
  print("---------------final name in names");
  for (final name in names) {
    print(name);
  }

  print('-----------------name.startsWith(B)');

  for (final name in names) {
    if (name.startsWith('B')) {
      continue;
    }
    print(name);
  }

  print('-----------------');

  for (final name in names) {
    if (name == 'Baz') {
      break;
    }
    print(name);
  }

  print('-----------------');

  for (final name in names.reversed) {
    print(name);
  }

  print('-----------------int value in Iterable.generate(20)');

  for (int value in Iterable.generate(20)) {
    print(value);
  }
}
