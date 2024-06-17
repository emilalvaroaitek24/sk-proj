import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameReviewsRecord extends FirestoreRecord {
  GameReviewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "gameReviewTitle" field.
  String? _gameReviewTitle;
  String get gameReviewTitle => _gameReviewTitle ?? '';
  bool hasGameReviewTitle() => _gameReviewTitle != null;

  // "gameReviewDescription" field.
  String? _gameReviewDescription;
  String get gameReviewDescription => _gameReviewDescription ?? '';
  bool hasGameReviewDescription() => _gameReviewDescription != null;

  // "gameReviewUser" field.
  DocumentReference? _gameReviewUser;
  DocumentReference? get gameReviewUser => _gameReviewUser;
  bool hasGameReviewUser() => _gameReviewUser != null;

  // "gameReviewDate" field.
  DateTime? _gameReviewDate;
  DateTime? get gameReviewDate => _gameReviewDate;
  bool hasGameReviewDate() => _gameReviewDate != null;

  // "gameReviewRating" field.
  double? _gameReviewRating;
  double get gameReviewRating => _gameReviewRating ?? 0.0;
  bool hasGameReviewRating() => _gameReviewRating != null;

  void _initializeFields() {
    _gameReviewTitle = snapshotData['gameReviewTitle'] as String?;
    _gameReviewDescription = snapshotData['gameReviewDescription'] as String?;
    _gameReviewUser = snapshotData['gameReviewUser'] as DocumentReference?;
    _gameReviewDate = snapshotData['gameReviewDate'] as DateTime?;
    _gameReviewRating = castToType<double>(snapshotData['gameReviewRating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gameReviews');

  static Stream<GameReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GameReviewsRecord.fromSnapshot(s));

  static Future<GameReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GameReviewsRecord.fromSnapshot(s));

  static GameReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GameReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GameReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GameReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GameReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GameReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGameReviewsRecordData({
  String? gameReviewTitle,
  String? gameReviewDescription,
  DocumentReference? gameReviewUser,
  DateTime? gameReviewDate,
  double? gameReviewRating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'gameReviewTitle': gameReviewTitle,
      'gameReviewDescription': gameReviewDescription,
      'gameReviewUser': gameReviewUser,
      'gameReviewDate': gameReviewDate,
      'gameReviewRating': gameReviewRating,
    }.withoutNulls,
  );

  return firestoreData;
}

class GameReviewsRecordDocumentEquality implements Equality<GameReviewsRecord> {
  const GameReviewsRecordDocumentEquality();

  @override
  bool equals(GameReviewsRecord? e1, GameReviewsRecord? e2) {
    return e1?.gameReviewTitle == e2?.gameReviewTitle &&
        e1?.gameReviewDescription == e2?.gameReviewDescription &&
        e1?.gameReviewUser == e2?.gameReviewUser &&
        e1?.gameReviewDate == e2?.gameReviewDate &&
        e1?.gameReviewRating == e2?.gameReviewRating;
  }

  @override
  int hash(GameReviewsRecord? e) => const ListEquality().hash([
        e?.gameReviewTitle,
        e?.gameReviewDescription,
        e?.gameReviewUser,
        e?.gameReviewDate,
        e?.gameReviewRating
      ]);

  @override
  bool isValidKey(Object? o) => o is GameReviewsRecord;
}
