main() {
  List a1 = [1, 2.3, 3.2, 4, 5, 6];
  print("main list is $a1");
  var b1 = a1.where((element) => element <= 4);
  print("fun where => $b1");
  var b2 = a1.firstWhere((element) => element <= 4);
  print("fun firstWhere => $b2");
  var b3 = a1.lastWhere((element) => element <= 4);
  print("fun lastWhere => $b3");
  var b4 = a1.indexWhere((element) => element > 2.3, 2);
  print("fun indexWhere => $b4");
  var b5 = a1.lastIndexWhere((element) => element >= 4);
  print("fun lastIndexWhere => $b5");
  var b6 = a1.whereType<double>();
  print("fun.whereType<double> => $b6");
  var b7 = a1.singleWhere((element) => element % 2 == 0 && element > 4,
      orElse: () => -1);
  print("fun singleWhere => $b7");

//  _____________________________________________________
  List a2 = [1, 2.3, 3.2, 4, 5, 6];
  a2.removeWhere((element) => element % 2 != 0);
  print("remove where list is $a2");
  a2.retainWhere((element) => element % 2 == 0);
  print("retain where list is $a2");
}
