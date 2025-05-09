import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String generateTotpUri(
  String email,
  String secretKey,
) {
  final appName = 'Password Manager';

  final encodedAppName = Uri.encodeComponent(appName);
  final encodedEmail = Uri.encodeComponent(email);
  final encodedSecret = Uri.encodeComponent(secretKey);

  final uri =
      'otpauth://totp/$encodedAppName:$encodedEmail?secret=$encodedSecret&issuer=$encodedAppName';

  return uri;
}
