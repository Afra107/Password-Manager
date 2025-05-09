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

Future<String> decryptCiphertext(
  String ciphertextBase64,
  String aesKeyBase64,
  String ivBase64,
) async {
  // Decode Base64 inputs
  final ciphertext = base64.decode(ciphertextBase64);
  final aesKey = base64.decode(aesKeyBase64);
  final iv = base64.decode(ivBase64);

  // Set up AES-CBC cipher
  final cipher = CBCBlockCipher(AESEngine())
    ..init(
      false, // false = decryption
      ParametersWithIV(KeyParameter(aesKey), iv),
    );

  final blockSize = 16;
  final output = Uint8List(ciphertext.length);

  // Decrypt block-by-block
  for (int offset = 0; offset < ciphertext.length; offset += blockSize) {
    cipher.processBlock(
      ciphertext,
      offset,
      output,
      offset,
    );
  }

  // Remove PKCS#7 padding
  final padLength = output.last;
  final unpaddedOutput = output.sublist(0, output.length - padLength);

  // Convert bytes to string
  return utf8.decode(unpaddedOutput);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
