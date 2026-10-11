import 'dart:async';

/// Simulates a legacy callback-based payment SDK.
class LegacyPaymentSDK {
  void pay({
    required double amount,
    required void Function(String transactionId) onSuccess,
    required void Function(Object error) onError,
  }) {
    print('SDK: Starting payment of $amount');

    // Simulate an asynchronous API request.
    Future.delayed(
      const Duration(seconds: 2),
          () {
        if (amount <= 0) {
          onError(
            ArgumentError('Payment amount must be greater than zero'),
          );
          return;
        }

        // Simulate successful payment.
        final transactionId =
            'TXN-${DateTime.now().millisecondsSinceEpoch}';

        onSuccess(transactionId);
      },
    );
  }
}

/// Converts the callback-based SDK into a Future-based API.
class PaymentService {
  final LegacyPaymentSDK sdk;

  PaymentService(this.sdk);

  Future<String> pay(double amount) {
    final completer = Completer<String>();

    try {
      sdk.pay(
        amount: amount,

        onSuccess: (transactionId) {
          print('SDK Callback: Payment successful');

          if (!completer.isCompleted) {
            completer.complete(transactionId);
          }
        },

        onError: (error) {
          print('SDK Callback: Payment failed');

          if (!completer.isCompleted) {
            completer.completeError(error);
          }
        },
      );
    } catch (error, stackTrace) {
      // Handle synchronous exceptions thrown by the SDK.
      if (!completer.isCompleted) {
        completer.completeError(error, stackTrace);
      }
    }

    // Prevent the caller from waiting indefinitely.
    return completer.future.timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        throw TimeoutException(
          'Payment did not complete within 10 seconds',
        );
      },
    );
  }
}

Future<void> main() async {
  final paymentService = PaymentService(
    LegacyPaymentSDK(),
  );

  print('===== Successful Payment =====');

  try {
    final transactionId = await paymentService.pay(100);

    print('Payment completed: $transactionId');
  } catch (error) {
    print('Payment failed: $error');
  }

  print('');

  print('===== Failed Payment =====');

  try {
    final transactionId = await paymentService.pay(-100);

    print('Payment completed: $transactionId');
  } catch (error) {
    print('Payment failed: $error');
  }

  print('');
  print('All payment tests finished.');
}