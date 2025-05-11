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
import 'dart:typed_data';
import 'package:pointycastle/export.dart';
import 'package:base32/base32.dart';

Future<String> encrypt2FASetupKey(
  String base32SetupKey,
  String keyBase64, // This is the 32-byte AES key (base64-encoded)
  String ivBase64, // This is the 16-byte IV (base64-encoded)
) async {
  // Decode inputs
  final setupKeyBytes =
      base32.decode(base32SetupKey); // Original setup key as raw bytes
  final aesKey = base64.decode(keyBase64); // AES-256 key
  final iv = base64.decode(ivBase64); // 128-bit IV

  // Add PKCS#7 padding manually
  final blockSize = 16;
  final padLength = blockSize - (setupKeyBytes.length % blockSize);
  final padding = Uint8List(padLength)..fillRange(0, padLength, padLength);
  final paddedSetupKey = Uint8List.fromList(setupKeyBytes + padding);

  // Initialize AES-CBC cipher
  final cipher = CBCBlockCipher(AESEngine())
    ..init(
      true, // true = encryption
      ParametersWithIV(KeyParameter(aesKey), iv),
    );

  // Encrypt block-by-block
  final output = Uint8List(paddedSetupKey.length);
  for (int offset = 0; offset < paddedSetupKey.length; offset += blockSize) {
    cipher.processBlock(paddedSetupKey, offset, output, offset);
  }

  // Return Base64 ciphertext
  return base64.encode(output);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
