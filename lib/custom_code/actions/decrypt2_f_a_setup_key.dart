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

Future<String> decrypt2FASetupKey(
  String encrypted2FAKeyBase64,
  String aesKeyBase64,
  String ivBase64,
) async {
  // Decode Base64 inputs
  final encryptedData = base64.decode(encrypted2FAKeyBase64);
  final aesKey = base64.decode(aesKeyBase64); // 256-bit key (32 bytes)
  final iv = base64.decode(ivBase64); // 128-bit IV (16 bytes)

  // Set up AES-256 in CBC mode
  final cipher = CBCBlockCipher(AESEngine())
    ..init(
      false, // false = decryption
      ParametersWithIV(KeyParameter(aesKey), iv),
    );

  // Decrypt block-by-block
  final decrypted = Uint8List(encryptedData.length);
  for (int offset = 0; offset < encryptedData.length; offset += 16) {
    cipher.processBlock(encryptedData, offset, decrypted, offset);
  }

  // Remove PKCS#7 padding
  final padLength = decrypted.last;
  final unpadded = decrypted.sublist(0, decrypted.length - padLength);

  // Convert back to Base32 (the original format of setup key)
  return base32.encode(unpadded);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
