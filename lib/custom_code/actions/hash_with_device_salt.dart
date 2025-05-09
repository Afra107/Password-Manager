// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pointycastle/export.dart';
import 'dart:convert';
import 'dart:typed_data';

Future<String> hashWithDeviceSalt(String password, String deviceSalt) async {
  final saltBytes = utf8.encode(deviceSalt);
  final passwordBytes = utf8.encode(password);

  final pbkdf2 = PBKDF2KeyDerivator(HMac(SHA256Digest(), 64));
  pbkdf2.init(Pbkdf2Parameters(Uint8List.fromList(saltBytes), 1000, 32));

  final hashedKey = pbkdf2.process(Uint8List.fromList(passwordBytes));

  return base64.encode(hashedKey);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
