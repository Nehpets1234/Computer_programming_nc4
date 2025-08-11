// part1_future.dart

// Function that returns a message after 2 seconds
Future<String> delayedMessage() {
  return Future.delayed(
    Duration(seconds: 2),
    () => "Hello from the future!",
  );
}

// Async main function
Future<void> main() async {
  print("Waiting for the message...");
  String message = await delayedMessage();
  print(message);
}
