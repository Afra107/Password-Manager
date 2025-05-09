// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:math';

Future<String> generateSymmetricKey() async {
  final secureRandom = Random.secure();
  final key = List<int>.generate(
      32, (_) => secureRandom.nextInt(256)); // 32 bytes = 256 bits
  final base64Key = base64.encode(key);
  return base64Key;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
