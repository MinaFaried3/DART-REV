void main(List<String> args) {
  List<String?>? names;
  names?.add('Foo');
  names?.add(null);
  print(names);

  final String? first = names?.first;
  print(first ?? 'No first name found');

  names = [];
  names.add('Baz');
  names.add(null);
  print(names);

  try {
    final String? firstName = null;
    print(firstName!);
  } catch (error) {
    print(error);
  }

  final String? firstName = null;
  if (firstName == null) {
    //guard
    print('firstName value is null');
  } else {
    final int length = firstName.length;
    print(length);
  }
}
