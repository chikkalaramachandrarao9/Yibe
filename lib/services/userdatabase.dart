import 'package:cloud_firestore/cloud_firestore.dart';

class UserDatabaseService {
  final String uid;
  UserDatabaseService({this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future updateUserData(String username,String email) async {
    return await userCollection.doc(uid).set({'username':username,'email': email});
  }

  Future updateUserDataWithDetails(
      double lat, double long, String deviceToken) async {
    return await userCollection
        .doc(uid)
        .update({'latitude': lat, 'longitude': long, 'deviceToken': deviceToken});
  }
}
