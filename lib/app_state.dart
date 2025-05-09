import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _symmetricKey = '';
  String get symmetricKey => _symmetricKey;
  set symmetricKey(String value) {
    _symmetricKey = value;
  }

  String _initVector = '';
  String get initVector => _initVector;
  set initVector(String value) {
    _initVector = value;
  }

  DocumentReference? _accountReference;
  DocumentReference? get accountReference => _accountReference;
  set accountReference(DocumentReference? value) {
    _accountReference = value;
  }
}
