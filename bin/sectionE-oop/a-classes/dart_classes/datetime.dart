main() {
  var now = DateTime.now();
  print(now);
  var now60 = now.add(Duration(days: 60));
  print(now60);
  var date = DateTime.utc(1989, 11, 9);
  print(date);
  var date2 = DateTime.utc(1989, DateTime.november, 9);
  print(date2);
  var date3 = DateTime.parse("1969-07-20 20:18:04Z");
  print(date3);
  print(date.month);
  print(date2.month);
  print(date3.month);
  print(date.weekday);
  print(date2.weekday);
  print(date3.weekday);
  print(DateTime.thursday);
  print(DateTime.sunday);
  print(date3.hour);
  print(date.isAfter(date3));
  print(date.isBefore(date3));
  var dif = date.difference(date3);
  print(dif.inDays);
  print(dif.inHours);
}
