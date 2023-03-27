void main(List<String> args) async {
  print(await getUserName());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());

  print('===============================================================');
  // final length = await calculateLength(await getFullName());
  // print(length);

  final length = await getFullName().then(
        (value) => calculateLength(value),
  );
  print(length);
}

Future<String> getUserName() async => 'John Doe';
//Future.value don't need async
Future<String> getAddress()  => Future.value('123 Main St');

//Future.delayed don't need async
Future<String> getPhoneNumber() => Future.delayed(
      const Duration(seconds: 1),
      () => '555-555-5555',
    );

Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'New York';
}

Future<String> getCountry() async => 'India';

// async keyword doesn't really contribute with anything here
Future<String> getZipCode() async => Future.delayed(
      const Duration(seconds: 1),
      () => '12345',
    );

//=============================================================================================

Future<String> getFullName() {
  print(#getFullName);
  return Future.delayed(
    const Duration(seconds: 1),
        () => 'John Doe',
  );
}

Future<int> calculateLength(String value) {
  print(#calculateLength);
  return Future.delayed(
    const Duration(seconds: 1),
        () => value.length,
  );
}