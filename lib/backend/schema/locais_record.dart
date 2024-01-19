import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocaisRecord extends FirestoreRecord {
  LocaisRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CantinaCentral" field.
  LatLng? _cantinaCentral;
  LatLng? get cantinaCentral => _cantinaCentral;
  bool hasCantinaCentral() => _cantinaCentral != null;

  // "CantinaDaBio" field.
  LatLng? _cantinaDaBio;
  LatLng? get cantinaDaBio => _cantinaDaBio;
  bool hasCantinaDaBio() => _cantinaDaBio != null;

  void _initializeFields() {
    _cantinaCentral = snapshotData['CantinaCentral'] as LatLng?;
    _cantinaDaBio = snapshotData['CantinaDaBio'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Locais');

  static Stream<LocaisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocaisRecord.fromSnapshot(s));

  static Future<LocaisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocaisRecord.fromSnapshot(s));

  static LocaisRecord fromSnapshot(DocumentSnapshot snapshot) => LocaisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocaisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocaisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocaisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocaisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocaisRecordData({
  LatLng? cantinaCentral,
  LatLng? cantinaDaBio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CantinaCentral': cantinaCentral,
      'CantinaDaBio': cantinaDaBio,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocaisRecordDocumentEquality implements Equality<LocaisRecord> {
  const LocaisRecordDocumentEquality();

  @override
  bool equals(LocaisRecord? e1, LocaisRecord? e2) {
    return e1?.cantinaCentral == e2?.cantinaCentral &&
        e1?.cantinaDaBio == e2?.cantinaDaBio;
  }

  @override
  int hash(LocaisRecord? e) =>
      const ListEquality().hash([e?.cantinaCentral, e?.cantinaDaBio]);

  @override
  bool isValidKey(Object? o) => o is LocaisRecord;
}
