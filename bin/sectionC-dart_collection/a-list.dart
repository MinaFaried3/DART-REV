import 'dart:collection';

void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];
  print(names[0]);
  print(names[1]);
  print(names[2]);
  print(names[3]);

  print('--------------------');
  for (final name in names) {
    print(name);
  }

  print('--------------------');

  for (final name in names.reversed) {
    print(name);
  }

  print('--------------------');

  if (names.contains('Bar')) {
    print('Bar is in the list');
  }

  print('--------------------');
  var startsWithB = names.where((String name) => name.startsWith('B'));
  for (final name in startsWithB) {
    print(name);
  }

  print('--------------------');

  try {
    print(names[4]);
  } catch (e) {
    print(e);
  }

  print('Sub list--------------------');

  names.sublist(1).forEach(print);
  print('--------------------');
  names.sublist(1, 3).forEach(print);
  print('--------------------');
  names.sublist(2, 3).forEach(print);
  print('--------------------');

  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(60);
  print(ages);
  print('--------------------');

  const names1 = ['Foo', 'Bar', 'Baz', 'Qux'];
  const names2 = ['Foo', 'Bar', 'Baz', 'Qux'];
  if (names1 == names2) {
    print('names1 and names2 are equal');
  } else {
    print('names1 and names2 are not equal');
  }

  print('--------------------');

  //for all iterables
  names.map((str) => str.toUpperCase()).forEach(print);
  names.map((str) => str.length).forEach(print);

  print('fold--------------------');

  final numbers = [1, 2, 3];
  final sum = numbers.fold(
    0,
    (
      int previousValue,
      int thisValue,
    ) =>
        previousValue + thisValue,
  );
  print(sum);

  print('totalLength --------------------');

  final totalLength = names.fold(
    0,
    (
      totalLength,
      str,
    ) =>
        totalLength + str.length,
  );
  print(totalLength);
  print('--------------------');

  final result = names.fold(
    '',
    (
      result,
      str,
    ) {
      print('result =$result');
      print('str =${str.toUpperCase()}');
      return '$result ${str.toUpperCase()}';
    },
  );
  print(result);
  print('--------------------');
  final nums = [
    1,
    2,
    3,
    for (int i = 0; i < 4; i++) i,
    if (4 >= 3) 99999 else 1111
  ];
  print(nums);
  print('--------------------');
  final nums2 = [...nums, nums, 1, 2, 3];
  print(nums2);

  print('--------------------');
  names.add('Jack');
  try {
    final readOnlyList = UnmodifiableListView(names);
    readOnlyList.add('Jill');
  } catch (e) {
    print(e);
  }
}
