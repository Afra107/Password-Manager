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

Future<String> decryptKey(
  String encryptedSymmetricKeyBase64,
  String aesKeyBase64,
  String ivBase64,
) async {
  // Decode Base64 inputs
  final encryptedSymmetricKey = base64.decode(encryptedSymmetricKeyBase64);
  final aesKey = base64.decode(aesKeyBase64); // AES Key (256-bit)
  final iv = base64.decode(ivBase64); // Initialization Vector (16 bytes)

  // Set up AES CBC for decryption
  final cipher = CBCBlockCipher(AESEngine())
    ..init(
      false, // false = decryption
      ParametersWithIV(KeyParameter(aesKey), iv),
    );

  // Decrypt the encrypted symmetric key
  final decrypted = Uint8List(encryptedSymmetricKey.length);
  for (int offset = 0; offset < encryptedSymmetricKey.length; offset += 16) {
    cipher.processBlock(
      encryptedSymmetricKey,
      offset,
      decrypted,
      offset,
    );
  }

  // Now, the decrypted data might include padding, so we need to remove the padding
  // PKCS#7 padding (Padding byte is always the same as the number of padding bytes)
  final padLength = decrypted.last; // The last byte is the padding length
  final decryptedSymmetricKey =
      decrypted.sublist(0, decrypted.length - padLength);

  // Return the decrypted symmetric key as Base64 string
  return base64.encode(decryptedSymmetricKey);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
