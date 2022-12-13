import 'dart:io';

main() async {
  final file = File('data.txt');
  print(file.existsSync());
  print(await file.exists());
  if (file.existsSync()) {
    await file.writeAsString('hi');
    file.writeAsStringSync('hi    zdzc');
    print('file is exist');
    // await file.delete();
    final str = file.readAsStringSync();
    print(str);
  } else {
    await file.create();
    print('file is created');
    file.writeAsString('hi');
  }
}
