Future<void> waitForAsyncCondition(bool Function() condition, {Duration timeout = const Duration(seconds: 4)}) async {
  double timeTaken = 0;
  while (!condition()) {
    if (timeTaken >= timeout.inMilliseconds) {
      throw Exception('Timeout hit, throwing...');
    }

    timeTaken += 25;
    await Future<void>.delayed(const Duration(milliseconds: 25));
  }
}
