import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _dummyList =
          prefs.getStringList('ff_dummyList')?.map(int.parse).toList() ??
              _dummyList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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

  List<int> _dummyList = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
  List<int> get dummyList => _dummyList;
  set dummyList(List<int> value) {
    _dummyList = value;
    prefs.setStringList(
        'ff_dummyList', value.map((x) => x.toString()).toList());
  }

  void addToDummyList(int value) {
    dummyList.add(value);
    prefs.setStringList(
        'ff_dummyList', _dummyList.map((x) => x.toString()).toList());
  }

  void removeFromDummyList(int value) {
    dummyList.remove(value);
    prefs.setStringList(
        'ff_dummyList', _dummyList.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromDummyList(int index) {
    dummyList.removeAt(index);
    prefs.setStringList(
        'ff_dummyList', _dummyList.map((x) => x.toString()).toList());
  }

  void updateDummyListAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    dummyList[index] = updateFn(_dummyList[index]);
    prefs.setStringList(
        'ff_dummyList', _dummyList.map((x) => x.toString()).toList());
  }

  void insertAtIndexInDummyList(int index, int value) {
    dummyList.insert(index, value);
    prefs.setStringList(
        'ff_dummyList', _dummyList.map((x) => x.toString()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
