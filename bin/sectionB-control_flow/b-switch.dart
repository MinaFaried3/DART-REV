void main(List<String> args) {
  describe(1);
  describe(1.1);
  describe('Hello');
  describe(true);
  describe({'key': 'value'});
  describe([1, 2, 3, 4]);

  switch (4) {
    case 4:
      print(4);
      continue four;
    four:
    case 3:
      print(3);
      break;
  }
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('This is an integer');
      break;
    case double:
      print('This is a double');
      break;
    case String:
      print('This is a string');
      break;
    case bool:
      print('This is a boolean');
      break;
    case const (Map<String, String>):
      print('This is a map');
      break;
    default:
      print('This is something else');
      break;
  }
}

void describe2(dynamic value) {
  switch (value.runtimeType) {
    case int:
      print('This is an integer');
      break;
    case double:
      print('This is a double');
      break;
    case String:
      print('This is a string');
      break;
    case bool:
      print('This is a boolean');
      break;
    case const (Map<String, String>):
      print('This is a map');
      break;
    default:
      print('This is something else');
      break;
  }
}
