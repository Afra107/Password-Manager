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

Future<String> encryptKey(
  String symmetricKeyBase64,
  String keyBase64,
  String ivBase64,
) async {
  // Decode Base64 inputs
  final symmetricKey = base64.decode(symmetricKeyBase64); // 32 bytes
  final aesKey = base64.decode(keyBase64); // 32 bytes
  final iv = base64.decode(ivBase64); // 16 bytes

  // Add PKCS#7 padding manually
  final blockSize = 16;
  final padLength = blockSize - (symmetricKey.length % blockSize);
  final padding = Uint8List(padLength)..fillRange(0, padLength, padLength);
  final paddedSymmetricKey = Uint8List.fromList(symmetricKey + padding);

  // Set up CBC block cipher
  final cipher = CBCBlockCipher(AESEngine())
    ..init(
      true, // true = encryption
      ParametersWithIV(KeyParameter(aesKey), iv),
    );

  // Encrypt block by block
  final output = Uint8List(paddedSymmetricKey.length);
  for (int offset = 0;
      offset < paddedSymmetricKey.length;
      offset += blockSize) {
    cipher.processBlock(
      paddedSymmetricKey,
      offset,
      output,
      offset,
    );
  }

  // Return ciphertext as Base64
  return base64.encode(output);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
