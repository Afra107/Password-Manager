// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math' as math;

Future<String> generatePassword(
  double length,
  bool includeDigits,
  bool includeSymbols,
) async {
  const String _alphabets =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String _digits = '0123456789';
  const String _symbols = '!@#\$%^&*()-_=+[]{}|;:,.<>?';

  // Build the overall pool
  String charPool = _alphabets;
  if (includeDigits) charPool += _digits;
  if (includeSymbols) charPool += _symbols;

  // Clamp the length and convert to int
  final int pwdLength = length.clamp(1.0, 40.0).toInt();

  final math.Random rnd = math.Random();

  // 1) Guarantee at least one digit if requested
  // 2) Guarantee at least one symbol if requested
  List<String> chars = [];
  if (includeDigits) {
    chars.add(_digits[rnd.nextInt(_digits.length)]);
  }
  if (includeSymbols) {
    chars.add(_symbols[rnd.nextInt(_symbols.length)]);
  }

  // 3) Fill the rest from the full pool
  for (int i = chars.length; i < pwdLength; i++) {
    chars.add(charPool[rnd.nextInt(charPool.length)]);
  }

  // 4) Shuffle to avoid predictable placement
  chars.shuffle(rnd);

  return chars.join();
}
