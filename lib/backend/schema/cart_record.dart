import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "sumPrice" field.
  int? _sumPrice;
  int get sumPrice => _sumPrice ?? 0;
  bool hasSumPrice() => _sumPrice != null;

  // "count_1" field.
  int? _count1;
  int get count1 => _count1 ?? 0;
  bool hasCount1() => _count1 != null;

  // "count_2" field.
  int? _count2;
  int get count2 => _count2 ?? 0;
  bool hasCount2() => _count2 != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  void _initializeFields() {
    _price = snapshotData['price'] as int?;
    _sumPrice = snapshotData['sumPrice'] as int?;
    _count1 = snapshotData['count_1'] as int?;
    _count2 = snapshotData['count_2'] as int?;
    _id = snapshotData['id'] as String?;
    _uid = snapshotData['uid'] as String?;
    _pic = snapshotData['pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createCartRecordData({
  int? price,
  int? sumPrice,
  int? count1,
  int? count2,
  String? id,
  String? uid,
  String? pic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'price': price,
      'sumPrice': sumPrice,
      'count_1': count1,
      'count_2': count2,
      'id': id,
      'uid': uid,
      'pic': pic,
    }.withoutNulls,
  );

  return firestoreData;
}
