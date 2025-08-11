// part2_error_handling.dart

// Function that simulates an error after 2 seconds
Future<String> simulateError() {
  return Future.delayed(
    Duration(seconds: 2),
    () {
      throw Exception("Something went wrong!");
    },
  );
}

Future<void> main() async {
  print("Starting error simulation...");

  try {
    String result = await simulateError();
    print(result); // This will not run if an error is thrown
  } catch (e) {
    print("Caught an error: $e");
  }

  print("Program continues after handling the error.");
}
