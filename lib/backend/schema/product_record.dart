import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRecord extends FirestoreRecord {
  ProductRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pd_price" field.
  int? _pdPrice;
  int get pdPrice => _pdPrice ?? 0;
  bool hasPdPrice() => _pdPrice != null;

  // "pd_description" field.
  String? _pdDescription;
  String get pdDescription => _pdDescription ?? '';
  bool hasPdDescription() => _pdDescription != null;

  // "pd_rating" field.
  int? _pdRating;
  int get pdRating => _pdRating ?? 0;
  bool hasPdRating() => _pdRating != null;

  // "pd_pic" field.
  String? _pdPic;
  String get pdPic => _pdPic ?? '';
  bool hasPdPic() => _pdPic != null;

  // "pd_name" field.
  String? _pdName;
  String get pdName => _pdName ?? '';
  bool hasPdName() => _pdName != null;

  void _initializeFields() {
    _pdPrice = snapshotData['pd_price'] as int?;
    _pdDescription = snapshotData['pd_description'] as String?;
    _pdRating = snapshotData['pd_rating'] as int?;
    _pdPic = snapshotData['pd_pic'] as String?;
    _pdName = snapshotData['pd_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRecord.fromSnapshot(s));

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRecord.fromSnapshot(s));

  static ProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createProductRecordData({
  int? pdPrice,
  String? pdDescription,
  int? pdRating,
  String? pdPic,
  String? pdName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pd_price': pdPrice,
      'pd_description': pdDescription,
      'pd_rating': pdRating,
      'pd_pic': pdPic,
      'pd_name': pdName,
    }.withoutNulls,
  );

  return firestoreData;
}
