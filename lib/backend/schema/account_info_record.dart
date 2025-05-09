import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountInfoRecord extends FirestoreRecord {
  AccountInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "en_symmetric_key" field.
  String? _enSymmetricKey;
  String get enSymmetricKey => _enSymmetricKey ?? '';
  bool hasEnSymmetricKey() => _enSymmetricKey != null;

  // "init_vector" field.
  String? _initVector;
  String get initVector => _initVector ?? '';
  bool hasInitVector() => _initVector != null;

  // "enable2FA" field.
  bool? _enable2FA;
  bool get enable2FA => _enable2FA ?? false;
  bool hasEnable2FA() => _enable2FA != null;

  // "en_2FAsetupKey" field.
  String? _en2FAsetupKey;
  String get en2FAsetupKey => _en2FAsetupKey ?? '';
  bool hasEn2FAsetupKey() => _en2FAsetupKey != null;

  void _initializeFields() {
    _username = snapshotData['username'] as String?;
    _email = snapshotData['email'] as String?;
    _enSymmetricKey = snapshotData['en_symmetric_key'] as String?;
    _initVector = snapshotData['init_vector'] as String?;
    _enable2FA = snapshotData['enable2FA'] as bool?;
    _en2FAsetupKey = snapshotData['en_2FAsetupKey'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('account_info');

  static Stream<AccountInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccountInfoRecord.fromSnapshot(s));

  static Future<AccountInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccountInfoRecord.fromSnapshot(s));

  static AccountInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccountInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccountInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccountInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccountInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccountInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccountInfoRecordData({
  String? username,
  String? email,
  String? enSymmetricKey,
  String? initVector,
  bool? enable2FA,
  String? en2FAsetupKey,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'username': username,
      'email': email,
      'en_symmetric_key': enSymmetricKey,
      'init_vector': initVector,
      'enable2FA': enable2FA,
      'en_2FAsetupKey': en2FAsetupKey,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccountInfoRecordDocumentEquality implements Equality<AccountInfoRecord> {
  const AccountInfoRecordDocumentEquality();

  @override
  bool equals(AccountInfoRecord? e1, AccountInfoRecord? e2) {
    return e1?.username == e2?.username &&
        e1?.email == e2?.email &&
        e1?.enSymmetricKey == e2?.enSymmetricKey &&
        e1?.initVector == e2?.initVector &&
        e1?.enable2FA == e2?.enable2FA &&
        e1?.en2FAsetupKey == e2?.en2FAsetupKey;
  }

  @override
  int hash(AccountInfoRecord? e) => const ListEquality().hash([
        e?.username,
        e?.email,
        e?.enSymmetricKey,
        e?.initVector,
        e?.enable2FA,
        e?.en2FAsetupKey
      ]);

  @override
  bool isValidKey(Object? o) => o is AccountInfoRecord;
}
