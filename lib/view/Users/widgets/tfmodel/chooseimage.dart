// ignore_for_file: use_build_context_synchronously, avoid_print

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_plant_application/constants.dart';
import 'package:firebase_storage/firebase_storage.dart';
// import 'package:tflite/tflite.dart';
// import 'package:my_plant_application/view/Users/widgets/tfmodel/loadingscreen.dart';
// import 'package:my_plant_application/view/Users/widgets/tfmodel/showingresult.dart';

// ignore: must_be_immutable
class ChooseImage extends StatefulWidget {
  String? imageurl;
  ChooseImage({this.imageurl, super.key});

  @override
  State<ChooseImage> createState() => _ChooseImageState();
}

class _ChooseImageState extends State<ChooseImage> {
  XFile? image;

  String imageUrl = '';

  Future uploadImage() async {
    // final path = '';
    // final file = File(image!.path);

    File? file = await pickImage(ImageSource.gallery);

    if (file == null) return;
    String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();

    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('images');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);

    try {
      await referenceImageToUpload.putFile(File(file.path));

      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('success')));

      imageUrl = await referenceImageToUpload.getDownloadURL();

      print(imageUrl);
    } catch (error) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(error.toString())));
    }
  }

  Future pickImage(source) async {
    try {
      final img = await ImagePicker().pickImage(source: source);
      if (img == null) return null;

      final imageTemporary = XFile(img.path);
      setState(() {
        // Loading(loading: true);
        image = imageTemporary;
      });

      // classifyImage(img);
    } on PlatformException catch (e) {
      throw Exception(e.message);
    }
  }

  // Future classifyImage(XFile image) async {
  //   var output = await Tflite.runModelOnImage(
  //       path: image.path,
  //       numResults: 19,
  //       threshold: 0.5,
  //       imageMean: 127.5,
  //       imageStd: 127.5);
  //   setState(() {
  //     Loading(loading: false);
  //     Result(output: output);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 500),
      child: Column(
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: btColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: const Text('Pick From Gallery',
                  style: TextStyle(fontSize: 20, fontFamily: 'Inter')),
              onPressed: () async {
                uploadImage();
              }),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: btColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              onPressed: (() {
                pickImage(ImageSource.camera);
              }),
              child: const Text('Open Camera',
                  style: TextStyle(fontSize: 20, fontFamily: 'Inter')))
        ],
      ),
    );
  }
}
