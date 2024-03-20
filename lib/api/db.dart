import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:activity_gen/utils/utility.dart' as utilities;
// import 'package:crypto/crypto.dart';
// import 'dart:convert';

class DB {
  final FirebaseFirestore firestore;

  DB({FirebaseFirestore? firestore}) : this.firestore = firestore ?? FirebaseFirestore.instance;

  Future<String> authenticate(username, password) async {
    String id = '';
    try {
      QuerySnapshot querySnapshot = await firestore
          .collection('users')
          .where('username', isEqualTo: username)
          .get();

      for (var doc in querySnapshot.docs) {
        id = doc.id;

        var data = doc.data() as Map<String, dynamic>;

        if (data != null) {
          if (utilities.hashPassword(password) == data['password']) {
            return id;
          }
        }
      }

      if (querySnapshot.docs.isEmpty) {
        print("No documents found with username $username");
      }
    } catch (e) {
      print("An error occurred while querying: $e");
    }

    return id;
  }

  Future<bool> signup(username, password) async {
    try {
      String hashedPassword = utilities.hashPassword(password);

      await firestore.collection('users').add({
        'username': username,
        'password': hashedPassword
      });

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}