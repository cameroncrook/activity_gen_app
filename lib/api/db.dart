// import 'package:cloud_firestore/cloud_firestore.dart';

// class DB {
//   final FirebaseFirestore firestore;

//   DB({FirebaseFirestore? firestore}) : this.firestore = firestore ?? FirebaseFirestore.instance;

//   Future<String> authenticate(username, password) async {
//     String id = '';
//     try {
//       QuerySnapshot querySnapshot = await firestore
//           .collection('users')
//           .where('username', isEqualTo: username)
//           .get();

//       for (var doc in querySnapshot.docs) {
//         String id = doc.id;
//         print("Document ID: $id");
//       }

//       if (querySnapshot.docs.isEmpty) {
//         print("No documents found with username $username");
//       }
//     } catch (e) {
//       print("An error occurred while querying: $e");
//     }

//     return id;
//   }
// }