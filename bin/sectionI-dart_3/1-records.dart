(String, double) getRecords() {
  return ("Mina", 21.8);
}

({String name, double age}) getNamedRecords() {
  return (name: "Mina Faried", age: 25.8);
}

void main() {
  (String, double) info = getRecords();
  print("info = $info");
  print("info.\$1 = ${info.$1}");
  print("info.\$2 = ${info.$2}");

  // info.$1 = "mina faried"; // can't override only have getters not setters
  print("========================================");
  //can override like this
  var (name, age) = getRecords();
  print("(name, age) = ${(name, age)}");
  print("name = $name");
  print("age = $age");

  name = "MIna Faried";
  age = 3.23;
  print(name);
  print(age);

  print("++++++++++++++++++++++++++++++++++++++++++++");
  print("==Named records== ");
  // (String,double) info1 = getNamedRecords();//error
  ({String name, double age}) info1 = getNamedRecords();
  print("info = $info1");
  print("info.name = ${info1.name}");
  print("info.age = ${info1.age}");

  print("++++++++++++++++++++++++++++++++++++++++++++");
  print("==records order==");

  var records =
      (12, greeting: 'hi', num: age, true); //will order to be named in the last
  print("records = $records");
  //notice the order
  print("records.\$1 = ${records.$1}");
  print("records.\$2 = ${records.$2}");
  print("records.greeting = ${records.greeting}");
  print("records.num = ${records.num}");
  print("++++++++++++++++++++++++++++++++++++++++++++");
  print("==Equality==");
  ({int x, int y}) p1 = (x: 1, y: 2);
  ({int x, int y}) p2 = (x: 1, y: 2);
  print("p1 == p2 = ${p1 == p2}");

  ({int g, int z}) p3 = (g: 1, z: 2);
  print("p1 == p3 = ${p1 == p3}");
}
