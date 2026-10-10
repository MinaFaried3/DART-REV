void main()async {
  try {
   // await
    Future.sync(() {
      throw StateError('Failed');
    });
  } catch (e) {
    print('Caught');
  }

  print('End');
}