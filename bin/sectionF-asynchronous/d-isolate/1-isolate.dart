
import 'dart:async';
import 'dart:isolate';

// ---------------------------------
// 1. Worker isolate
// ---------------------------------

void excelWorker(SendPort mainPort) {
  final receivePort = ReceivePort();

  // Give the main isolate a port to send jobs to.
  mainPort.send(receivePort.sendPort);

  receivePort.listen((message) {
    if (message == 'stop') {
      receivePort.close();
      return;
    }

    // Each message is a batch of invoice amounts.
    if (message case (int requestId, List<int> amounts)) {
      var total = 0;

      for (final amount in amounts) {
        total += amount * 2; // Example CPU transformation.
      }

      // Send result with its request ID.
      mainPort.send((requestId, total));
    }
  });
}

// ---------------------------------
// 2. Main isolate
// ---------------------------------

Future<void> main() async {
  final receivePort = ReceivePort();

  final isolate = await Isolate.spawn(
    excelWorker,
    receivePort.sendPort,
  );

  final messages = StreamIterator<dynamic>(receivePort);

  try {
    // Initial handshake: receive worker's SendPort.
    await messages.moveNext();

    final workerPort = messages.current as SendPort;

    // First batch
    workerPort.send((1, <int>[100, 200, 300]));

    await messages.moveNext();
    print('Batch 1: ${messages.current}');

    // Second batch — same worker isolate.
    workerPort.send((2, <int>[400, 500, 600]));

    await messages.moveNext();
    print('Batch 2: ${messages.current}');

    // Third batch — same worker isolate.
    workerPort.send((3, <int>[700, 800, 900]));

    await messages.moveNext();
    print('Batch 3: ${messages.current}');

    // Graceful stop request.
    workerPort.send('stop');
  } finally {
    await messages.cancel();
    receivePort.close();

    // Ensure the isolate does not remain alive.
    isolate.kill(priority: Isolate.immediate);
  }
}
