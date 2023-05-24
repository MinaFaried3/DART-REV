void main(List<String> args) async {
  await for (final number in getNumbers()) {
    print(number);
  }

  try {
    await for (final name in getNameJohn()) {
      print(name);
    }
  } catch (e) {
    print(e);
  }

  print("====================");
  //stream inside stream
  await for (final character in getNames().asyncExpand(
        (name) => getCharacters(name),
  )) {
    print(character);
  }

}

Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    yield i;
  }
}

Stream<String> getNameJohn() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  throw Exception('Something went wrong');
  // yield "Doe"; // Dead Code, cannot yield after throwing an exception
}

//=====================================================================
Stream<String> getCharacters(String fromString) async* {
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(Duration(milliseconds: 300));
    yield fromString[i];
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(milliseconds: 200));
  yield 'John';
  await Future.delayed(Duration(milliseconds: 200));
  yield 'Doe';
}

