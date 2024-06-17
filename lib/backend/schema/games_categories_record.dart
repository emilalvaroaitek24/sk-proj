import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class GamesCategoriesRecord extends FirestoreRecord {
  GamesCategoriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "gameCategory" field.
  String? _gameCategory;
  String get gameCategory => _gameCategory ?? '';
  bool hasGameCategory() => _gameCategory != null;

  // "lottery" field.
  DocumentReference? _lottery;
  DocumentReference? get lottery => _lottery;
  bool hasLottery() => _lottery != null;

  void _initializeFields() {
    _gameCategory = snapshotData['gameCategory'] as String?;
    _lottery = snapshotData['lottery'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gamesCategories');

  static Stream<GamesCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GamesCategoriesRecord.fromSnapshot(s));

  static Future<GamesCategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GamesCategoriesRecord.fromSnapshot(s));

  static GamesCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GamesCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GamesCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GamesCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GamesCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GamesCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGamesCategoriesRecordData({
  String? gameCategory,
  DocumentReference? lottery,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'gameCategory': gameCategory,
      'lottery': lottery,
    }.withoutNulls,
  );

  return firestoreData;
}

class GamesCategoriesRecordDocumentEquality
    implements Equality<GamesCategoriesRecord> {
  const GamesCategoriesRecordDocumentEquality();

  @override
  bool equals(GamesCategoriesRecord? e1, GamesCategoriesRecord? e2) {
    return e1?.gameCategory == e2?.gameCategory && e1?.lottery == e2?.lottery;
  }

  @override
  int hash(GamesCategoriesRecord? e) =>
      const ListEquality().hash([e?.gameCategory, e?.lottery]);

  @override
  bool isValidKey(Object? o) => o is GamesCategoriesRecord;
}
