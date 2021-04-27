extension InqvineBluetoothIntExtensions on int {
  /// Using an RSSI signal strength integer.
  /// Returns a double value between 0 and 1 for animations.
  double get rssiToSignalStrength {
    if (this >= 0.0) {
      return 0;
    }

    //* Clamp between -90 and -50 (these represent max values)
    //* add 50 to normalise (-50 or greater is considered perfect signal strength)
    //* /40 to give a value between 0.0 and 1.0
    //* multiply by -1 to make the value positive
    return 1 + ((50 + this.clamp(-90, -50)) / 40);
  }
}
