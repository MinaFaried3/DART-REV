main() {
  List x = [1, 2, 3, 4, 5, 6];
  print("first => ${x.first}");
  print("last => ${x.last}");
  print("reversed => ${x.reversed}");
  x.add(7);
  print("add(value) => $x");
  x.addAll([8, 9, 10]);
  print("addAll(value) => $x");
  x.insert(3, 10);
  print("insert(index, element) => $x");
  x.insertAll(3, [222222222]);
  print("insertAll(index, element) => $x");
  x.remove(3);
  print("remove(element) => $x");

//  -----------------------------------------
  print('''------------------------------------------''');

  for (int i in x) {
    // notice here print i not x[i]
    print(i);
  }

  //  -----------------------------------------
  print('''------------------------------------------''');

  Map map = {'one': 1, 'two': 2, 'three': 3};
  print("entries => ${map.entries}");
  print("containsKey(key) => ${map.containsKey('two')}");
  print("containsValue(value) => ${map.containsValue(3)}");
  map.remove('one');

  map.forEach((key, value) {
    print("$key is $value");
  });

  Set<int> set = {1, 2, 3, 4, 4, 4, 4, 0};
  print(set);
}
