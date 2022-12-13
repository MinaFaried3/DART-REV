import 'dart:io';

main() {
  print(Platform.executable);
  print(Platform.numberOfProcessors);
  print(Platform.operatingSystem);
  print(Platform.operatingSystemVersion);
  print(Platform.script);
  print(Platform.version);
//  ____________________________________

  print(Platform.isWindows);
  print(Platform.environment.runtimeType);
  var m = Platform.environment;
  m.forEach((key, value) {
    print("$key : $value");
  });
}
