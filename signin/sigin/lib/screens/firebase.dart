import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static Future<bool> createPost(String title, String body) async {
    try {
      await _db.collection('posts').add({
        'title': title,
        'body': body,
        'created_at': FieldValue.serverTimestamp(),
      });
      return true;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return false;
    }
  }
  static getPosts() {}
}
