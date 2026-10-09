
abstract interface class Storage {
  Future<void> save(String data);
}

mixin SaveLogger implements Storage {
  Future<void> saveWithLog(String data) async {
    print('Starting save');
    await save(data);
    print('Saved successfully');
  }
}

class LocalStorage with SaveLogger {
  @override
  Future<void> save(String data) async {
    print('Data: $data');
  }
}
