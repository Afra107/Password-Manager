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

Future<String> generateIV() async {
  final secureRandom = Random.secure();
  final iv = List<int>.generate(
      16, (_) => secureRandom.nextInt(256)); // 16 bytes = 128 bits
  final base64IV = base64.encode(iv);
  return base64IV;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
