main() {
  Iterable l = [4, 5, 6, 7, 8, 9];
  List<List<int>> li = [
    [1, 2, 3],
    [5, 6, 7]
  ];
  Set s = {1, 2, 3, 4, 5, 6, 7, 8, 2.4};
  Map m = {2: 'a', 3: 'b', 4: 'c'};
  String atr = "mina faried";
  // for (var i in s) {
  //   print(i);
  // }

  var list1 = [
    2,
    3,
    for (int i = 0; i <= 4; i++) ...l,
    if (li.length >= 2) ...li[0]
  ];
  print(list1);
  bool a = list1.any((element) => element >= 6);
  print(a);
  List list2 = l.map((e) => ++e).toList();
  print(list2);
}
