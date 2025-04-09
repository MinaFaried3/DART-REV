void main(List<String> args) {
  ///? where methods
  //list
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  var startsWithB = names.where((String name) => name.startsWith('B'));
  for (final name in startsWithB) {
    print(name);
  }

  print('--------------------');

  ///? map method
  //list
  names.map((str) => str.toUpperCase()).forEach(print);
  names.map((str) => str.length).forEach(print);

  ///?fold methods for list , set only
  //list

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

  ///? loop and conditions inside
  //list
  print('--------------------');
  final nums = [
    1,
    2,
    3,
    for (int i = 0; i < 4; i++) i,
    if (4 >= 3) 99999 else 1111
  ];
  print(nums);

  ///?spread operator
  //list
  final nums2 = [...nums, nums, 1, 2, 3];
  print(nums2);

  //SEt
  final names2 = ['Foo', 'Bar', 'Baz', 'Foo'];
  final uniqueNames = {...names2};
  print(names2);
  print(uniqueNames);
  print('---------------------');


  ///?add , addall
}
