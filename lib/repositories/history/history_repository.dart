import 'package:cloud_firestore/cloud_firestore.dart';

class HistoryRepository {
  FirebaseFirestore db = FirebaseFirestore.instance;
  String collection = 'users';

  Future<void> createSavingRecord(String email) async {
    try {
      Map<String, dynamic> record = {
        "userEmail": email,
        "searches": []
      };
      await db.collection(collection).doc(email).set(record);
    } catch (e) {
      print(e);
    }
  }

  Future<void> saveSearch(String place, String email) async {
    try {
      await db.collection(collection).doc(email).update({
        "searches": FieldValue.arrayUnion([place])
      });
    } catch (e) {
      print(e);
    }
  }
}