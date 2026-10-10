import 'dart:async';

Future<void> main() async {
  final controller = StreamController<int>();

  controller.stream.listen(
        (value) => print('Listener 1: $value'),
  );

  // Throws StateError:
  // controller.stream.listen(
  //       (value) => print('Listener 2: $value'),
  // );
  //
  final broadcastController = StreamController<int>.broadcast();
  broadcastController.stream.listen(
        (value) => print('Listener 1: $value'),
  );

  broadcastController.stream.listen(
        (value) => print('Listener 2: $value'),
  );
}