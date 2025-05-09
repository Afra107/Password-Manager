import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VaultItemsRecord extends FirestoreRecord {
  VaultItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _website = snapshotData['website'] as String?;
    _note = snapshotData['note'] as String?;
    _user = snapshotData['user'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vault_items');

  static Stream<VaultItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VaultItemsRecord.fromSnapshot(s));

  static Future<VaultItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VaultItemsRecord.fromSnapshot(s));

  static VaultItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VaultItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VaultItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VaultItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VaultItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VaultItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVaultItemsRecordData({
  String? email,
  String? password,
  String? website,
  String? note,
  String? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'password': password,
      'website': website,
      'note': note,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class VaultItemsRecordDocumentEquality implements Equality<VaultItemsRecord> {
  const VaultItemsRecordDocumentEquality();

  @override
  bool equals(VaultItemsRecord? e1, VaultItemsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.website == e2?.website &&
        e1?.note == e2?.note &&
        e1?.user == e2?.user;
  }

  @override
  int hash(VaultItemsRecord? e) => const ListEquality()
      .hash([e?.email, e?.password, e?.website, e?.note, e?.user]);

  @override
  bool isValidKey(Object? o) => o is VaultItemsRecord;
}
