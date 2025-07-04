import 'package:cloud_firestore/cloud_firestore.dart';

class myUser {
  final String name;
  final String email;
  final String uid;
  final String rollNo;

  myUser({
    required this.name,
    required this.email,
    required this.uid,
    required this.rollNo,
  });

  Map<String, dynamic> toJson() {
    return {"name": name, "email": email, "uid": uid, "rollNo": rollNo};
  }

  static myUser fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return myUser(
      name: snapshot['name'],
      email: snapshot['email'],
      uid: snapshot['uid'],
      rollNo: snapshot['rollNo'],
    );
  }
}
