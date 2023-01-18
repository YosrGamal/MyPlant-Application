// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker/image_picker.dart';

// class ImageRep {
//   ImageRep();
//   File? image;
//   Future<String>? imageurl;

//   Future<String> uploadImage() async {
//     // File? file = await pickImage(ImageSource.gallery);
//     Future<String>? url;
//     FirebaseStorage storage = FirebaseStorage.instance;
//     Reference ref = storage.ref().child("images" + DateTime.now().toString());
//     UploadTask uploadTask = ref.putFile(image!);
//     uploadTask.whenComplete(() {
//       url = ref.getDownloadURL();
//     }).catchError((onError) {
//       print(onError);
//     });
//     print(url);
//     return url!;
//   }

//   Future pickImage(source) async {
//     try {
//       final img = await ImagePicker().pickImage(source: source);
//       if (img == null) return null;

//       final imageTemporary = File(img.path);
//       // setState(() {
//       // Loading(loading: true);
//       image = imageTemporary;
//       // });

//       // classifyImage(img);
//     } on Exception catch (e) {
//       throw Exception(e.toString());
//     }
//   }
// }
