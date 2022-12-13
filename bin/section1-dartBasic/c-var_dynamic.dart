void main() {
  var name = "mina";
  // mina = 22; //can't change the data type
  // print(name.foo()); //must find the method
  dynamic age = 22;
  age = "22"; //can change data type
  try {
    print(age.foo()); //will gave an error at runtime
  } catch (e) {
    print(e);
  }
}
