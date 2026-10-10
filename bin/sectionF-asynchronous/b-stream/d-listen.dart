import 'dart:async';

Future<void> saveLocation(int location) async {
  print('START saving $location');

  await Future.delayed(
    const Duration(milliseconds: 100),
  );

  print('END saving $location');
}
Stream<int> locations() async* {
  for (var i = 1; i <= 5; i++) {
    yield i;
  }
}

Future<void> saveLocationSafe(int location) async {
  await Future.delayed(
    const Duration(milliseconds: 100),
  );

  print('Saved $location');
}


Future<void> main() async {
  final controller = StreamController<int>();

  controller.stream.listen((location) async {
    await saveLocation(location);
  });

  controller.add(1);
  controller.add(2);
  controller.add(3);

  await controller.close();
  print('Stream closed*********************');

  await for (final location in locations()) {
    await saveLocationSafe(location);
  }
  print('Stream Safe puse example*********************');
  final safeController = StreamController<int>();
  late final StreamSubscription<int> subscription;

  subscription = safeController.stream.listen((location)async {
    subscription.pause();

    await saveLocation(location).whenComplete(() {
      subscription.resume();
    });
  });

  safeController.add(1);
  safeController.add(2);
  safeController.add(3);

  await safeController.close();
  await subscription.asFuture<void>();
}