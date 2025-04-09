// String name; //cant be null
late String name;
void main(List<String> args) {
  try {
    print(name); // must initialize
  } catch (e) {
    print(e);
  }

  name = 'Foo Bar';
  print(name);
}
