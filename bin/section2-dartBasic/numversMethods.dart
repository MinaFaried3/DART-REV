main() {
  int x = -4;
  print("isOdd ${x.isOdd}");
  print("isEven ${x.isEven}");
  print("isFinite ${x.isFinite}");
  print("isInfinite ${x.isInfinite}");
  print("isNaN ${x.isNaN}");
  print("isNegative ${x.isNegative}");
  print("abs() ${x.abs()}");

  double y = -5.6;
  print("round() ${y.round()}");

  // round to smaller number
  print("floor() ${y.floor()}");

  // like floor it difference with negative values
  print("truncate() ${y.truncate()}");

  // round to bigger number
  print("ceil() ${y.ceil()}");
}
