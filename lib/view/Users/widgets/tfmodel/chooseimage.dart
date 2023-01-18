// ignore_for_file: use_build_context_synchronously, avoid_print, must_be_immutable, unused_local_variable, duplicate_ignore
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/data/repository/image_rep.dart';

// ignore: must_be_immutable
Future<String>? imageUrl;

class ChooseImage extends StatefulWidget {
  ChooseImage({super.key});
  @override
  State<ChooseImage> createState() => _ChooseImageState();
}

class _ChooseImageState extends State<ChooseImage> {
  File? image;
  Future<String>? imageurl;

  Future<String> uploadImage() async {
    Future<String>? url;
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child("images" + DateTime.now().toString());
    UploadTask uploadTask = ref.putFile(image!);
    uploadTask.whenComplete(() {
      url = ref.getDownloadURL();
    }).catchError((onError) {
      print(onError);
    });
    print(url);
    return url!;
  }

  Future pickImage(source) async {
    try {
      final img = await ImagePicker().pickImage(source: source);
      if (img == null) return null;

      final imageTemporary = File(img.path);
      // setState(() {
      // Loading(loading: true);
      image = imageTemporary;
      // });

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
              onPressed: () {
                pickImage(ImageSource.gallery);
                imageUrl = uploadImage();
                print(imageUrl);
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
                imageUrl = uploadImage();
              }),
              child: const Text('Open Camera',
                  style: TextStyle(fontSize: 20, fontFamily: 'Inter')))
        ],
      ),
    );
  }
}
