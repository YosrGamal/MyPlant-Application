import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future createUser({
  required String name,
  required String email,
  required String date,
}) async {
  final userInsatnce = FirebaseFirestore.instance.collection('users').doc();

  final userData = {
    'name': name,
    'email': email,
    'Date of birth': date,
    'profile picture ': "",
  };

  await userInsatnce.set(userData);
}

// getCurrentUser()
Future<String> getUserName() async {
  String username;
  String myuserid = await getUserId();
  DocumentSnapshot user =
      await FirebaseFirestore.instance.collection('users').doc(myuserid).get();

  username = user.get('name');
  return username;
}

Future<String> getUserId() async {
  List<String> userId = [];
  final snapShot = await FirebaseFirestore.instance
      .collection('users')
      .where('email', isEqualTo: FirebaseAuth.instance.currentUser!.email)
      .limit(1)
      .get();

  for (var user in snapShot.docs) {
    userId.add(user.id);
  }

  return userId[0];
}
