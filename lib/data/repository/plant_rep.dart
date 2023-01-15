import 'package:cloud_firestore/cloud_firestore.dart';

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
