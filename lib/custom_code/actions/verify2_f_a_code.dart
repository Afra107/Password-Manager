// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:otp/otp.dart';

Future<bool> verify2FACode(
  String setupKey, // Load from Firestore
  String userCode, // From input field
) async {
  final generatedCode = OTP.generateTOTPCodeString(
    setupKey,
    DateTime.now().millisecondsSinceEpoch,
    interval: 30,
    length: 6,
    algorithm: Algorithm.SHA1,
    isGoogle: true,
  );
  return generatedCode == userCode;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
