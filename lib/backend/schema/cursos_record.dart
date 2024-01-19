import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CursosRecord extends FirestoreRecord {
  CursosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeCurso" field.
  String? _nomeCurso;
  String get nomeCurso => _nomeCurso ?? '';
  bool hasNomeCurso() => _nomeCurso != null;

  // "Atividades" field.
  List<String>? _atividades;
  List<String> get atividades => _atividades ?? const [];
  bool hasAtividades() => _atividades != null;

  // "Horarios" field.
  List<String>? _horarios;
  List<String> get horarios => _horarios ?? const [];
  bool hasHorarios() => _horarios != null;

  // "Locais" field.
  List<String>? _locais;
  List<String> get locais => _locais ?? const [];
  bool hasLocais() => _locais != null;

  // "incricoes" field.
  List<bool>? _incricoes;
  List<bool> get incricoes => _incricoes ?? const [];
  bool hasIncricoes() => _incricoes != null;

  void _initializeFields() {
    _nomeCurso = snapshotData['nomeCurso'] as String?;
    _atividades = getDataList(snapshotData['Atividades']);
    _horarios = getDataList(snapshotData['Horarios']);
    _locais = getDataList(snapshotData['Locais']);
    _incricoes = getDataList(snapshotData['incricoes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cursos');

  static Stream<CursosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CursosRecord.fromSnapshot(s));

  static Future<CursosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CursosRecord.fromSnapshot(s));

  static CursosRecord fromSnapshot(DocumentSnapshot snapshot) => CursosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CursosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CursosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CursosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CursosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCursosRecordData({
  String? nomeCurso,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeCurso': nomeCurso,
    }.withoutNulls,
  );

  return firestoreData;
}

class CursosRecordDocumentEquality implements Equality<CursosRecord> {
  const CursosRecordDocumentEquality();

  @override
  bool equals(CursosRecord? e1, CursosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomeCurso == e2?.nomeCurso &&
        listEquality.equals(e1?.atividades, e2?.atividades) &&
        listEquality.equals(e1?.horarios, e2?.horarios) &&
        listEquality.equals(e1?.locais, e2?.locais) &&
        listEquality.equals(e1?.incricoes, e2?.incricoes);
  }

  @override
  int hash(CursosRecord? e) => const ListEquality().hash(
      [e?.nomeCurso, e?.atividades, e?.horarios, e?.locais, e?.incricoes]);

  @override
  bool isValidKey(Object? o) => o is CursosRecord;
}
