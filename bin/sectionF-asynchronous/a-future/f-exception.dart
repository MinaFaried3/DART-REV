
Future<void> loadUser() async {
  throw Exception('Network failed');
}
Future<void> createTask() {
  throw Exception('Synchronous failure');
}
Future<int> calculate(bool shouldFail) {
  return Future.sync(() {
    if (shouldFail) {
      throw StateError('Calculation failed');
    }

    return 42;
  });
}
void main() async{
  try {
  // // await
  // loadUser(); // Not awaited

  } catch (error) {
    print('Caught: $error');
  }

  print('Finished');
  loadUser().catchError((Object error) {
    print('catchError: $error');
  });


  try {
    //Caught because the method not async
    createTask();
  } catch (error) {
    print('Caught synchronously');
  }

  print('Start');
  try {

    calculate(true);//error
  } catch (error) {
    print('Caught: $error');
  }
  print('End');
}
