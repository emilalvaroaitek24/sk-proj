import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeagamesRecord extends FirestoreRecord {
  SeagamesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "gameTitle" field.
  String? _gameTitle;
  String get gameTitle => _gameTitle ?? '';
  bool hasGameTitle() => _gameTitle != null;

  // "gameDescription" field.
  String? _gameDescription;
  String get gameDescription => _gameDescription ?? '';
  bool hasGameDescription() => _gameDescription != null;

  // "gameGenre" field.
  String? _gameGenre;
  String get gameGenre => _gameGenre ?? '';
  bool hasGameGenre() => _gameGenre != null;

  // "gameReleaseDate" field.
  DateTime? _gameReleaseDate;
  DateTime? get gameReleaseDate => _gameReleaseDate;
  bool hasGameReleaseDate() => _gameReleaseDate != null;

  // "gameRating" field.
  String? _gameRating;
  String get gameRating => _gameRating ?? '';
  bool hasGameRating() => _gameRating != null;

  // "gamePrice" field.
  String? _gamePrice;
  String get gamePrice => _gamePrice ?? '';
  bool hasGamePrice() => _gamePrice != null;

  // "gameImgUrl" field.
  String? _gameImgUrl;
  String get gameImgUrl => _gameImgUrl ?? '';
  bool hasGameImgUrl() => _gameImgUrl != null;

  // "gameIsFree" field.
  bool? _gameIsFree;
  bool get gameIsFree => _gameIsFree ?? false;
  bool hasGameIsFree() => _gameIsFree != null;

  // "gamePlatform" field.
  String? _gamePlatform;
  String get gamePlatform => _gamePlatform ?? '';
  bool hasGamePlatform() => _gamePlatform != null;

  // "gameVideoUrl" field.
  String? _gameVideoUrl;
  String get gameVideoUrl => _gameVideoUrl ?? '';
  bool hasGameVideoUrl() => _gameVideoUrl != null;

  // "gamePublisherWebsite" field.
  String? _gamePublisherWebsite;
  String get gamePublisherWebsite => _gamePublisherWebsite ?? '';
  bool hasGamePublisherWebsite() => _gamePublisherWebsite != null;

  // "gameCategory" field.
  DocumentReference? _gameCategory;
  DocumentReference? get gameCategory => _gameCategory;
  bool hasGameCategory() => _gameCategory != null;

  // "gameRatingCount" field.
  int? _gameRatingCount;
  int get gameRatingCount => _gameRatingCount ?? 0;
  bool hasGameRatingCount() => _gameRatingCount != null;

  // "gameRatingAverage" field.
  double? _gameRatingAverage;
  double get gameRatingAverage => _gameRatingAverage ?? 0.0;
  bool hasGameRatingAverage() => _gameRatingAverage != null;

  // "gameUserCount" field.
  int? _gameUserCount;
  int get gameUserCount => _gameUserCount ?? 0;
  bool hasGameUserCount() => _gameUserCount != null;

  // "gameReviews" field.
  List<DocumentReference>? _gameReviews;
  List<DocumentReference> get gameReviews => _gameReviews ?? const [];
  bool hasGameReviews() => _gameReviews != null;

  void _initializeFields() {
    _gameTitle = snapshotData['gameTitle'] as String?;
    _gameDescription = snapshotData['gameDescription'] as String?;
    _gameGenre = snapshotData['gameGenre'] as String?;
    _gameReleaseDate = snapshotData['gameReleaseDate'] as DateTime?;
    _gameRating = snapshotData['gameRating'] as String?;
    _gamePrice = snapshotData['gamePrice'] as String?;
    _gameImgUrl = snapshotData['gameImgUrl'] as String?;
    _gameIsFree = snapshotData['gameIsFree'] as bool?;
    _gamePlatform = snapshotData['gamePlatform'] as String?;
    _gameVideoUrl = snapshotData['gameVideoUrl'] as String?;
    _gamePublisherWebsite = snapshotData['gamePublisherWebsite'] as String?;
    _gameCategory = snapshotData['gameCategory'] as DocumentReference?;
    _gameRatingCount = castToType<int>(snapshotData['gameRatingCount']);
    _gameRatingAverage = castToType<double>(snapshotData['gameRatingAverage']);
    _gameUserCount = castToType<int>(snapshotData['gameUserCount']);
    _gameReviews = getDataList(snapshotData['gameReviews']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('seagames');

  static Stream<SeagamesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeagamesRecord.fromSnapshot(s));

  static Future<SeagamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SeagamesRecord.fromSnapshot(s));

  static SeagamesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SeagamesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeagamesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeagamesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeagamesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeagamesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeagamesRecordData({
  String? gameTitle,
  String? gameDescription,
  String? gameGenre,
  DateTime? gameReleaseDate,
  String? gameRating,
  String? gamePrice,
  String? gameImgUrl,
  bool? gameIsFree,
  String? gamePlatform,
  String? gameVideoUrl,
  String? gamePublisherWebsite,
  DocumentReference? gameCategory,
  int? gameRatingCount,
  double? gameRatingAverage,
  int? gameUserCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'gameTitle': gameTitle,
      'gameDescription': gameDescription,
      'gameGenre': gameGenre,
      'gameReleaseDate': gameReleaseDate,
      'gameRating': gameRating,
      'gamePrice': gamePrice,
      'gameImgUrl': gameImgUrl,
      'gameIsFree': gameIsFree,
      'gamePlatform': gamePlatform,
      'gameVideoUrl': gameVideoUrl,
      'gamePublisherWebsite': gamePublisherWebsite,
      'gameCategory': gameCategory,
      'gameRatingCount': gameRatingCount,
      'gameRatingAverage': gameRatingAverage,
      'gameUserCount': gameUserCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class SeagamesRecordDocumentEquality implements Equality<SeagamesRecord> {
  const SeagamesRecordDocumentEquality();

  @override
  bool equals(SeagamesRecord? e1, SeagamesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.gameTitle == e2?.gameTitle &&
        e1?.gameDescription == e2?.gameDescription &&
        e1?.gameGenre == e2?.gameGenre &&
        e1?.gameReleaseDate == e2?.gameReleaseDate &&
        e1?.gameRating == e2?.gameRating &&
        e1?.gamePrice == e2?.gamePrice &&
        e1?.gameImgUrl == e2?.gameImgUrl &&
        e1?.gameIsFree == e2?.gameIsFree &&
        e1?.gamePlatform == e2?.gamePlatform &&
        e1?.gameVideoUrl == e2?.gameVideoUrl &&
        e1?.gamePublisherWebsite == e2?.gamePublisherWebsite &&
        e1?.gameCategory == e2?.gameCategory &&
        e1?.gameRatingCount == e2?.gameRatingCount &&
        e1?.gameRatingAverage == e2?.gameRatingAverage &&
        e1?.gameUserCount == e2?.gameUserCount &&
        listEquality.equals(e1?.gameReviews, e2?.gameReviews);
  }

  @override
  int hash(SeagamesRecord? e) => const ListEquality().hash([
        e?.gameTitle,
        e?.gameDescription,
        e?.gameGenre,
        e?.gameReleaseDate,
        e?.gameRating,
        e?.gamePrice,
        e?.gameImgUrl,
        e?.gameIsFree,
        e?.gamePlatform,
        e?.gameVideoUrl,
        e?.gamePublisherWebsite,
        e?.gameCategory,
        e?.gameRatingCount,
        e?.gameRatingAverage,
        e?.gameUserCount,
        e?.gameReviews
      ]);

  @override
  bool isValidKey(Object? o) => o is SeagamesRecord;
}
