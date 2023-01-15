import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_plant_application/domain/user.dart';
import 'package:my_plant_application/view/Users/widgets/components/home_header.dart';

//class UserRepo{
// UserModel ?user;
Future createUser({
  required String name,
  required String email,
  required String date,
  String? profilepicture,
  String? type,
}) async {
  final userInstance = FirebaseFirestore.instance.collection('users').doc();

  final userData = {
    'name': name,
    'email': email,
    'Date of birth': date,
    'profile picture ': "",
    'type': 'u',
  };
  //  user = UserModel(
  //       email: email,
  //       username: name,
  //       dob: date,
  //       profilepic: profilepicture!,
  //       type: type!,
  //  );

  // await userInstance.set(user!.toMap());
  await userInstance.set(userData);
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

Future<String> getUserType() async {
  String userType;
  String myuserid = await getUserId();
  DocumentSnapshot user =
      await FirebaseFirestore.instance.collection('users').doc(myuserid).get();

  userType = user.get('type');
  return userType;
}
//}
