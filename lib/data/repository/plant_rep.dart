import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future createPlant({
  required String name,
  required String image,
  required bool isfav,
}) async {
  final plantInstance = FirebaseFirestore.instance.collection('plants').doc();

  final plantData = {
    'name': name,
    'image': image,
    'isfav': isfav,
  };

  await plantInstance.set(plantData);
}

Future fetchAllPlants() async {
  FirebaseFirestore.instance.collection('plants').get();
}

Future removePlant(String id) async {
  DocumentReference documentReference =
      FirebaseFirestore.instance.collection('plants').doc(id);

  await documentReference.delete();
}
