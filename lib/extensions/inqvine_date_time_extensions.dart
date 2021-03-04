extension InqvineDateTimeExtensions on DateTime {
  int get asSecondsEpoch => millisecondsSinceEpoch * 1000;
}
