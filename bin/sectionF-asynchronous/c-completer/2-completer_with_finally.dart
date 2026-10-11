
import 'dart:async';

class SocketRequestManager {
  final Map<String, Completer<String>> _pending = {};

  Future<String> sendRequest(String requestId) async {
    if (_pending.containsKey(requestId)) {
      throw StateError('Duplicate request ID: $requestId');
    }

    final completer = Completer<String>();

    _pending[requestId] = completer;

    print('1. Request created: $requestId');
    print('2. Pending requests: ${_pending.length}');

    try {
      print('3. Waiting for server response...');

      // Suspends execution until the response
      // arrives or the timeout expires.
      return await completer.future.timeout(
        const Duration(seconds: 10),
      );
    } on TimeoutException {
      print('Timeout: Server did not respond');
      rethrow;
    } finally {
      print('6. Removing request: $requestId');

      _pending.remove(requestId);

      print('7. Pending requests: ${_pending.length}');
    }
  }

  void onServerResponse(
      String requestId,
      String response,
      ) {
    print('4. Server response received: $response');

    final completer = _pending[requestId];

    if (completer != null && !completer.isCompleted) {
      completer.complete(response);

      print('5. Completer completed successfully');
    } else {
      print('No pending request found: $requestId');
    }
  }
}

Future<void> main() async {
  final manager = SocketRequestManager();

  print('--- START ---');

  // Start the request without awaiting it yet.
  final requestFuture = manager.sendRequest('trip_123');

  // Simulate a server response after 2 seconds.
  Future.delayed(const Duration(seconds: 2), () {
    manager.onServerResponse(
      'trip_123',
      'Trip accepted',
    );
  });

  try {
    // Wait until the Future completes.
    final response = await requestFuture;

    print('8. Final response: $response');
  } catch (error) {
    print('Request failed: $error');
  }

  print('--- END ---');
}
