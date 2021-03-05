import 'dart:convert';

import 'package:crypto/crypto.dart';

extension InqvineCryptoStringExtensions on String {
  /// Converts a [String] to a [List<int>] of bytes with utf8 encoding.
  List<int> get toUtf8 => utf8.encode(this);

  /// Converts a [String] to a [SHA1] hash.
  String get toSha1 => sha1.convert(this.toUtf8).toString();
}
