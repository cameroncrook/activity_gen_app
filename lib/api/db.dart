import 'package:cloud_firestore/cloud_firestore.dart';

class DB {
  final FirebaseFirestore firestore;

  DB({FirebaseFirestore? firestore}) : this.firestore = firestore ?? FirebaseFirestore.instance;

  Future<String> authenticate(username, password) async {
    String id = '';
    firestore.collection('users').where('username', isEqualTo: username).get().then((QuerySnapshot snapshot) {
      snapshot.docs.forEach((DocumentSnapshot document) {
        id = document.id;
      });
    });

    return id;
  }
}